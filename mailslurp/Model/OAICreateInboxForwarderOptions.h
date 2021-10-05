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





@protocol OAICreateInboxForwarderOptions
@end

@interface OAICreateInboxForwarderOptions : OAIObject

/* Field to match against to trigger inbox forwarding for inbound email [optional]
 */
@property(nonatomic) NSString* field;
/* Email addresses to forward an email to if it matches the field and match criteria of the forwarder [optional]
 */
@property(nonatomic) NSArray<NSString*>* forwardToRecipients;
/* String or wildcard style match for field specified when evaluating forwarding rules [optional]
 */
@property(nonatomic) NSString* match;

@end
