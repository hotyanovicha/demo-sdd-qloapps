# Requirements Document: Stripe Integration - Admin Configuration (US2)

## 1. Objective
The goal of this project is to implement the administrative configuration interface for the Stripe Payment Gateway within the Qlo Back Office. This allows administrators to securely manage API credentials, transaction settings, and environment modes to enable standard credit card payments on the frontend.

## 2. Background and Context
**Application Context:** QloApps is an open-source hotel reservation system and booking engine based on the PrestaShop architecture. It features a frontend for hotel guests to browse and book rooms, and a comprehensive backend administration panel (the "Qlo Back Office") for hotel staff to manage bookings, payments, and system configurations.

To support the Epic of integrating Stripe for modern, frictionless checkout experiences for hotel guests, the backend administration must be configured first. Currently, the application relies on manual payment methods (like bankwire). Providing administrators with a dedicated configuration screen for Stripe ensures that API keys and environment settings can be managed securely. In QloApps, this configuration interface is typically rendered natively using the `HelperForm` class to generate standard back-office form elements (text inputs, switches, and save buttons).

## 3. Scope
### 3.1 In-Scope
* **Stripe Configuration Screen:** A dedicated page under the "Payment Modules" section in the Admin portal.
* **API Credentials Management:** Input fields for Publishable Key, Secret Key, and Webhook Secret.
* **Environment Toggling:** Ability to switch between "Test Mode" (Sandbox) and "Live Mode" (Production).
* **Order Transaction Tracking:** Displaying the Stripe Transaction ID on the Order details page in the Admin portal.
* **Supported Platforms:** Desktop Web specifically optimized for Google Chrome.
* **Payment Types:** Simple standard credit card payments only.

### 3.2 Out-of-Scope
* **Complex Transactions:** Complex refunds, partial refunds, or cancellations are out of scope.
* **Alternative Payment Methods:** Apple Pay, Google Pay, AliPay, etc., are out of scope.
* **Mobile Web Support:** Admin configuration is not optimized or explicitly tested for mobile devices or browsers other than Chrome Desktop.

## 4. User Stories
1. **US2:** As an Administrator, I want a dedicated configuration screen for Stripe within the Payment Modules section, so that I can securely manage my API keys, environment modes, and view transaction identifiers linked to specific orders.

## 5. Functional Requirements
### 5.1 Ticket Requirements (Verbatim Alignment)
1. The Admin portal has a configuration page for "Stripe Gateway" under the Payments tab.
2. The page includes fields for Publishable Key, Secret Key, and Webhook Secret.
3. The Admin can toggle between "Test Mode" (Sandbox) and "Live Mode" (Production).
4. Order details in the Admin portal must display the Stripe Transaction ID for accounting tracking.

### 5.2 Detailed Requirements
1. **Configuration Page Access:**
   * **Admin Navigation Context:** The Qlo Back Office features a standard navigation menu. The configuration page is accessed through the "Modules and Services" controller.
   * The Admin portal must have a "Stripe Gateway" configuration accessible either under "Modules and Services" -> "Payment" or by searching the Modules list for "Stripe" and clicking the "Configure" button.
2. **Credential Management:**
   * Expected UI: Native QloApps/PrestaShop text input (`type => text` in `HelperForm`) fields for: Publishable Key, Secret Key, and Webhook Secret.
   * Credentials must be saved securely upon clicking the native "Save" button (`btnSubmit`).
3. **Environment Mode Toggle:**
   * Expected UI: The page must include a native QloApps switch/toggle (Yes/No style radio inputs) to switch the active environment between "Test Mode" (Sandbox) and "Live Mode" (Production).
4. **Order Details Display:**
   * When an order is paid via Stripe, the Order details page in the Admin portal must display the associated "Stripe Transaction ID" for accounting tracking.

## 6. Non-Functional Requirements
1. **Security & Compliance:**
   * Basic security compliance is required. Keys should be saved appropriately and not exposed fully in plain sight after saving if possible.
2. **Platform Compatibility:**
   * Expected to function flawlessly on Chrome (Web Desktop).

## 7. Assumptions
* None. (As requested, no specific assumptions are made).

## 8. Dependencies
* **Stripe Account:** A valid Stripe Developer/Business account to generate Test/Live keys.
