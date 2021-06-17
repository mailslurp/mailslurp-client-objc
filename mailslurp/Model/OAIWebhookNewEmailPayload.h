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


#import "OAIAttachmentMetaData.h"
@protocol OAIAttachmentMetaData;
@class OAIAttachmentMetaData;



@protocol OAIWebhookNewEmailPayload
@end

@interface OAIWebhookNewEmailPayload : OAIObject

/* List of attachment meta data objects if attachments present [optional]
 */
@property(nonatomic) NSArray<OAIAttachmentMetaData>* attachmentMetaDatas;
/* List of `BCC` recipients email was addressed to [optional]
 */
@property(nonatomic) NSArray<NSString*>* bcc;
/* List of `CC` recipients email was addressed to [optional]
 */
@property(nonatomic) NSArray<NSString*>* cc;
/* Date time of event creation [optional]
 */
@property(nonatomic) NSDate* createdAt;
/* ID of the email that was received. Use this ID for fetching the email with the `EmailController`. [optional]
 */
@property(nonatomic) NSString* emailId;
/* Name of the event type webhook is being triggered for. [optional]
 */
@property(nonatomic) NSString* eventName;
/* Who the email was sent from [optional]
 */
@property(nonatomic) NSString* from;
/* Id of the inbox that received an email [optional]
 */
@property(nonatomic) NSString* inboxId;
/* Idempotent message ID. Store this ID locally or in a database to prevent message duplication. [optional]
 */
@property(nonatomic) NSString* messageId;
/* The subject line of the email message [optional]
 */
@property(nonatomic) NSString* subject;
/* List of `To` recipients that email was addressed to [optional]
 */
@property(nonatomic) NSArray<NSString*>* to;
/* ID of webhook entity being triggered [optional]
 */
@property(nonatomic) NSString* webhookId;
/* Name of the webhook being triggered [optional]
 */
@property(nonatomic) NSString* webhookName;

@end
