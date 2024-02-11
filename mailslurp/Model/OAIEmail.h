#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
*
* The version of the OpenAPI document: 6.5.2
* Contact: contact@mailslurp.dev
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIEmailAnalysis.h"
#import "OAIEmailRecipients.h"
#import "OAISender.h"
@protocol OAIEmailAnalysis;
@class OAIEmailAnalysis;
@protocol OAIEmailRecipients;
@class OAIEmailRecipients;
@protocol OAISender;
@class OAISender;



@protocol OAIEmail
@end

@interface OAIEmail : OAIObject

/* ID of the email entity 
 */
@property(nonatomic) NSString* _id;
/* ID of user that email belongs to 
 */
@property(nonatomic) NSString* userId;
/* ID of the inbox that received the email 
 */
@property(nonatomic) NSString* inboxId;
/* ID of the domain that received the email [optional]
 */
@property(nonatomic) NSString* domainId;
/* List of `To` recipient email addresses that the email was addressed to. See recipients object for names. 
 */
@property(nonatomic) NSArray<NSString*>* to;
/* Who the email was sent from. An email address - see fromName for the sender name. [optional]
 */
@property(nonatomic) NSString* from;

@property(nonatomic) OAISender* sender;

@property(nonatomic) OAIEmailRecipients* recipients;
/* The `replyTo` field on the received email message [optional]
 */
@property(nonatomic) NSString* replyTo;
/* List of `CC` recipients email addresses that the email was addressed to. See recipients object for names. [optional]
 */
@property(nonatomic) NSArray<NSString*>* cc;
/* List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names. [optional]
 */
@property(nonatomic) NSArray<NSString*>* bcc;
/* Collection of SMTP headers attached to email [optional]
 */
@property(nonatomic) NSDictionary<NSString*, NSString*>* headers;
/* Multi-value map of SMTP headers attached to email [optional]
 */
@property(nonatomic) NSDictionary<NSString*, NSArray<NSString*>*>* headersMap;
/* List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. [optional]
 */
@property(nonatomic) NSArray<NSString*>* attachments;
/* The subject line of the email message as specified by SMTP subject header [optional]
 */
@property(nonatomic) NSString* subject;
/* The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests. [optional]
 */
@property(nonatomic) NSString* body;
/* An excerpt of the body of the email message for quick preview. Takes HTML content part if exists falls back to TEXT content part if not [optional]
 */
@property(nonatomic) NSString* bodyExcerpt;
/* An excerpt of the body of the email message for quick preview. Takes TEXT content part if exists [optional]
 */
@property(nonatomic) NSString* textExcerpt;
/* A hash signature of the email message using MD5. Useful for comparing emails without fetching full body. [optional]
 */
@property(nonatomic) NSString* bodyMD5Hash;
/* Is the email body content type HTML? [optional]
 */
@property(nonatomic) NSNumber* isHTML;
/* Detected character set of the email body such as UTF-8 [optional]
 */
@property(nonatomic) NSString* charset;

@property(nonatomic) OAIEmailAnalysis* analysis;
/* When was the email received by MailSlurp 
 */
@property(nonatomic) NSDate* createdAt;
/* When was the email last updated 
 */
@property(nonatomic) NSDate* updatedAt;
/* Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. 
 */
@property(nonatomic) NSNumber* read;
/* Can the email be accessed by organization team members 
 */
@property(nonatomic) NSNumber* teamAccess;
/* Is the email body content type x-amp-html Amp4Email? [optional]
 */
@property(nonatomic) NSNumber* isXAmpHtml;
/* A list of detected multipart mime message body part content types such as text/plain and text/html. Can be used with email bodyPart endpoints to fetch individual body parts. [optional]
 */
@property(nonatomic) NSArray<NSString*>* bodyPartContentTypes;

@property(nonatomic) NSNumber* xampHtml;

@property(nonatomic) NSNumber* html;

@end
