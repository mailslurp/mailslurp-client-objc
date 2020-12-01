#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
*
* The version of the OpenAPI document: 6.5.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIEmailAnalysis.h"
@protocol OAIEmailAnalysis;
@class OAIEmailAnalysis;



@protocol OAIEmail
@end

@interface OAIEmail : OAIObject


@property(nonatomic) OAIEmailAnalysis* analysis;
/* List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. [optional]
 */
@property(nonatomic) NSArray<NSString*>* attachments;
/* List of `BCC` recipients email was addressed to [optional]
 */
@property(nonatomic) NSArray<NSString*>* bcc;
/* The body of the email message [optional]
 */
@property(nonatomic) NSString* body;
/* A hash signature of the email message [optional]
 */
@property(nonatomic) NSString* bodyMD5Hash;
/* List of `CC` recipients email was addressed to [optional]
 */
@property(nonatomic) NSArray<NSString*>* cc;
/* Detected character set of the email body such as UTF-8 [optional]
 */
@property(nonatomic) NSString* charset;
/* When was the email received by MailSlurp [optional]
 */
@property(nonatomic) NSDate* createdAt;
/* Who the email was sent from [optional]
 */
@property(nonatomic) NSString* from;

@property(nonatomic) NSDictionary<NSString*, NSString*>* headers;
/* ID of the email [optional]
 */
@property(nonatomic) NSString* _id;
/* ID of the inbox that received the email [optional]
 */
@property(nonatomic) NSString* inboxId;
/* Was HTML sent in the email body [optional]
 */
@property(nonatomic) NSNumber* isHTML;
/* Has the email been viewed ever [optional]
 */
@property(nonatomic) NSNumber* read;
/* The subject line of the email message [optional]
 */
@property(nonatomic) NSString* subject;
/* List of `To` recipients email was addressed to [optional]
 */
@property(nonatomic) NSArray<NSString*>* to;
/* When was the email last updated [optional]
 */
@property(nonatomic) NSDate* updatedAt;
/* ID of user that email belongs [optional]
 */
@property(nonatomic) NSString* userId;

@end