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





@protocol OAIThreadProjection
@end

@interface OAIThreadProjection : OAIObject

/* Name of thread [optional]
 */
@property(nonatomic) NSString* name;
/* ID of email thread 
 */
@property(nonatomic) NSString* _id;
/* Thread subject [optional]
 */
@property(nonatomic) NSString* subject;
/* User ID 
 */
@property(nonatomic) NSString* userId;
/* Inbox ID 
 */
@property(nonatomic) NSString* inboxId;
/* To recipients 
 */
@property(nonatomic) NSArray<NSString*>* to;
/* BCC recipients [optional]
 */
@property(nonatomic) NSArray<NSString*>* bcc;
/* CC recipients [optional]
 */
@property(nonatomic) NSArray<NSString*>* cc;
/* Created at DateTime 
 */
@property(nonatomic) NSDate* createdAt;
/* Updated at DateTime 
 */
@property(nonatomic) NSDate* updatedAt;
/* Alias ID 
 */
@property(nonatomic) NSString* aliasId;

@end
