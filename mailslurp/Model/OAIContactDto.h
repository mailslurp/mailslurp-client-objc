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





@protocol OAIContactDto
@end

@interface OAIContactDto : OAIObject


@property(nonatomic) NSString* company;

@property(nonatomic) NSDate* createdAt;

@property(nonatomic) NSArray<NSString*>* emailAddresses;

@property(nonatomic) NSString* firstName;

@property(nonatomic) NSString* groupId;

@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSObject* metaData;

@property(nonatomic) NSNumber* optOut;

@property(nonatomic) NSArray<NSString*>* tags;

@end
