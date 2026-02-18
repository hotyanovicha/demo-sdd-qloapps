
import re
import csv
import sys

def get_priority(title):
    title_lower = title.lower()
    if any(x in title_lower for x in ['registration', 'login', 'payment', 'checkout', 'security']):
        return 'Critical'
    if any(x in title_lower for x in ['search', 'cart', 'order']):
        return 'High'
    return 'Medium'

def parse_markdown_to_csv(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    test_cases = []
    current_case = {}
    
    # Regex patterns
    header_pattern = re.compile(r'^###\s+(\d+\..+)')
    
    in_actions = False
    in_assertions = False
    
    def save_current_case():
        if current_case:
            title = current_case.get('Title', '')
            # Remove leading numbering from title (e.g., "1. User Registration" -> "User Registration")
            title = re.sub(r'^\d+\.\s*', '', title)
            
            description = current_case.get('Description', '').strip()
            preconditions = current_case.get('Preconditions', '').strip()
            
            raw_steps = current_case.get('Steps', '').strip().split('\n')
            # Filter empty steps and clean them
            steps_list = [s.strip() for s in raw_steps if s.strip()]
            
            raw_results = current_case.get('Expected Result', '').strip()
            
            priority = get_priority(title)
            
            # BrowserStack CSV Columns based on analysis
            # Header: Test Case ID, Title, Folder, State, Tags, Steps, Results, Type of Test Case, Priority, Estimate, Owner, Jira Issues, Automation Status
            
            # If no steps, just write one row
            if not steps_list:
                row = {
                    'Title': title,
                    'Description': description,
                    'Preconditions': preconditions,
                    'Steps': '',
                    'Expected Result': raw_results,
                    'State': 'Active',
                    'Priority': priority,
                    'Type': 'Functional',
                    'Tags': 'import',
                    'Folder': 'Imports'
                }
                test_cases.append(row)
            else:
                # First step row contains all metadata
                first_step = steps_list[0]
                # For Expected Result: 
                # Strategy: Put all expected results in the LAST step, or First?
                # Case 13 in sample suggests 1-to-1 if possible, but we don't have 1-to-1 mapping.
                # Let's put the full block of results in the first step OR last step.
                # Putting in first step ensures it's seen immediately.
                # Let's put existing 'Expected Result' block in the last step? 
                # Actually, let's put it in the last step to simulate "Verification after steps".
                
                # However, if we want to follow the "Row per step" strictly:
                
                for i, step in enumerate(steps_list):
                    step_content = step
                    # user might want leading numbers removed from steps too? "1. Navigate..." -> "Navigate..."
                    # sample.csv has "1. This is sample step 1" -> it KEEPS the number in the step text.
                     
                    result_content = ""
                    if i == len(steps_list) - 1:
                        result_content = raw_results
                    
                    if i == 0:
                        row = {
                            'Title': title,
                            'Description': description,
                            'Preconditions': preconditions,
                            'Steps': step_content,
                            'Expected Result': result_content,
                            'State': 'Active',
                            'Priority': priority,
                            'Type': 'Functional',
                            'Tags': 'import',
                            'Folder': 'Imports'
                        }
                    else:
                        # Subsequent rows only have Steps and Results
                        row = {
                            'Title': '', # Empty for subsequent rows
                            'Description': '',
                            'Preconditions': '',
                            'Steps': step_content,
                            'Expected Result': result_content,
                            'State': '',
                            'Priority': '',
                            'Type': '',
                            'Tags': '',
                            'Folder': ''
                        }
                    test_cases.append(row)

    for line in lines:
        line = line.strip()
        
        # New Test Case
        match = header_pattern.match(line)
        if match:
            save_current_case()
            current_case = {
                'Title': match.group(1),
                'Description': '',
                'Preconditions': '',
                'Steps': '',
                'Expected Result': ''
            }
            in_actions = False
            in_assertions = False
            continue

        if not current_case:
            continue

        # Metadata fields
        if line.startswith('**Spec**:') or line.startswith('**Test name**:') or \
           line.startswith('**Fixture dependencies**:') or line.startswith('**Data requirements**:') or \
           line.startswith('**Risks**:') or line.startswith('**Risk**:') or line.startswith('**Risks**:'):
            current_case['Description'] += line + "\n"
            in_actions = False
            in_assertions = False
            continue
        
        # Setup (Preconditions)
        if line.startswith('**Setup**:'):
            current_case['Preconditions'] = line.replace('**Setup**:', '').strip()
            in_actions = False
            in_assertions = False
            continue
        
        # Actions
        if line.startswith('**Actions**:'):
            in_actions = True
            in_assertions = False
            continue
            
        # Assertions
        if line.startswith('**Assertions**:'):
            in_actions = False
            in_assertions = True
            continue
        
        # Separator inside file
        if line.startswith('---'):
            continue
            
        # Capture content for Actions
        if in_actions and line:
            current_case['Steps'] += line + "\n"

        # Capture content for Assertions
        if in_assertions and line:
             current_case['Expected Result'] += line + "\n"

    # Save last case
    save_current_case()

    # Write to CSV
    # Mapping based on typical BrowserStack Import
    # Note: Description usually maps to Description. Preconditions to Preconditions.
    # The user provided sample.csv has:
    # Test Case ID,Title,Folder,State,Tags,Steps,Results,Type of Test Case,Priority,Estimate,Owner,Jira Issues,Automation Status
    
    fieldnames = ['Test Case ID', 'Title', 'Folder', 'State', 'Tags', 'Steps', 'Results', 'Type of Test Case', 'Priority', 'Estimate', 'Owner', 'Jira Issues', 'Automation Status']
    
    # We need to map our dict keys to these fieldnames
    # Description and Preconditions are not in the sample header explicitly?
    # Wait, sample header: `Test Case ID,Title,Folder,State,Tags,Steps,Results,Type of Test Case,Priority,Estimate,Owner,Jira Issues,Automation Status`
    # It does NOT have Description or Preconditions columns?
    # Let's check the docs again or just use standard fields. Use 'steps' and 'results'.
    # Where do Description and Preconditions go?
    # Maybe append Preconditions to first step? Or append Description to Title?
    # BrowserStack docs say: "Description" is a supported field.
    # The sample CSV provided by user might be a specific export.
    # I will add Description and Preconditions columns. Browserstack import mapping allows mapping any CSV column to system field.
    # So I will keep my columns but rename "Expected Result" to "Results" to match sample.
    
    output_fieldnames = ['Title', 'Description', 'Preconditions', 'Steps', 'Results', 'State', 'Priority', 'Type', 'Tags', 'Folder']
    
    with open(output_file, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=output_fieldnames)
        writer.writeheader()
        
        for row in test_cases:
            # Remap keys if necessary
            out_row = {
                'Title': row.get('Title', ''),
                'Description': row.get('Description', ''),
                'Preconditions': row.get('Preconditions', ''),
                'Steps': row.get('Steps', ''),
                'Results': row.get('Expected Result', ''),
                'State': row.get('State', ''),
                'Priority': row.get('Priority', ''),
                'Type': row.get('Type', ''),
                'Tags': row.get('Tags', ''),
                'Folder': row.get('Folder', '')
            }
            writer.writerow(out_row)
    
    print(f"Successfully converted {len(test_cases)} rows to {output_file}")

if __name__ == '__main__':
    input_md = 'docs/refined-specs.md'
    output_csv = 'docs/refined-specs.csv'
    parse_markdown_to_csv(input_md, output_csv)
