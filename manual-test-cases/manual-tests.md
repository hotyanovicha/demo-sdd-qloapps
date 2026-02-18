# Manual Test Cases for "Hotel Prime"

**Test Data**
- **User URL**: `http://localhost:8080/en/`
- **Admin URL**: `http://localhost:8080/admin969el5deg/index.php`
- **Admin User**: `a.hotyanovich@a1qa.com` / `8`
- **Existing User**: `gecoja8790@advarm.com` / `5`

---

## Scenario 1: User Registration
**Objective**: Verify that a new user can successfully create an account.
**Preconditions**:
1.  User is on the Homepage (`http://localhost:8080/en/`).
2.  User is not currently logged in (Header shows "Sign in").
**Business Value**: Ensures new customers can join the platform, directly impacting user acquisition and revenue growth.
**Automation Steps**:
1.  Click the **"Sign in"** link in the header.
2.  Locate the **"Create an account"** section on the left side of the page.
3.  Enter a unique email address (e.g., `test_{timestamp}@example.com`) in the "Email address" input field.
4.  Click the **"Create an account"** button.
5.  On the "Your Personal Information" form:
    -   Select a Title (Mr. or Mrs.).
    -   Enter **First Name**.
    -   Enter **Last Name**.
    -   Enter **Password** (min 5 chars).
6.  Click the **"Register"** button at the bottom of the form.
**Verification**: 
-   Verify redirection to the **"My Account"** page.
-   Verify the URL contains `controller=my-account`.
-   Verify the notification message: "Your account has been created."

## Scenario 2: User Login & Dashboard Access
**Objective**: Verify that a registered user can log in and access their dashboard.
**Preconditions**:
1.  User is registered.
2.  User is on the Homepage.
**Business Value**: Critical for returning customers to manage bookings and profile, maintaining user retention.
**Automation Steps**:
1.  Click the **"Sign in"** link in the header.
2.  Locate the **"Already registered?"** section on the right side.
3.  Enter the registered email: `gecoja8790@advarm.com`.
4.  Enter the password: `5`.
5.  Click the **"Sign in"** button.
**Verification**: 
-   Verify the "My Account" header is visible.
-   Verify the header now displays the user's name (e.g., "User-One") instead of "Sign in".
-   Verify "Sign out" is available in the user dropdown.
-   Check for dashboard links: "Order History and Details", "My Credit Slips", "My Addresses", "My Personal Information".

## Scenario 3: Room Availability Search
**Objective**: Verify that the search function returns relevant results for valid criteria.
**Preconditions**:
1.  User is on the Homepage.
**Business Value**: The core function of the application. If users can't find rooms, they can't book them.
**Automation Steps**:
1.  Locate the search block on the left sidebar.
2.  In the **"Hotel Location"** field, type "Hotel Prime".
3.  Select "The Hotel Prime" from the dropdown list.
4.  Click the **"Check In"** date field and select a future date (e.g., tomorrow).
5.  Click the **"Check Out"** date field and select a date after check-in (e.g., day after tomorrow).
6.  Click the **"Search Now"** button.
**Verification**: 
-   Verify the page URL changes to search results (e.g., `controller=search`).
-   Verify the "Search Rooms" results list is displayed.
-   Verify at least one room type (e.g., "General Rooms") is listed.

## Scenario 4: Add Room to Cart
**Objective**: Verify that a user can successfully add a room to their shopping cart.
**Preconditions**:
1.  User has performed a successful search (Scenario 3).
2.  User is on the Search Results page.
**Business Value**: Essential step in the booking funnel. Errors here directly result in lost sales.
**Automation Steps**:
1.  Locate an available room card (e.g., "General Rooms") in the results list.
2.  Click the **"Book Now"** button on the room card.
3.  Wait for the "Room successfully added to your cart" modal to appear.
**Verification**: 
-   Verify the modal header text is "Room successfully added to your cart".
-   Verify the room details (Name, Dates, Total Cost) are correct in the modal.
-   Verify the **"Proceed to checkout"** button is present and clickable.

## Scenario 5: Search & Verify Max Adult Occupancy
**Objective**: Verify that the system correctly restricts the number of adults based on room capacity.
**Preconditions**:
1.  User has performed a search for "Hotel Prime".
2.  User is on the Search Results page.
**Business Value**: Prevents booking configurations that physical rooms cannot accommodate.
**Automation Steps**:
1.  Locate a room with a specific capacity (e.g., "General Rooms", Max guests: 2 Adults).
2.  Click the **"Select Occupancy"** dropdown button on that room card.
3.  Locate the **"+"** (plus) button next to the "Adults" counter.
4.  Click the **"+"** button until the count reaches the maximum (2).
5.  Click the **"+"** button one more time (attempting to reach 3).
**Verification**: 
-   Verify a red error message **"Maximum adult occupancy reached"** appears.
-   Verify the adult count value remains at **2** and does not increase to 3.

## Scenario 6: Cart Summary & Checkout
**Objective**: Verify the correctness of the booking summary before payment.
**Preconditions**:
1.  User has added a room to the cart (Scenario 4).
2.  User has clicked "Proceed to checkout" in the modal.
**Business Value**: Ensures billing accuracy and prevents customer disputes.
**Automation Steps**:
1.  Review the **"Rooms & Price Summary"** table.
2.  Check that the correct room type, check-in/out dates, and total price are displayed.
3.  Click the **"Proceed"** button (located at the bottom right of the summary section).
**Verification**: 
-   Verify navigation to the next step (Guest Information or Sign In if not logged in).
-   If logged in, verify navigation to "Addresses".

## Scenario 7: Guest Information & Address
**Objective**: Verify that guest details and address information are correctly handled.
**Preconditions**:
1.  User is logged in (Scenario 2).
2.  User is on the "Guest Information" / "Addresses" step of checkout.
**Business Value**: Ensures accurate customer data for invoicing and communication.
**Automation Steps**:
1.  Review the **"Your Personal Information"** section to ensure data is pre-filled.
2.  Review the **"Your Address"** section. Ensure a billing address is selected in the dropdown.
3.  Click the **"Proceed"** button.
**Verification**: 
-   Verify navigation to the **"Payment"** step.
-   Verify the URL contains `controller=order&step=3` (or similar for payment step).

## Scenario 8: Payment Terms of Service Validation
**Objective**: Verify that the user must accept the Terms of Service to proceed.
**Preconditions**:
1.  User is on the "Payment" checkout step.
**Business Value**: Legal compliance and liability protection.
**Automation Steps**:
1.  Scroll down to the **"Payment Resource"** section.
2.  **Do NOT** check the "I agree to the terms of service" checkbox.
3.  Click on the **"Pay by bank wire"** payment option.
**Verification**: 
-   Verify that the payment page does **not** proceed.
-   Verify a warning message appears nearby (e.g., "You must agree to the terms of service before continuing.").
-   (Step 3b): Check the box "I agree to the terms of service..." and retry clicking "Pay by bank wire". Verify it now proceeds.

## Scenario 9: Complete Order via Bank Wire
**Objective**: Verify the successful completion of an order using the Bank Wire method.
**Preconditions**:
1.  User is on the "Payment" step.
2.  "I agree to the terms of service" checkbox is **checked**.
**Business Value**: Validates the revenue collection mechanism.
**Automation Steps**:
1.  Click the **"Pay by bank wire"** button.
2.  Verify navigation to the "Bank-wire payment" summary page.
3.  Review the final amount and bank details.
4.  Click the **"I confirm my order"** button.
**Verification**: 
-   Verify navigation to the "Order Confirmation" page.
-   Verify the heading displays **"Order confirmation"**.
-   Verify the success message: "Your order on The Hotel Prime is complete."
-   Locate and record the **Order Reference** code (e.g., `UYLDUOUKZ`).

## Scenario 10: Verify Order in History
**Objective**: Verify that the completed order is correctly recorded in the user's account history.
**Preconditions**:
1.  User has successfully completed an order (Scenario 9).
2.  User is logged in.
**Business Value**: Ensures data integrity and allows users to manage their bookings.
**Automation Steps**:
1.  Click the user account name in the header (e.g., "User-One").
2.  Click the **"Order History and Details"** button/link.
3.  Look at the **top row** of the order table.
**Verification**: 
-   Verify the **Order Reference** code matches the one recorded in Scenario 9.
-   Verify the **Date** matches today's date.
-   Verify the **Total Price** matches the booking amount.
-   Verify the **Status** is correct (e.g., "On Backorder" or "Bank wire").

---

## Scenario 11: Admin Login & Dashboard Access
**Objective**: Verify that an administrator can successfully log in to the backend panel.
**Preconditions**:
1.  Admin is on the Admin Login page (`http://localhost:8080/admin969el5deg/index.php`).
**Business Value**: Essential for managing the hotel system.
**Automation Steps**:
1.  Enter the admin email: `a.hotyanovich@a1qa.com`.
2.  Enter the admin password: `8`.
3.  Click the **"Log in"** button.
**Verification**: 
-   Verify redirection to the Dashboard (`controller=AdminDashboard`).
-   Verify the top header displays the user icon/name.
-   Verify the left sidebar menu is visible (Orders, Customers, Catalog, etc.).

## Scenario 12: Admin - Verify Order Details
**Objective**: Verify that a newly created order (from Scenario 9) appears correctly in the admin panel.
**Preconditions**:
1.  A new order has been created by a user (Scenario 9) with a known **Reference Code**.
2.  Admin is logged in and on the Dashboard.
**Business Value**: Ensures orders are received and details (price, customer) are accurate for fulfillment.
**Automation Steps**:
1.  Click **"Orders"** in the left sidebar.
2.  In the orders table, locate the row with the matching **Reference Code**.
3.  Click anywhere on the row (or the "View" button) to open order details.
4.  Review the "Customer" and "Total" sections.
**Verification**: 
-   Verify the **Customer Name** matches the user from Scenario 9.
-   Verify the **Total Price** matches the user's booking.
-   Verify the **Status** is "Awaiting bank wire payment" (or initial status).

## Scenario 13: Admin - Update Order Status
**Objective**: Verify that an admin can change the status of an order (e.g., confirm payment).
**Preconditions**:
1.  Admin is viewing the Order Details page (Scenario 12).
**Business Value**: Critical workflow for processing bookings (confirming payment, checking in/out).
**Automation Steps**:
1.  Locate the **"Status"** dropdown menu at the top of the order details.
2.  Select **"Payment accepted"** from the dropdown.
3.  Click the **"Update status"** button.
**Verification**: 
-   Verify the status table updates with a new row showing "Payment accepted".
-   Verify the current status badge changes to "Payment accepted".

## Scenario 14: Admin - Send Message to User
**Objective**: Verify that an admin can send a message to the customer regarding their order.
**Preconditions**:
1.  Admin is viewing the Order Details page.
**Business Value**: Communication tool for customer service and booking updates.
**Automation Steps**:
1.  Scroll down to the **"Messages"** section at the bottom of the page.
2.  In the "Message" text area, type: "Your booking is confirmed!"
3.  **Check** the box "Display to customer?".
4.  Click the **"Send message"** button.
**Verification**: 
-   Verify the message appears in the message history list above.
-   Verify the column "Visible to customer" shows a green checkmark/Yes.

## Scenario 15: User - Verify Admin Message
**Objective**: Verify that the user receives the message sent by the admin.
**Preconditions**:
1.  Admin has sent a message (Scenario 14).
2.  User is logged in to the front office.
**Business Value**: Ensures customers receive critical updates.
**Automation Steps**:
1.  Navigate to **"Order History and Details"**.
2.  Click the **"Details"** (or Reference Code) for the relevant order.
3.  Scroll down to the **"Messages"** section.
**Verification**: 
-   Verify the message "Your booking is confirmed!" is visible.
-   Verify the sender is listed as "Shop Name" (or similar admin indicator).

## Scenario 16: Admin - Verify Customer
**Objective**: Verify that the admin can find a specific registered customer in the system.
**Preconditions**:
1.  Admin is logged in.
**Business Value**: Customer Relationship Management (CRM) search capability.
**Automation Steps**:
1.  Click **"Customers"** -> **"Customers"** in the left sidebar.
2.  Locate the **"Filter"** row at the top of the table.
3.  In the "Email address" filter field, type `gecoja8790@advarm.com`.
4.  Click the **"Search"** button.
**Verification**: 
-   Verify the table filters to show the specific customer row.
-   Verify the **ID**, **Name**, and **Email** match the registered user.

## Scenario 17: Admin - Filter Orders by Reference
**Objective**: Verify the sorting/filtering capability of the Orders table.
**Preconditions**:
1.  Admin is on the **"Orders"** page.
2.  Known Order Reference exists.
**Business Value**: Operational efficiency for finding specific bookings quickly.
**Automation Steps**:
1.  Locate the **"Reference"** filter column header.
2.  Type the unique Order Reference (e.g., `UYLDUOUKZ`) into the filter box.
3.  Click the **"Search"** button (or press Enter).
**Verification**: 
-   Verify the list displays **only one** row.
-   Verify the row corresponds to the searched Reference Code.

## Scenario 18: Admin - Access Stats Dashboard
**Objective**: Verify that the main dashboard statistics are accessible.
**Preconditions**:
1.  Admin is logged in.
**Business Value**: Business intelligence and system health monitoring.
**Automation Steps**:
1.  Click the **"Dashboard"** (or Home icon) in the sidebar.
2.  Review the widgets displayed (e.g., "Calendar", "Sales", "Visits").
**Verification**: 
-   Verify the Dashboard loads without error.
-   Verify the "Calendar" widget is visible.
-   Verify "Online Visitors" count is displayed.
