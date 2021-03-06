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





@protocol OAICreateContactOptions
@end

@interface OAICreateContactOptions : OAIObject

/* Set of email addresses belonging to the contact [optional]
 */
@property(nonatomic) NSArray<NSString*>* emailAddresses;

@property(nonatomic) NSString* firstName;
/* Group IDs that contact belongs to [optional]
 */
@property(nonatomic) NSString* groupId;

@property(nonatomic) NSObject* metaData;
/* Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. [optional]
 */
@property(nonatomic) NSNumber* optOut;
/* Tags that can be used to search and group contacts [optional]
 */
@property(nonatomic) NSArray<NSString*>* tags;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSString* company;

@end
