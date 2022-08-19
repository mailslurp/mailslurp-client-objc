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





@protocol OAIWebhookDeliveryStatusPayload
@end

@interface OAIWebhookDeliveryStatusPayload : OAIObject

/* Idempotent message ID. Store this ID locally or in a database to prevent message duplication. 
 */
@property(nonatomic) NSString* messageId;
/* ID of webhook entity being triggered 
 */
@property(nonatomic) NSString* webhookId;
/* Name of the event type webhook is being triggered for. 
 */
@property(nonatomic) NSString* eventName;
/* Name of the webhook being triggered [optional]
 */
@property(nonatomic) NSString* webhookName;
/* ID of delivery status 
 */
@property(nonatomic) NSString* _id;
/* User ID of event 
 */
@property(nonatomic) NSString* userId;
/* ID of sent email [optional]
 */
@property(nonatomic) NSString* sentId;
/* IP address of the remote Mail Transfer Agent [optional]
 */
@property(nonatomic) NSString* remoteMtaIp;
/* Id of the inbox [optional]
 */
@property(nonatomic) NSString* inboxId;
/* Mail Transfer Agent reporting delivery status [optional]
 */
@property(nonatomic) NSString* reportingMta;
/* Recipients for delivery [optional]
 */
@property(nonatomic) NSArray<NSString*>* recipients;
/* SMTP server response message [optional]
 */
@property(nonatomic) NSString* smtpResponse;
/* SMTP server status [optional]
 */
@property(nonatomic) NSNumber* smtpStatusCode;
/* Time in milliseconds for delivery processing [optional]
 */
@property(nonatomic) NSNumber* processingTimeMillis;
/* Time event was received [optional]
 */
@property(nonatomic) NSDate* received;
/* Email subject [optional]
 */
@property(nonatomic) NSString* subject;

@end