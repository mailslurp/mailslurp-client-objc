#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
*
* The version of the OpenAPI document: 6.5.2
* Contact: contact@mailslurp.dev
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIUpdateInboxOptions
@end

@interface OAIUpdateInboxOptions : OAIObject

/* Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search [optional]
 */
@property(nonatomic) NSString* name;
/* Description of an inbox for labelling and searching purposes [optional]
 */
@property(nonatomic) NSString* _description;
/* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. [optional]
 */
@property(nonatomic) NSArray<NSString*>* tags;
/* Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. [optional]
 */
@property(nonatomic) NSDate* expiresAt;
/* Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering [optional]
 */
@property(nonatomic) NSNumber* favourite;

@end
