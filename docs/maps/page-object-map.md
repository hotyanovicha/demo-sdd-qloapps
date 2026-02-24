# Page Object Map

⚠️ **CRITICAL: CHECK THIS FILE BEFORE CREATING ANY NEW CODE!**

**MANDATORY BEFORE CODING:**
1. ✅ **SEARCH** this file for existing Page Objects and methods
2. ✅ **CHECK** if functionality already exists (even with different names)
3. ✅ **REUSE** existing code instead of creating duplicates
4. ✅ **UPDATE** this file immediately after creating new Page Objects/methods

**ANTI-DUPLICATION RULES:**
- 🔴 **NEVER** create a new Page Object if one exists for the same page
- 🔴 **NEVER** create a new method if similar functionality exists
- 🔴 **NEVER** skip checking this file before coding
- 🟢 **ALWAYS** extend existing Page Objects with new methods
- 🟢 **ALWAYS** reuse existing methods, even if names differ
- 🟢 **ALWAYS** update this map after ANY changes

---

## Existing Page Objects

### HomePage (`src/ui/pages/home.page.ts`)
**URL:** `/en/`
**Purpose:** Hotel landing page with search form and navigation

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `open()` | - | Promise\<void\> | Navigate to `URLS.HOME` (`/en/`) |
| `waitForLoad()` | - | Promise\<this\> | Wait for site header to be visible (inherited) |
| `goToSignIn()` | - | Promise\<void\> | Click the Sign In link in header |
| `fillSearchForm(hotelName, checkInDay, checkOutDay)` | hotelName: string, checkInDay: string, checkOutDay: string | Promise\<void\> | Select hotel from Chosen dropdown, open datepicker, pick check-in and check-out days |
| `submitSearch()` | - | Promise\<void\> | Click the Search Rooms button |

**Locators:**
- `uniqueElement`: `#header` — Site Header
- `signInLink`: `role=link[name=/sign in/i]` — Sign In Link
- `chosenTrigger`: `#id_hotel_button_chosen .chosen-single` — Hotel Selector Trigger (Chosen.js)
- `datepickerTrigger`: `#daterange_value` — Date Range Picker div
- `searchButton`: `role=button[name=/search rooms/i]` — Search Rooms Button
- Day cells (inline): `.day.toMonth.valid` filtered by exact day number regex

---

### AuthPage (`src/ui/pages/auth/auth.page.ts`)
**URL:** `/en/my-account` (login form)
**Purpose:** Sign in and create-account entry forms

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `open()` | - | Promise\<void\> | Navigate to `URLS.LOGIN` (`/en/login`) |
| `waitForLoad()` | - | Promise\<this\> | Wait for Authentication heading (inherited) |
| `login(email, password)` | email: string, password: string | Promise\<void\> | Fill credentials and click Sign In |
| `createAccount(email)` | email: string | Promise\<void\> | Fill email in create-account field and submit |

**Locators:**
- `uniqueElement`: `role=heading[name=/authentication/i]`
- `emailInput`: `input#email`
- `passwordInput`: `input#passwd`
- `submitButton`: `role=button[name=/sign in/i]`
- `createAccountEmailInput`: `input#email_create`
- `createAccountButton`: `button#SubmitCreate`

---

### RegistrationPage (`src/ui/pages/auth/registration.page.ts`)
**URL:** `/en/my-account` (after create-account form submission)
**Purpose:** New user personal information form

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `waitForLoad()` | - | Promise\<this\> | Wait for "Your personal information" heading (inherited) |
| `register(data)` | data: RegistrationData | Promise\<void\> | Fill title, first name, last name, password, phone and submit |

**Locators:**
- `uniqueElement`: `role=heading[name=/your personal information/i]`
- `titleMrRadio`: `input#id_gender1` — Mr Title Radio
- `titleMrsRadio`: `input#id_gender2` — Mrs Title Radio
- `firstNameInput`: `input#customer_firstname` — First Name Input
- `lastNameInput`: `input#customer_lastname` — Last Name Input
- `passwordInput`: `input#passwd` — Password Input
- `phoneInput`: `role=textbox[name=/phone/i]` — Phone Input
- `registerButton`: `role=button[name=/register/i]` — Register Button

---

### MyAccountPage (`src/ui/pages/auth/my-account.page.ts`)
**URL:** `/en/my-account`
**Purpose:** Post-auth customer dashboard

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `waitForLoad()` | - | Promise\<this\> | Wait for "My account" heading (inherited) |
| `expectHeadingVisible()` | - | Promise\<void\> | Assert "My account" heading is visible |
| `expectUserName(firstName)` | firstName: string | Promise\<void\> | Assert user's first name button is visible in header |
| `expectDashboardLinksVisible()` | - | Promise\<void\> | Assert "Bookings" and "Credit slips" links are visible in dashboard list |
| `expectSignOutVisible()` | - | Promise\<void\> | Assert Sign Out link is visible in user dropdown (inherited from BasePage) |
| `signOut()` | - | Promise\<void\> | Click Sign Out in user dropdown (inherited from BasePage) |

**Locators:**
- `uniqueElement`: `role=heading[name=/my account/i]` — My Account Heading
- `dashboardLinks` (inline): `.myaccount-link-list` — Dashboard Links List

---

### SearchResultsPage (`src/ui/pages/search-results.page.ts`)
**URL:** `/en/{hotel-slug}?date_from=...&date_to=...`
**Purpose:** Hotel search results listing available rooms; occupancy selection and Book Now flow

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `waitForLoad()` | - | Promise\<this\> | Wait for Room Results Container (inherited) |
| `expectRoomsAvailable()` | - | Promise\<void\> | Assert at least one room card is visible |
| `expectRoomCategoryPresent(categoryName)` | categoryName: string | Promise\<void\> | Assert a room heading with given category name is visible |
| `selectOccupancy()` | - | Promise\<void\> | Open occupancy selector on first room card |
| `submitOccupancy()` | - | Promise\<void\> | Click "Done" to confirm occupancy selection |
| `bookFirstRoom()` | - | Promise\<void\> | Click "Book Now" on the first available room card |
| `expectCartSuccessModalVisible()` | - | Promise\<void\> | Assert cart modal is visible with "Room successfully added to your cart" text |
| `expectProceedToCheckoutVisible()` | - | Promise\<void\> | Assert "Proceed to checkout" button is visible and enabled in the modal |
| `clickProceedToCheckout()` | - | Promise\<void\> | Click the Proceed to Checkout button in the cart success modal |

**Locators:**
- `uniqueElement`: `#category_data_cont` — Room Results Container
- `roomCards`: `#center_column .room_cont` — Room Cards
- `roomHeadings`: `.rm_heading` — Room Name Headings
- `firstRoomCard`: `[data-testid="room-card"]` (first) — First Available Room Card
- `occupancyButton`: `[data-testid="occupancy-button"]` (scoped to first card) — Occupancy Selector Button
- `occupancySubmitButton`: `[data-testid="occupancy-submit"]` (scoped to first card) — Occupancy Done Button
- `bookNowButton`: `[data-testid="book-now"]` (scoped to first card) — Book Now Button
- `cartModalHeading`: `[data-testid="layer-cart-room-added"]` — Cart Success Modal Heading (unique: 1)
- `proceedToCheckoutButton`: `[data-testid="layer-cart-checkout"]` — Proceed to Checkout Button (unique: 1)

---

### CheckoutPage (`src/ui/pages/checkout/checkout.page.ts`)
**URL:** `/en/quick-order`
**Purpose:** Multi-step checkout page (Rooms & Price Summary → Guest Information → Payment)

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `waitForLoad()` | - | Promise\<this\> | Wait for Rooms & Price Summary header (inherited) |
| `getRoomName()` | - | Promise\<string\> | Assert visibility and return room name text from cart |
| `getTotalPrice()` | - | Promise\<string\> | Assert visibility and return total price from cart right panel |
| `proceedToGuestInfo()` | - | Promise\<void\> | Click Proceed button to open Guest Information step |
| `proceedToPaymentStep()` | - | Promise\<void\> | Click Proceed button to open Payment Information step |
| `acceptTermsOfService()` | - | Promise\<void\> | Check the Terms of Service checkbox |
| `selectBankWirePayment()` | - | Promise\<void\> | Click the Pay by Bank Wire link |

**Locators:**
- `uniqueElement`: `[data-testid="shopping-cart-header"]` — Rooms & Price Summary Header (unique: 1)
- `cartRoomName`: `[data-testid="cart-room-name"]` — Room Name in Cart (unique: 1)
- `cartTotalAmount`: `[data-testid="cart-final-total"] .cart_total_values` — Cart Total Amount (unique: 1)
- `proceedToGuestInfoButton`: `[data-testid="proceed-to-checkout"]` — Proceed to Guest Info Button (unique: 1)
- `proceedToPaymentButton`: `[data-testid="proceed-to-payment"]` — Proceed to Payment Button (unique: 1)
- `termsOfServiceCheckbox`: `input#cgv` — Terms of Service Checkbox (unique: 1)
- `bankWirePaymentLink`: `[data-testid="bankwire-payment"]` — Pay by Bank Wire Link (unique: 1, visible after ToS checked)

---

### BankWireConfirmPage (`src/ui/pages/checkout/bank-wire-confirm.page.ts`)
**URL:** `/en/module/bankwire/payment`
**Purpose:** Bank wire order confirmation summary with "I confirm my order" button

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `waitForLoad()` | - | Promise\<this\> | Wait for Bank-wire Payment heading (inherited) |
| `confirmOrder()` | - | Promise\<void\> | Click the I confirm my order button |

**Locators:**
- `uniqueElement`: `role=heading[name=/bank-wire payment/i][level=3]` — Bank Wire Payment Heading
- `confirmOrderButton`: `role=button[name=/confirm my order/i]` — Confirm Order Button

---

### OrderConfirmationPage (`src/ui/pages/order-confirmation.page.ts`)
**URL:** `/en/order-confirmation?...`
**Purpose:** Order confirmation page showing booking success, room details, payment status

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `waitForLoad()` | - | Promise\<this\> | Wait for booking success message (inherited) |
| `expectSuccessMessageVisible()` | - | Promise\<void\> | Assert success message is visible with correct text |
| `expectRoomName(expectedName)` | expectedName: string | Promise\<void\> | Assert confirmation room name contains expected value |
| `expectTotalPrice(expectedTotal)` | expectedTotal: string | Promise\<void\> | Assert Final Booking Total row contains expected price |
| `expectOrderStatus()` | - | Promise\<void\> | Assert order status shows "Awaiting payment" |

**Locators:**
- `uniqueElement`: `[data-testid="booking-success-message"]` — Booking Success Message (unique: 1)
- `confirmationRoomName`: `[data-testid="confirmation-room-name"]` — Confirmation Room Name (unique: 1)
- `orderStatus`: `[data-testid="order-status"]` — Order Status (unique: 1)
- `confirmationTotalAmount`: `table.table-summary tr` filtered by `Final Booking Total` → last `td` — Final Booking Total Amount

---

## BasePage (`src/ui/pages/base.page.ts`)
**Purpose:** Abstract base for all Page Objects — provides shared navigation and sign-out utilities

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `goto(url)` | url: string | Promise\<void\> | Navigate to the given URL |
| `waitForLoad()` | - | Promise\<this\> | Wait for `uniqueElement` to be visible |
| `signOut()` | - | Promise\<void\> | Click user dropdown, then click Sign Out link |
| `expectSignOutVisible()` | - | Promise\<void\> | Open user dropdown and assert Sign Out link is visible |

**Locators (private getters — not accessible from subclasses):**
- `userDropdown`: `#user_info_acc` — User Dropdown Button
- `logoutLink`: `.header_user_info a[title="Log me out"]` — Logout Link

> Note: Implemented as TypeScript getter properties (not field initializers) to avoid init-before-constructor errors when `this.page` is accessed in `BasePage` itself.

---

## Method Naming Conventions

### Actions
- `goto*` — Navigate to a URL
- `goTo*` — Click a navigation link
- `fill*` — Fill a form
- `submit*` — Submit a form

### Assertions
- `expect*` — Playwright assertions (visible, URL, text)

---

## Update History

| Date | Page Object | Changes |
|------|-------------|---------|
| 2026-02-20 | All | Replaced Wikipedia placeholder content with QloApps page objects |
| 2026-02-20 | `HomePage` | Rewrote `fillSearchForm`: removed broken typeahead/hidden-select approach; uses Chosen.js trigger and verified datepicker selectors |
| 2026-02-20 | `SearchResultsPage` | Fixed `uniqueElement` from non-existent `#search_results` to `#category_data_cont`; removed `expectSearchResultsUrl()` (pages tracked by uniqueElement); added `expectRoomCategoryPresent()` with `.rm_heading` |
| 2026-02-20 | `MyAccountPage` | Removed non-existent `expectSuccessAlert()` and `expectMyAccountUrl()`; fixed dashboard link selectors to `a[title="Bookings"]` and `a[title="Credit slips"]` scoped to `.myaccount-link-list` |
| 2026-02-20 | `BasePage` | Fixed locators to `#user_info_acc` (dropdown) and `.header_user_info a[title="Log me out"]` (logout); converted to getter properties |
| 2026-02-23 | `SearchResultsPage` | Added occupancy selector, Done button, Book Now button, cart modal heading and Proceed to Checkout locators/methods for Scenario 4 (Add to Cart) |
| 2026-02-24 | `SearchResultsPage` | Added `clickProceedToCheckout()` method for Scenario 9 |
| 2026-02-24 | `CheckoutPage` | New PO for multi-step checkout at `/en/quick-order` — Scenario 9 |
| 2026-02-24 | `BankWireConfirmPage` | New PO for bank wire payment confirmation at `/en/module/bankwire/payment` — Scenario 9 |
| 2026-02-24 | `OrderConfirmationPage` | New PO for order confirmation at `/en/order-confirmation` — Scenario 9 |
