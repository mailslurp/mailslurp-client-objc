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





@protocol OAIWebhookEmailReadPayload
@end

@interface OAIWebhookEmailReadPayload : OAIObject

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
/* ID of the email that was received. Use this ID for fetching the email with the `EmailController`. [optional]
 */
@property(nonatomic) NSString* emailId;
/* Id of the inbox that received an email [optional]
 */
@property(nonatomic) NSString* inboxId;
/* Is the email read [optional]
 */
@property(nonatomic) NSNumber* emailIsRead;
/* Date time of event creation [optional]
 */
@property(nonatomic) NSDate* createdAt;

@end
