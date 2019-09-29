#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* For documentation see [developer guide](https://www.mailslurp.com/developers). [Create an account](https://app.mailslurp.com) in the MailSlurp Dashboard to [view your API Key](https://app). For all bugs, feature requests, or help please [see support](https://www.mailslurp.com/support/).
*
* OpenAPI spec version: 0.0.1-alpha
* Contact: contact@mailslurp.dev
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIEmailProjection
@end

@interface OAIEmailProjection : OAIObject


@property(nonatomic) NSArray<NSString*>* bcc;

@property(nonatomic) NSArray<NSString*>* cc;

@property(nonatomic) NSDate* createdAt;

@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* subject;

@property(nonatomic) NSArray<NSString*>* to;

@end
