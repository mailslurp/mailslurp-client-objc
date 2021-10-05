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


#import "OAIPageable.h"
#import "OAISentEmailProjection.h"
#import "OAISort.h"
@protocol OAIPageable;
@class OAIPageable;
@protocol OAISentEmailProjection;
@class OAISentEmailProjection;
@protocol OAISort;
@class OAISort;



@protocol OAIPageSentEmailProjection
@end

@interface OAIPageSentEmailProjection : OAIObject

/* Collection of items [optional]
 */
@property(nonatomic) NSArray<OAISentEmailProjection>* content;

@property(nonatomic) NSNumber* empty;

@property(nonatomic) NSNumber* first;

@property(nonatomic) NSNumber* last;
/* Page number starting at 0 [optional]
 */
@property(nonatomic) NSNumber* number;
/* Number of items returned [optional]
 */
@property(nonatomic) NSNumber* numberOfElements;

@property(nonatomic) OAIPageable* pageable;
/* Size of page requested [optional]
 */
@property(nonatomic) NSNumber* size;

@property(nonatomic) OAISort* sort;
/* Total number of items available for querying [optional]
 */
@property(nonatomic) NSNumber* totalElements;
/* Total number of pages available [optional]
 */
@property(nonatomic) NSNumber* totalPages;

@end
