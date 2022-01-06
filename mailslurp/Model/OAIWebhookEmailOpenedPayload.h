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





@protocol OAIWebhookEmailOpenedPayload
@end

@interface OAIWebhookEmailOpenedPayload : OAIObject

/* Idempotent message ID. Store this ID locally or in a database to prevent message duplication. [optional]
 */
@property(nonatomic) NSString* messageId;
/* ID of webhook entity being triggered [optional]
 */
@property(nonatomic) NSString* webhookId;
/* Name of the event type webhook is being triggered for. [optional]
 */
@property(nonatomic) NSString* eventName;
/* Name of the webhook being triggered [optional]
 */
@property(nonatomic) NSString* webhookName;
/* Id of the inbox that received an email [optional]
 */
@property(nonatomic) NSString* inboxId;
/* ID of the tracking pixel [optional]
 */
@property(nonatomic) NSString* pixelId;
/* ID of sent email [optional]
 */
@property(nonatomic) NSString* sentEmailId;
/* Email address for the recipient of the tracking pixel [optional]
 */
@property(nonatomic) NSString* recipient;
/* Date time of event creation [optional]
 */
@property(nonatomic) NSDate* createdAt;

@end
