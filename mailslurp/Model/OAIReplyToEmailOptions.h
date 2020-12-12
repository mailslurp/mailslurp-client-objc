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





@protocol OAIReplyToEmailOptions
@end

@interface OAIReplyToEmailOptions : OAIObject

/* List of uploaded attachments to send with the reply. Optional. [optional]
 */
@property(nonatomic) NSArray<NSString*>* attachments;
/* Body of the reply email you want to send [optional]
 */
@property(nonatomic) NSString* body;
/* The charset that your message should be sent with. Optional. Default is UTF-8 [optional]
 */
@property(nonatomic) NSString* charset;
/* Is the reply HTML [optional]
 */
@property(nonatomic) NSNumber* isHTML;
/* The replyTo header that should be used. Optional [optional]
 */
@property(nonatomic) NSString* replyTo;
/* When to send the email. Typically immediately [optional]
 */
@property(nonatomic) NSString* sendStrategy;
/* Template ID to use instead of body. Will use template variable map to fill defined variable slots. [optional]
 */
@property(nonatomic) NSString* template;
/* Template variables if using a template [optional]
 */
@property(nonatomic) NSObject* templateVariables;

@end