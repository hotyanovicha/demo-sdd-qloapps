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
**Status**: Automated
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

### 12. Portal: Auth: Registration with existing email displays error
---
**Status**: Manual
**Preconditions**:
- User is on the Homepage.
- An account with a specific email address already exists.
**Actions**:
1.  Navigate to the Sign In page.
2.  Initiate account creation with the existing email address.
3.  Click "Create an account".
**Assertions**:
- An error message "An account using this email address has already been registered." is displayed.
- The user is not redirected to the registration form.
---

### 13. Portal: Auth: Registration with missing mandatory fields is prevented
---
**Status**: Manual
**Preconditions**:
- User is on the Registration form page.
**Actions**:
1.  Leave mandatory fields (e.g., First Name, Last Name, Password) blank.
2.  Click the "Register" button.
**Assertions**:
- Form is not submitted.
- Validation error messages appear next to or above the mandatory fields.
- User is not redirected to "My Account".
---

### 14. Portal: Auth: Login with invalid credentials displays error
---
**Status**: Manual
**Preconditions**:
- User is on the Sign In page.
**Actions**:
1.  Enter an invalid or unregistered email address and/or an incorrect password.
2.  Click the "Sign in" button.
**Assertions**:
- An error message (e.g., "Authentication failed.") is displayed.
- User is not logged in.
---

### 15. Portal: Auth: 'Forgot Password' flow successfully initiates email recovery
---
**Status**: Manual
**Preconditions**:
- User is on the Sign In page.
- A valid registered user account exists.
**Actions**:
1.  Click the "Forgot your password?" link.
2.  Enter the registered email address.
3.  Click the "Retrieve Password" button.
**Assertions**:
- A confirmation message "A confirmation email has been sent to your address" is displayed.
- An email containing password recovery instructions is triggered.
---

### 16. Portal: Room Search: Search with no availability shows 'No rooms found'
---
**Status**: Manual
**Preconditions**:
- Hotel inventory is fully booked or unavailable for the selected dates.
**Actions**:
1.  Navigate to the Homepage.
2.  Select the specific dates with no availability.
3.  Click "Search Now".
**Assertions**:
- Search results page is loaded.
- A message indicating "No rooms available" or similar is displayed.
- No room cards are listed in the search results.
---

### 17. Portal: Room Search: Invalid date selection is prevented
---
**Status**: Manual
**Preconditions**:
- User is on the Homepage.
**Actions**:
1.  Open the Check-out date picker.
2.  Attempt to select a date that is before the selected Check-in date.
**Assertions**:
- The UI prevents the selection of invalid dates (either dates are disabled or an error prevents search).
- The Check-out date is automatically adjusted to be after the Check-in date if forced.
---

### 18. Portal: Room Search: Filter and sort results update the list correctly
---
**Status**: Manual
**Preconditions**:
- User is on the Search Results page with available rooms of different categories and prices.
**Actions**:
1.  Apply a specific category filter (e.g., "Executive Rooms").
2.  Change the sort order to "Price: Lowest first".
**Assertions**:
- The room list updates to only show rooms matching the filter.
- The rooms are displayed in ascending order of price.
---

### 19. Portal: Cart: Delete item from cart removes room and updates total
---
**Status**: Manual
**Preconditions**:
- User has added a room to the cart.
- The Cart Summary drop-down or page is open.
**Actions**:
1.  Click the delete (trash can) icon next to the room in the cart.
**Assertions**:
- The room is removed from the cart list.
- The cart item count decreases.
- The total price is recalculated correctly.
---

### 20. Portal: Cart: Add multiple different room types to cart aggregates total correctly
---
**Status**: Manual
**Preconditions**:
- User is on the Search Results page with multiple room categories available.
**Actions**:
1.  Add a "General Room" to the cart.
2.  Close the success modal and add an "Executive Room" (or another category) to the cart.
3.  Proceed to checkout.
**Assertions**:
- Both rooms are displayed in the Cart Summary.
- The total cost is the sum of both rooms, including applicable taxes and fees.
---

### 21. Portal: Checkout: Checkout with incomplete mandatory address details is prevented
---
**Status**: Manual
**Preconditions**:
- User is authorized and on the checkout Guest Information/Address step.
**Actions**:
1.  Leave mandatory fields (e.g., Address, City, Zip Code) blank.
2.  Click "Proceed to checkout" or "Save".
**Assertions**:
- The system prevents progression to the Payment step.
- Validation error messages appear for the missing fields.
---

### 22. Portal: Checkout: Applying 'Extra Services' to a room adds to cart total
---
**Priority**: Major
**Status**: Manual
**Preconditions**:
- User has added a room to the cart and is on the "Rooms & Price Summary" step.
**Actions**:
1.  Click the "Extra Services" button for the room in the cart.
2.  Select an extra service (e.g., "Airport Shuttle") and confirm.
**Assertions**:
- The cart total price dynamically increases by the exact cost of the extra service.
- The breakdown (taxes, fees, room cost, extra services) is updated correctly in the summary block.
---

### 23. Portal: Checkout: 'Booking for someone else?' updates primary guest details
---
**Priority**: Major
**Status**: Manual
**Preconditions**:
- User is logged into an account.
- User has a room in the cart and has navigated to the "Guest Information" checkout step.
**Actions**:
1.  Tick the "Booking for someone else?" checkbox.
2.  Fill in the newly revealed guest details (First Name, Last Name, Email) with information different from the account holder.
3.  Proceed to the "Payment Information" step.
**Assertions**:
- The order summary now displays the newly provided guest name instead of the logged-in account holder's name for that specific room.
---

### 24. Portal: Checkout: Out-of-stock items block progression to payment
---
**Priority**: Critical
**Status**: Manual
**Preconditions**:
- User has a room in their cart.
- Behind the scenes (or via another session), the exact same inventory is booked, rendering this user's targeted room category "Out of Stock" or unavailable.
**Actions**:
1.  The user attempts to click "Proceed to checkout" from the cart summary step.
**Assertions**:
- The system prevents progression.
- An error message (e.g., "An item in your cart is no longer available") is displayed to the user.
- The cart state is updated/invalidated to reflect the true inventory.
---

### 25. Portal: Checkout: Unticking Terms of Service dynamically hides payment options
---
**Priority**: Major
**Status**: Manual
**Preconditions**:
- User is on the "Payment Information" checkout step.
**Actions**:
1.  Tick the "I agree to the terms of service" checkbox.
2.  Observe the payment options (e.g., "Pay by bank wire") appear.
3.  Untick the "I agree to the terms of service" checkbox.
**Assertions**:
- The payment options immediately disappear or become visually disabled.
- The user is prevented from selecting a payment method without re-ticking the agreement.
---

### 26. Portal: Checkout: Completing checkout with unticked Terms of Service is prevented
---
**Priority**: Major
**Status**: Manual
**Preconditions**:
- User is on the "Payment Information" checkout step.
- The "I agree to the terms of service" checkbox is unticked.
**Actions**:
1.  Attempt to interact with any remaining checkout progression buttons or forcibly click the payment area.
**Assertions**:
- A validation error message (e.g., "Please accept the Terms of Service") is firmly displayed.
- The user cannot finalize the booking without ticking the box.
---

### 27. Portal: Cart: Guest cart contents merge successfully upon Auth login
---
**Priority**: Major
**Status**: Manual
**Preconditions**:
- User is browsing as an unauthenticated guest.
- User has added a room to their cart.
- User has an existing registered account.
**Actions**:
1.  Click the "Sign in" button from the header.
2.  Log in using the valid credentials of the existing account.
3.  Observe the header cart summary post-login.
**Assertions**:
- The room added during the guest session is still present in the cart.
- The user's account name is correctly displayed alongside the preserved cart items.
---