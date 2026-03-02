1. Objective
The goal of this project is to implement a "Delete Message" feature in WhatsApp that allows users to delete messages they have sent, either for themselves or for all participants in a conversation. This feature is intended to enhance user control over their conversations and improve the overall user experience.
2. Background and Context
As messaging becomes more ubiquitous, users are increasingly looking for ways to manage and control their digital communications. Currently, WhatsApp users can delete messages from their own view, but there is no way to retract messages once they’ve been sent to other users. This feature has been requested by users and is essential to maintaining WhatsApp's competitive edge in the messaging app market.
3. Scope
3.1 In-Scope
●	Single Message Deletion: Users can delete a message for themselves or for all participants in a conversation.
●	Multi-Message Deletion: Users can select multiple messages and delete them in a single action.
●	Time-Limited Deletion: Users can only delete a message for all participants within a
specified time window (e.g., 2 hours after sending).
●	Notification of Deletion: When a message is deleted for all participants, a placeholder message (e.g., "This message was deleted") will be displayed in place of the original message.
●	Platform Support: The feature will be available on iOS, Android, and Web versions of WhatsApp.
●	Encryption and Security: Deleted messages should be permanently removed from the device and server, respecting end-to-end encryption.
3.2 Out-of-Scope
●	Message Recall: The ability to retrieve and restore deleted messages will not be part of this feature.
●	Unsend Notifications: Users will not receive notifications if a message they received has been deleted by the sender.
4. User Stories
1.	As a user, I want to delete a message I’ve sent for everyone within a chat, so that it’s removed from all participants’ devices.
2.	As a user, I want to delete a message from my chat history, so that it’s no longer visible to me.
3.	As a user, I want to know that I have a limited time to delete a message for everyone, so that I can act quickly if necessary.
4.	As a user, I want to see an indication that a message has been deleted, so that I understand that content was removed.
5. Functional Requirements
1.	Message Selection:
○	Users can select one or more messages to delete.
○	Long-press on a message to select it; additional messages can be selected by tapping on them.
2.	Delete Options:
○	Upon selecting a message, users are presented with options to "Delete for Me" or "Delete for Everyone."
    ○	"Delete for Everyone" will only be available within the defined time window.
3.	Placeholder Message:
○	A placeholder ("This message was deleted") replaces the deleted message in all participants' chat histories.
4.	Time Window:
○	The time window for deleting a message for everyone is 2 hours from the time the message is sent.
○	After 2 hours, the "Delete for Everyone" option is disabled, and only "Delete for Me" is available.
5.	Notifications:
○	No notification is sent when a message is deleted for everyone.
    ○	The placeholder message is visible to all participants in the chat.
6.	Security:
○	Deleted messages are purged from the server after deletion.
    ○	The feature must comply with WhatsApp’s end-to-end encryption standards.
6. Non-Functional Requirements
1.	Performance:
○	The deletion process must be instantaneous, with no noticeable delay for the user.
○	The app must handle the deletion process smoothly, even in group chats with a large number of participants.
2.	Reliability:
○	The feature must work consistently across all supported platforms (iOS, Android, Web).
○	The deletion must be irreversible, ensuring that the deleted messages cannot be recovered.
3.	Usability:
○	The interface must be intuitive, ensuring users can easily find and use the deletion options.
    ○	Provide clear feedback when a message is successfully deleted.
7. Assumptions
●	Users have updated their app to the latest version to access this feature.
●	Participants in a conversation must all be online for "Delete for Everyone" to be successful.
8. Dependencies
●	Backend Support: Requires updates to the message handling service on the server to support deletion.
●	UI/UX Design: Collaboration with the design team to create intuitive delete options and placeholder messages.
●	Compliance: Legal review to ensure the feature complies with data privacy regulations.
9. Risks
●	Data Privacy Concerns: Users may have concerns about whether deleted messages are truly removed from all devices and servers.
●	Edge Cases: Handling scenarios where users are offline or have outdated versions of the app.
11. Open Questions
●	Should the time window for deleting messages be configurable by the user or remain fixed?
●	How will the feature behave in the event of network interruptions during the deletion process?
