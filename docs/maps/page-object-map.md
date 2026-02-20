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
**Purpose:** Hotel search results listing available rooms

| Method | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `waitForLoad()` | - | Promise\<this\> | Wait for Room Results Container (inherited) |
| `expectRoomsAvailable()` | - | Promise\<void\> | Assert at least one room card is visible |
| `expectRoomCategoryPresent(categoryName)` | categoryName: string | Promise\<void\> | Assert a room heading with given category name is visible |

**Locators:**
- `uniqueElement`: `#category_data_cont` — Room Results Container
- `roomCards`: `#center_column .room_cont` — Room Cards
- `roomHeadings`: `.rm_heading` — Room Name Headings

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
