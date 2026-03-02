Epic: Integrate Stripe Payment Gateway for Card Transactions
Description: Currently, the Qlo application relies on manual payment methods (bank wire and check), which bottleneck the booking process and require manual validation. To provide a modern, frictionless checkout experience, we need to integrate the Stripe Payment Gateway to process secure credit and debit card transactions.
This Epic encompasses the end-to-end implementation of Stripe integration, including the customer-facing frontend checkout flow, backend API transaction handling, and the admin panel configuration settings.
Business Value:
•	Reduce booking cart abandonment rates.
•	Automate order status updates via instantaneous payment confirmation.
•	Improve customer satisfaction by offering a familiar and secure online payment method.

User Story 1: Customer Checkout via Stripe
Title: As a Customer, I want to securely pay for my reservation using a credit/debit card via Stripe so my booking is confirmed instantly.
Description: As a Customer, I want to have the option to pay with my credit or debit card during the final step of checkout, So that I do not have to wait for manual processing of a bank wire or check.
Acceptance Criteria:
1.	On the "Payment Information" step of checkout, a new option "Pay by Credit/Debit Card" is displayed alongside existing options.
2.	Selecting the card option renders the secure Stripe Elements UI for card number, expiry, and CVC input.
3.	Upon successful payment, the user is redirected to the Order Confirmation page, and the booking status is set to "Payment Accepted".
4.	Upon failed payment, the user remains on the checkout page, a user-friendly error message is displayed (e.g., "Insufficient funds"), and they can try again.



US 2: As an Administrator, I want to configure Stripe API credentials and transaction settings in the Qlo Back Office so that I can manage the payment gateway operations.
As an Administrator, I want a dedicated configuration screen for Stripe within the Payment Modules section, So that I can securely manage my API keys, environment modes, and view transaction identifiers linked to specific orders.

The Admin portal has a configuration page for "Stripe Gateway" under the Payments tab.

The page includes fields for Publishable Key, Secret Key, and Webhook Secret.

The Admin can toggle between "Test Mode" (Sandbox) and "Live Mode" (Production).

Order details in the Admin portal must display the Stripe Transaction ID for accounting tracking.