#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
*
* The version of the OpenAPI document: 6.5.2
* Contact: contact@mailslurp.dev
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAISearchInboxesOptions
@end

@interface OAISearchInboxesOptions : OAIObject

/* Optional page index in list pagination [optional]
 */
@property(nonatomic) NSNumber* pageIndex;
/* Optional page size in list pagination [optional]
 */
@property(nonatomic) NSNumber* pageSize;
/* Optional createdAt sort direction ASC or DESC [optional]
 */
@property(nonatomic) NSString* sortDirection;
/* Optionally filter results for favourites only [optional]
 */
@property(nonatomic) NSNumber* favourite;
/* Optionally filter by search words partial matching ID, tags, name, and email address [optional]
 */
@property(nonatomic) NSString* search;
/* Optionally filter by tags. Will return inboxes that include given tags [optional]
 */
@property(nonatomic) NSString* tag;
/* Optional filter by created after given date time [optional]
 */
@property(nonatomic) NSDate* since;
/* Optional filter by created before given date time [optional]
 */
@property(nonatomic) NSDate* before;
/* Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). [optional]
 */
@property(nonatomic) NSString* inboxType;
/* Optional filter by inbox function [optional]
 */
@property(nonatomic) NSString* inboxFunction;
/* Optional domain ID filter [optional]
 */
@property(nonatomic) NSString* domainId;

@end
