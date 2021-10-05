#import <Foundation/Foundation.h>
#import "OAIPageSentEmailProjection.h"
#import "OAIPageTrackingPixelProjection.h"
#import "OAISentEmailDto.h"
#import "OAIApi.h"

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



@interface OAISentEmailsControllerApi: NSObject <OAIApi>

extern NSString* kOAISentEmailsControllerApiErrorDomain;
extern NSInteger kOAISentEmailsControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get all sent email tracking pixels in paginated form
/// 
///
/// @param before Filter by created at before the given timestamp (optional)
/// @param page Optional page index in sent email tracking pixel list pagination (optional) (default to @0)
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param size Optional page size in sent email tracking pixel list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIPageTrackingPixelProjection*
-(NSURLSessionTask*) getAllSentTrackingPixelsWithBefore: (NSDate*) before
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler;


/// Get sent email receipt
/// 
///
/// @param _id id
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAISentEmailDto*
-(NSURLSessionTask*) getSentEmailWithId: (NSString*) _id
    completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler;


/// Get sent email HTML content
/// 
///
/// @param _id id
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSString*
-(NSURLSessionTask*) getSentEmailHTMLContentWithId: (NSString*) _id
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Get all tracking pixels for a sent email in paginated form
/// 
///
/// @param _id id
/// @param before Filter by created at before the given timestamp (optional)
/// @param page Optional page index in sent email tracking pixel list pagination (optional) (default to @0)
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param size Optional page size in sent email tracking pixel list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIPageTrackingPixelProjection*
-(NSURLSessionTask*) getSentEmailTrackingPixelsWithId: (NSString*) _id
    before: (NSDate*) before
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler;


/// Get all sent emails in paginated form
/// 
///
/// @param before Filter by created at before the given timestamp (optional)
/// @param inboxId Optional inboxId to filter sender of sent emails by (optional)
/// @param page Optional page index in inbox sent email list pagination (optional) (default to @0)
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param size Optional page size in inbox sent email list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIPageSentEmailProjection*
-(NSURLSessionTask*) getSentEmailsWithBefore: (NSDate*) before
    inboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler;


/// Get all sent organization emails in paginated form
/// 
///
/// @param before Filter by created at before the given timestamp (optional)
/// @param inboxId Optional inboxId to filter sender of sent emails by (optional)
/// @param page Optional page index in sent email list pagination (optional) (default to @0)
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param size Optional page size in sent email list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIPageSentEmailProjection*
-(NSURLSessionTask*) getSentOrganizationEmailsWithBefore: (NSDate*) before
    inboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler;



@end
