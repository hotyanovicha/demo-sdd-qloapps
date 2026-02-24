# Refined Automation Specs (SDD)

## Scenarios

### 1. Portal: Auth: Successful registration: User is redirected to My Account
---
**Status**: Automated
**Preconditions**:
- User is on the Homepage.
- Unique user registration data is available.
**Actions**:
1.  Navigate to the Sign In page.
2.  Initiate account creation with a unique email address.
3.  Fill in the registration form with valid personal details.
4.  Submit the registration.
**Assertions**:
- User is redirected to the "My Account" page.
- Heading "My Account" is displayed.
- User's first name is visible in the header.
---

### 2. Portal: Auth: Registered user login: Dashboard is displayed
---
**Status**: Automated
**Preconditions**:
- A valid registered user account exists.
- User is on the Homepage and signed out.
**Actions**:
1.  Navigate to the Sign In page.
2.  Enter valid email and password credentials.
3.  Click the "Sign in" button.
**Assertions**:
- User is successfully logged in.
- "Sign out" button is visible in the header.
- Header displays the correct user's first name.
- Dashboard links (e.g., "Order History", "Credit Slips") are visible.
---

### 3. Portal: Room Search: Valid dates search: Available rooms are listed
---
**Status**: Automated
**Preconditions**:
- Hotel inventory exists for the selected dates.
**Actions**:
1.  Navigate to the Homepage.
2.  Enter "The Hotel Prime" in the Location input.
3.  Select check-in and check-out dates (e.g., Today + 1 to Today + 6).
4.  Click "Search Now".
**Assertions**:
- Search results page is loaded.
- Available rooms are displayed in the results list.
- At least one room belongs to the "General Rooms" category.
---

### 4. Portal: Room Search: Add to Cart: Show success modal
---
**Status**: Automated
**Preconditions**:
- User is on the Search Results page with available rooms.
**Actions**:
1.  Select room occupancy and click "Done".
2.  Click the "Book Now" button on an available room.
**Assertions**:
- A confirmation modal appears with the text "Room successfully added to your cart".
- The "Proceed to checkout" button is visible and enabled in the modal.
---

### 5. Portal: Room Page: Exceed max adult occupancy: Error is shown
---
**Status**: Manual
**Preconditions**:
- User is on the Search Results page.
- A room with a specific adult occupancy limit (e.g., 2 Adults) is available.
**Actions**:
1.  Open the occupancy selector for a room with a 2-adult limit.
2.  Attempt to increase the number of adults beyond the limit (e.g., to 3).
**Assertions**:
- Error message "Maximum adult occupancy reached" is displayed.
- Adult count remains at the maximum limit (e.g., 2).
- After clicking "Done", the selected occupancy correctly reflects 2 adults and 1 room.
---

### 6. Portal: Checkout: Cart summary: Correct items and costs displayed
---
**Status**: Manual
**Preconditions**:
- User has performed a search and is on the Search Results page.
**Actions**:
1.  Select occupancy and click "Done".
2.  Click "Book Now" and wait for the success modal.
3.  Note the room cost, taxes, fees, and total cost displayed.
4.  Click "Proceed to checkout".
**Assertions**:
- The Cart Summary table displays the correct room name.
- The summary table correctly reflects the previously noted costs (room, fees, tax, and total).
---

### 7. Portal: Checkout: Valid address: Correct hotel details displayed
---
**Status**: Manual
**Preconditions**:
- User is authorized and has a room selected in the cart.
**Actions**:
1.  Select a room from the Homepage or Search page.
2.  Note the hotel room name and address.
3.  Click "Book Now" and then "Proceed to checkout".
**Assertions**:
- The summary table displays the correct hotel room name and address.
---
---

### 8. Portal: Checkout: Terms of Service validation
---
**Status**: Manual
**Preconditions**:
- User has rooms in the cart and is on the "Rooms & Price Summary" page.
**Actions**:
1.  Click "Proceed" through the checkout steps until reaching the Terms of Service.
2.  Attempt to proceed without accepting the Terms of Service.
3.  Accept the Terms of Service by clicking the checkbox.
**Assertions**:
- An error message "Please accept the Terms of Service" appears when attempted without acceptance.
- The error message disappears once the checkbox is selected.
---


### 9. Portal: Checkout: Bank Wire payment: Order is completed
---
**Status**: Automated
**Preconditions**:
- User has a room in the cart and is on the "Rooms & Price Summary" page.
**Actions**:
1.  Proceed through checkout, accept the Terms of Service, and select "Pay by bank wire".
2.  Confirm the order.
**Assertions**:
- Success message "Your booking has been created successfully!" is displayed.
- Room name and total cost are correct in the confirmation.
- Booking status is set to "Awaiting payment".
---


### 10. Portal: Bookings: Completed order visible in history
---
**Status**: Manual
**Preconditions**:
- User has a room booking with the status "Awaiting payment".
**Actions**:
1.  Navigate to the "Booking" (or "Order History") section in the user profile.
2.  Locate the latest booking entry.
**Assertions**:
- The booking is displayed in the history.
- The order reference matches the reference provided at the time of booking.
- The total price displayed matches the expected order total.
---

### 11. Admin: Auth: Successful login: Dashboard is displayed
---
**Status**: Manual
**Preconditions**:
- Admin portal is accessible.
- Valid administrator credentials are available.
**Actions**:
1.  Navigate to the Admin login page.
2.  Enter valid administrator email and password.
3.  Click "Log in".
**Assertions**:
- Administrator is successfully logged in.
- Dashboard page is loaded.
- Sidebar menu and administrator name are visible in the header.
---

### 12. Admin: Orders: New order details: Correct details are displayed
---
**Status**: Manual
**Preconditions**:
- A new room booking has been placed via the Portal.
- Administrator is logged into the Admin portal.
**Actions**:
1.  Navigate to the Orders page.
2.  Search for the specific order reference.
3.  Open the order details view.
**Assertions**:
- Customer name matches the portal user.
- Hotel name and total number of rooms are correct.
- Total price matches the portal order.
- Initial payment status is displayed as "No Payment Received".
---

---

### 13. Admin: Orders: Update status to Payment Accepted
---
**Status**: Manual
**Preconditions**:
- An order with the status "Awaiting payment" exists.
- Administrator is logged into the Admin portal.
**Actions**:
1.  Navigate to the specific Order Details page.
2.  Select "Complete payment received" from the status dropdown.
3.  Update the status.
**Assertions**:
- Order status is successfully updated to "Complete payment received".
- A new entry appears in the Payment section with the payment method details.
---

### 14. Admin: Orders: Send message to customer
---
**Status**: Manual
**Preconditions**:
- An active order exists.
- Administrator is logged into the Admin portal.
**Actions**:
1.  Navigate to the Order Details page in the Admin portal.
2.  Scroll to the Messages section and enter a confirmation message.
3.  Enable "Display to customer" and send the message.
4.  Switch to the Portal and navigate to the same booking's details.
**Assertions**:
- The message appears in the order thread within the Admin portal.
- The message is correctly displayed to the user in the Portal's booking details.
---

---

### 15. Admin: Catalog: Manage Room Types: Verify 'Luxury Rooms' details
---
**Status**: Manual
**Preconditions**:
- Administrator is logged into the Admin portal.
- "Luxury Rooms" data is populated in the catalog.
**Actions**:
1.  Navigate to Catalog -> Manage Room Types.
2.  Search for the room type with the name "Luxury Rooms".
**Assertions**:
- The results table displays the correct details:
    - Name: "Luxury Rooms"
    - Hotel: "The Hotel Prime"
    - Total Rooms: Match expected count (e.g., 5)
    - Base Price: Match expected value (e.g., 2500,00 zł)
---

---


### 16. Admin: Customers: Search by email: Matching customer is found
---
**Status**: Manual
**Preconditions**:
- A registered customer exists in the system.
- Administrator is logged into the Admin portal.
**Actions**:
1.  Navigate to the Customers section.
2.  Filter the customer list by the specific email address and search.
3.  Open the customer's detail view.
**Assertions**:
- The table displays exactly one matching record.
- The customer's details (Name, Surname, Email) are correctly displayed in the detail view.
---


### 17. Admin: Orders: Search by reference code: Matching order is found
---
**Status**: Manual
**Preconditions**:
- At least one booking exists in the system.
- Administrator is logged into the Admin portal.
**Actions**:
1.  Navigate to the Orders section.
2.  Filter the orders by a specific reference code and search.
3.  Open the order details.
**Assertions**:
- The table displays exactly one matching record.
- The order reference displayed in the details view matches the search input.
---

### 18. Admin: Dashboard: Key statistics widgets: Widgets are displayed
---
**Status**: Manual
**Preconditions**:
- Administrator is logged into the Admin portal.
**Actions**:
1.  Wait for the Dashboard to fully load.
**Assertions**:
- All key statistics widgets are visible (e.g., Arrivals, Departures, New Bookings, Occupancy, Revenue).
- Occupancy and "Operations Today" sections are properly displayed.
---
