# Booking Process DOM Selectors

This document contains key DOM selectors identified during the exploration of the "Hotel Prime" booking flow.

## 1. Cart & Summary
| Element | Selector | Description |
| :--- | :--- | :--- |
| **Proceed to Checkout (Modal)** | `a[title="Proceed to checkout"]` | Button in the "Product successfully added to your cart" modal. |
| **Summary Table** | `div#order-detail-content` | Container for room and price breakdown on the summary page. |
| **Proceed to Checkout (Summary)** | `a.btn.btn-default.button-medium.pull-right` | Button to move from Summary to Guest Information. |

## 2. Guest Information
| Element | Selector | Description |
| :--- | :--- | :--- |
| **Guest Detail Input** | `input#customer_guest_detail` | Checkbox for "Booking for someone else?" |
| **Save/Proceed Button** | `button[name="submitGuestDetail"]`, `button.submit-guest-details` | Button to save guest info and proceed to payment. |

## 3. Payment Information
| Element | Selector | Description |
| :--- | :--- | :--- |
| **Terms of Service Checkbox** | `input#cgv` | "I agree to the terms of service" checkbox. Must be checked. |
| **Pay by Bank Wire** | `a.bankwire` | Link/Button to select Bank Wire payment method. |
| **Pay by Check** | `a.cheque` | Link/Button to select Check payment method. |

## 4. Order Confirmation
| Element | Selector | Description |
| :--- | :--- | :--- |
| **Confirm Order Button** | `button.confirm_order` | Final button to submit the order. |
| **Confirmation Header** | `h1.page-heading` | Page header (e.g., "Booking Confirmation"). |
| **Order Reference Box** | `div.box.order-confirmation` | Container displaying the Order Reference ID. |

## 5. Order History
| Element | Selector | Description |
| :--- | :--- | :--- |
| **Order Row (Latest)** | `tr.first_item` | The first row in the "Order History" table. |
| **Order Reference Link** | `a.color-myaccount` | The clickable order reference code in the history table. |
| **Order Status** | `td.history_state span` | Status badge (e.g., "On Backorder"). |

## 6. Admin Panel: Orders
| Element | Selector | Description |
| :--- | :--- | :--- |
| **Orders Table** | `table.order` | The main table listing all orders. |
| **First Order Row** | `table.order tbody tr:first-child` | The most recent order in the list. |
| **Filter Button** | `button.btn-block` (contains 'Filters') | Button to toggle the filter inputs row. |
| **Status Filter** | `select[name="orderFilter_os!id_order_state"]` | Dropdown to filter orders by status (visible after clicking Filters). |

## 7. Admin Panel: Order Details
| Element | Selector | Description |
| :--- | :--- | :--- |
| **Status Dropdown** | `select#id_order_state` | Dropdown to select a new order status. |
| **Update Status Btn** | `button[name="submitState"]` | Button to save the new status. |
| **Message Textarea** | `textarea#txt_msg` | Text area for sending a message to the customer. |
| **Display to Customer** | `input#visibility` | Checkbox to make message visible to customer. |
| **Send Message Btn** | `button#submitMessage` | Button to send the message. |

## 8. Admin Panel: Customers
| Element | Selector | Description |
| :--- | :--- | :--- |
| **Customers Table** | `table.customer` | The main table listing all registered customers. |
| **Email Filter** | `input[name="customerFilter_email"]` | Input to filter customers by email. |
| **Filter Button** | `button[name="submitFiltercustomer"]` | Button to apply the filters (usually 'Search'). |

