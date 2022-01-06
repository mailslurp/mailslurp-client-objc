#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
*
* The version of the OpenAPI document: 6.5.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIOrganizationInboxProjection
@end

@interface OAIOrganizationInboxProjection : OAIObject

/* ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically. [optional]
 */
@property(nonatomic) NSString* _id;
/* When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`. [optional]
 */
@property(nonatomic) NSDate* createdAt;
/* Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search [optional]
 */
@property(nonatomic) NSString* name;
/* The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. [optional]
 */
@property(nonatomic) NSString* emailAddress;
/* Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering [optional]
 */
@property(nonatomic) NSNumber* favourite;
/* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. [optional]
 */
@property(nonatomic) NSArray<NSString*>* tags;
/* Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/ [optional]
 */
@property(nonatomic) NSNumber* teamAccess;
/* Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). [optional]
 */
@property(nonatomic) NSString* inboxType;
/* Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes. [optional]
 */
@property(nonatomic) NSNumber* _readOnly;

@end
