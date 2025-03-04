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





@protocol OAIInboxDto
@end

@interface OAIInboxDto : OAIObject

/* ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically. 
 */
@property(nonatomic) NSString* _id;
/* ID of user that inbox belongs to 
 */
@property(nonatomic) NSString* userId;
/* When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`. 
 */
@property(nonatomic) NSDate* createdAt;
/* Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search [optional]
 */
@property(nonatomic) NSString* name;
/* ID of custom domain used by the inbox if any [optional]
 */
@property(nonatomic) NSString* domainId;
/* Description of an inbox for labelling and searching purposes [optional]
 */
@property(nonatomic) NSString* _description;
/* The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. 
 */
@property(nonatomic) NSString* emailAddress;
/* Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. [optional]
 */
@property(nonatomic) NSDate* expiresAt;
/* Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering 
 */
@property(nonatomic) NSNumber* favourite;
/* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. [optional]
 */
@property(nonatomic) NSArray<NSString*>* tags;
/* Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). [optional]
 */
@property(nonatomic) NSString* inboxType;
/* Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes. 
 */
@property(nonatomic) NSNumber* _readOnly;
/* Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions. 
 */
@property(nonatomic) NSNumber* virtualInbox;
/* Inbox function if used as a primitive for another system. [optional]
 */
@property(nonatomic) NSString* functionsAs;
/* Local part of email addresses before the @ symbol [optional]
 */
@property(nonatomic) NSString* localPart;
/* Domain name of the email address [optional]
 */
@property(nonatomic) NSString* domain;
/* Region of the inbox [optional]
 */
@property(nonatomic) NSString* accountRegion;

@end
