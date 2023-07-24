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





@protocol OAIEmailProjection
@end

@interface OAIEmailProjection : OAIObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* from;

@property(nonatomic) NSString* subject;

@property(nonatomic) NSString* inboxId;

@property(nonatomic) NSArray<NSString*>* attachments;

@property(nonatomic) NSDate* createdAt;

@property(nonatomic) NSArray<NSString*>* to;

@property(nonatomic) NSArray<NSString*>* bcc;

@property(nonatomic) NSArray<NSString*>* cc;

@property(nonatomic) NSNumber* read;

@property(nonatomic) NSString* domainId;

@property(nonatomic) NSString* bodyExcerpt;

@property(nonatomic) NSNumber* teamAccess;

@property(nonatomic) NSString* bodyMD5Hash;

@end
