# Refined Automation Specs (SDD)

> [!NOTE] 
> **UI-Only Logic**: All setup steps (user creation, order placement) must be performed via UI interactions. API calls are strictly forbidden for test data setup to ensure end-to-end coverage and "pure" user emulation.

## Architecture Overview

### Fixtures Needed
- **`auth`**: Provides a `page` with a logged-in user state.
    - *Setup (UI)*: Navigate to Sign In -> Key in email/details -> Submit Registration -> Verify 'My Account' landing.
    - *Teardown*: None (ephemeral).
- **`adminAuth`**: Provides a `page` with a logged-in admin state.
    - *Setup (UI)*: Navigate to Admin URL -> Key in credentials -> Submit Login -> Verify Dashboard.
- **`searchResults`**: Provides a `page` already on the search results page with valid rooms.
- **`cartWithRoom`**: User with 1 room added to cart.
    - *Setup (UI)*: Use `auth` -> Search for Room -> Click 'Book Now' -> Wait for Modal.
- **`paymentReadyUser`**: User at the payment step of checkout.
    - *Setup (UI)*: Use `cartWithRoom` -> Proceed to Checkout (Summary -> Address -> Payment).
- **`completedOrder`**: User who has completed a checkout flow (Order Reference known).
    - *Setup (UI)*: Use `paymentReadyUser` -> Select Bank Wire -> Confirm Order -> Capture Reference.
- **`orderAwaitingPayment`**: Admin context with an order in "Awaiting payment" state.
    - *Setup (UI)*: Create `completedOrder` in auxiliary context -> Login Admin -> Find Order.
- **`orderWithAdminMessage`**: User context where admin has sent a message.
    - *Setup (UI)*: Create `orderAwaitingPayment` -> Admin sends message -> Return User context.

### Page Objects (To Be Created)
- **`HomePage`**: Search form, Navigation.
- **`AuthPage`**: Login/Registration forms.
- **`MyAccountPage`**: Dashboard links.
- **`SearchResultsPage`**: List of rooms, "Book Now" buttons.
- **`CartModal`**: "Proceed to checkout" modal.
- **`OrderSummaryPage`**: Cart summary table.
- **`CheckoutPage`**: Guest info, Address, Payment steps.
- **`OrderConfirmationPage`**: Success message, Order Reference.
- **`OrderHistoryPage`**: List of past orders.
- **`AdminLoginPage`**: Back-office login.
- **`AdminDashboardPage`**: Stats widgets.
- **`AdminOrdersPage`**: Order table, filters.
- **`AdminOrderDetailsPage`**: Status update, Messages.
- **`AdminCustomersPage`**: Customer table, filters.

---

## Scenarios

### 1. User Registration

---
**Spec**: `auth.spec.ts`
**Test name**: `should redirect to My Account when a new user registers successfully`
**Fixture dependencies**: `page`
**Data requirements**: 
- Unique email generated dynamically (e.g., `test-${Date.now()}@example.com`).
- Static valid data for First/Last Name, Password.
**Setup**: None (starts at Homepage).
**Actions**:
1.  Navigate to Homepage `/en/`.
2.  Click "Sign in" link.
3.  Enter unique email in "Create an account" input.
4.  Click "Create an account".
5.  Fill "First Name", "Last Name", "Password", "Title".
6.  Click "Register".
**Assertions**:
- URL contains `controller=my-account`.
- Heading "My account" is visible.
- Success alert "Your account has been created." is visible.
**Risks**: Email uniqueness collision if not handled dynamically.
---

### 2. User Login

---
**Spec**: `auth.spec.ts`
**Test name**: `should display dashboard when registered user logs in`
**Fixture dependencies**: `page` (No "auth" fixture, as we test login itself).
**Data requirements**: 
- Valid user credentials.
**Setup**: 
1.  **UI Registration Flow**: Go to Sign In -> Create Account -> Register (same steps as Scenario 1).
2.  **Logout**: Click "Sign out".
**Actions**:
1.  Navigate to Homepage `/en/`.
2.  Click "Sign in".
3.  Enter valid email/password (from setup).
4.  Click "Sign in" button.
**Assertions**:
- URL contains `controller=my-account`.
- Header User Info contains correct First/Last name.
- "Sign out" button is visible.
- Dashboard links ("Order History", "Credit Slips") are visible.
**Risks**: Setup is slow; relies on Registration flow working.
---

### 3. Room Search

---
**Spec**: `room-search.spec.ts`
**Test name**: `should list available rooms when searching with valid dates`
**Fixture dependencies**: `page`
**Data requirements**: None (relies on default hotel inventory).
**Setup**: None.
**Actions**:
1.  Navigate to Homepage.
2.  Type "Hotel Prime" in Location input.
3.  Select "The Hotel Prime" from typeahead info.
4.  Set Check-in to `Today + 1`, Check-out to `Today + 3` (using relative dates).
5.  Click "Search Now".
**Assertions**:
- URL contains `controller=search`.
- List of rooms `#center_column .room_cont` count is > 0.
- At least one room card contains text "General Rooms" (or known type).
**Risks**: No inventory available for selected dates (flaky). *Mitigation*: Reset inventory before run or mock search results.
---

### 4. Add Room to Cart

---
**Spec**: `room-search.spec.ts`
**Test name**: `should show success modal when adding a room to cart`
**Fixture dependencies**: `searchResults` (Fixture: navigates to Search page with results).
**Data requirements**: Rooms available.
**Setup**: `searchResults` fixture logic (UI Search).
**Actions**:
1.  Click "Book Now" on first available room.
2.  Wait for modal `#layer_cart` to be visible.
**Assertions**:
- Modal header contains text "Room successfully added to your cart".
- "Proceed to checkout" button is visible and enabled.
**Risks**: "Book Now" might be disabled if room is sold out.
---

### 5. Occupancy Limits

---
**Spec**: `room-search.spec.ts`
**Test name**: `should show error when exceeding max adult occupancy`
**Fixture dependencies**: `searchResults`
**Data requirements**: Room with specific limit (e.g., 2 adults).
**Setup**: `searchResults` fixture logic (UI Search).
**Actions**:
1.  Find room with Max Adults = 2.
2.  Click "+" on Adults counter 3 times (0 -> 1 -> 2 -> 3 attempt).
**Assertions**:
- Error message "Maximum adult occupancy reached" (fancybox or tooltip) is visible.
- Adult count input value equals "2".
**Risks**: Selector for "+" button might vary; logic might be JS-driven (slow).
---

### 6. Cart Summary & Checkout

---
**Spec**: `checkout.spec.ts`
**Test name**: `should display correct items in cart summary`
**Fixture dependencies**: `cartWithRoom` (User login -> UI Search -> Add Room -> Proceed from Modal).
**Data requirements**: User with items in cart.
**Setup**: `cartWithRoom` fixture ensures user is at summary step via UI.
**Actions**:
1.  Review summary table `#order-detail-content`.
2.  Click "Proceed" (Summary step).
**Assertions**:
- Summary table contains room name.
- After click, URL contains `controller=order&step=1` (Addresses).
**Risks**: None.
---

### 7. Guest Information & Address

---
**Spec**: `checkout.spec.ts`
**Test name**: `should proceed to payment when address is valid`
**Fixture dependencies**: `cartWithRoom`
**Data requirements**: User with configured address.
**Setup**: Navigate through Summary to Address step (Address is created during UI Registration in `cartWithRoom` -> `auth` fixture).
**Actions**:
1.  Verify Address dropdown has a selection.
2.  Click "Proceed" (Address step).
**Assertions**:
- Navigate to Payment step (`controller=order` with `step=3` or similar params).
- "Payment" header is visible.
**Risks**: Address might be missing if user creation was partial (unlikely with UI flow).
---

### 8. Payment Terms Validation (Negative)

---
**Spec**: `checkout.spec.ts`
**Test name**: `should prevent payment when terms are not accepted`
**Fixture dependencies**: `paymentReadyUser` (User at payment step).
**Data requirements**: None.
**Setup**: `paymentReadyUser` fixture logic (Full UI checkout flow until Payment).
**Actions**:
1.  Identify "Terms of Service" checkbox `#cgv`.
2.  Ensure checkbox is **unchecked**.
3.  Click "Pay by bank wire" `a.bankwire`.
**Assertions**:
- URL does NOT change to bank wire payment page.
- Error message "You must agree to the terms of service before continuing." (fancybox or alert) is visible.
**Risks**: Alert might be native browser alert.
---

### 9. Complete Order (Positive)

---
**Spec**: `checkout.spec.ts`
**Test name**: `should complete order via Bank Wire`
**Fixture dependencies**: `paymentReadyUser`
**Data requirements**: None.
**Setup**: `paymentReadyUser` fixture logic.
**Actions**:
1.  Check "Terms of Service" checkbox `#cgv`.
2.  Click "Pay by bank wire".
3.  Verify navigation to Summary.
4.  Click "I confirm my order".
**Assertions**:
- URL contains `controller=order-confirmation`.
- Heading "Order confirmation" is visible.
- Text "Your order on The Hotel Prime is complete." is visible.
- Reference Code is visible (capture via Regex if needed).
**Risks**: Bank wire module might be disabled in admin.
---

### 10. Verify Order History

---
**Spec**: `order-history.spec.ts`
**Test name**: `should display completed order in history`
**Fixture dependencies**: `completedOrder` (User with 1 past order).
**Data requirements**: Order Reference from setup.
**Setup**: `completedOrder` runs full UI checkout flow and captures Reference.
**Actions**:
1.  Click User Name in header -> "Order History".
2.  Locate first row in table `tr.first_item`.
**Assertions**:
- First row Order Reference matches the one from setup.
- Date is today.
- Total price matches.
**Risks**: Timezone differences for "Date" assertion.
---

### 11. Admin Login

---
**Spec**: `admin-auth.spec.ts`
**Test name**: `should display dashboard upon successful admin login`
**Fixture dependencies**: `page`
**Data requirements**: Valid Admin credentials (env vars).
**Setup**: None.
**Actions**:
1.  Navigate to Admin URL.
2.  Enter Email/Password.
3.  Click "Log in".
**Assertions**:
- URL contains `controller=AdminDashboard`.
- Sidebar menu is visible.
- User profile icon is visible in header.
**Risks**: Admin URL might be dynamic/tokenized.
---

### 12. Admin - Verify Order Details

---
**Spec**: `admin-orders.spec.ts`
**Test name**: `should display correct details for a new order`
**Fixture dependencies**: `adminAuth`, `completedOrder` (Auxiliary user context).
**Data requirements**: Order Reference from a fresh user order.
**Setup**: 
1.  **User Context**: Run `completedOrder` flow to place a new order via UI. Capture `orderReference`.
2.  **Admin Context**: Use `adminAuth` to login as admin.
**Actions**:
1.  Navigate to Orders page.
2.  Filter/Search for `orderReference` or pick first row.
3.  Click View Details.
**Assertions**:
- Customer Name matches user.
- Total Price matches.
- Initial Status is "Awaiting bank wire payment".
**Risks**: Order processing delay (unlikely).
---

### 13. Admin - Update Order Status

---
**Spec**: `admin-orders.spec.ts`
**Test name**: `should update order status to Payment Accepted`
**Fixture dependencies**: `adminAuth`, `orderAwaitingPayment` (Order in initial state).
**Data requirements**: Order Reference.
**Setup**: `orderAwaitingPayment` creates order via UI, then Admin logs in and finds it.
**Actions**:
1.  Navigate to Order Details.
2.  Select "Payment accepted" in status dropdown.
3.  Click "Update status".
**Assertions**:
- Status badge updates to "Payment accepted".
- Status history table adds a new row "Payment accepted".
**Risks**: Status IDs might vary; selection by text is safer.
---

### 14. Admin - Send Message to User

---
**Spec**: `admin-orders.spec.ts`
**Test name**: `should append sent message to order history`
**Fixture dependencies**: `adminAuth`, `orderAwaitingPayment`.
**Data requirements**: Order Reference.
**Setup**: Navigate to Order Details (Setup involves UI order creation).
**Actions**:
1.  Scroll to Messages.
2.  Type "Your booking is confirmed!".
3.  Check "Display to customer".
4.  Click "Send message".
**Assertions**:
- Message appears in list above.
- "Visible to customer" column shows "Yes" (green check).
**Risks**: None.
---

### 15. User - Verify Admin Message

---
**Spec**: `order-history.spec.ts`
**Test name**: `should display message sent by admin`
**Fixture dependencies**: `orderWithAdminMessage` (User with order + Admin message sent).
**Data requirements**: Order with message.
**Setup**: 
1.  **User Context**: Place order via UI.
2.  **Admin Context**: Login, find order, send message via UI.
3.  **User Context**: Return to user session.
**Actions**:
1.  User Login -> Order History -> Details.
2.  Scroll to Messages.
**Assertions**:
- Message text "Your booking is confirmed!" is visible.
- Sender is "Shop Name" (or Admin).
**Risks**: None.
---

### 16. Admin - Verify Customer

---
**Spec**: `admin-customers.spec.ts`
**Test name**: `should find customer by email`
**Fixture dependencies**: `adminAuth`, `registeredUser` (or static test user).
**Data requirements**: Known user email.
**Setup**: Ensure user exists by running **UI Registration Flow**.
**Actions**:
1.  Navigate to Customers.
2.  Input Email in Filter.
3.  Click Search.
**Assertions**:
- Table shows exactly 1 row.
- Email column matches input.
**Risks**: None.
---

### 17. Admin - Filter Orders by Reference

---
**Spec**: `admin-orders.spec.ts`
**Test name**: `should find order by reference code`
**Fixture dependencies**: `adminAuth`, `completedOrder`.
**Data requirements**: Order Reference.
**Setup**: Ensure order exists by running **UI Checkout Flow**.
**Actions**:
1.  Navigate to Orders.
2.  Input Reference in Filter.
3.  Click Search.
**Assertions**:
- Table shows exactly 1 row.
- Reference column matches input.
**Risks**: None.
---

### 18. Admin - Access Stats Dashboard

---
**Spec**: `admin-dashboard.spec.ts`
**Test name**: `should display key statistics widgets`
**Fixture dependencies**: `adminAuth`
**Data requirements**: None.
**Setup**: Navigate to Dashboard.
**Actions**:
1.  Wait for dashboard load.
**Assertions**:
- "Calendar" widget is visible.
- "Online Visitors" widget is visible.
- No 500 errors.
**Risks**: Dashboard might be slow to load stats.
---
