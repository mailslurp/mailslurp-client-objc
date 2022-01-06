#import <Foundation/Foundation.h>
#import "OAICreateTrackingPixelOptions.h"
#import "OAIPageTrackingPixelProjection.h"
#import "OAITrackingPixelDto.h"
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



@interface OAITrackingControllerApi: NSObject <OAIApi>

extern NSString* kOAITrackingControllerApiErrorDomain;
extern NSInteger kOAITrackingControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create tracking pixel
/// Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.
///
/// @param createTrackingPixelOptions 
/// 
///  code:201 message:"Created"
///
/// @return OAITrackingPixelDto*
-(NSURLSessionTask*) createTrackingPixelWithCreateTrackingPixelOptions: (OAICreateTrackingPixelOptions*) createTrackingPixelOptions
    completionHandler: (void (^)(OAITrackingPixelDto* output, NSError* error)) handler;


/// Get tracking pixels
/// List tracking pixels in paginated form
///
/// @param page Optional page index in list pagination (optional) (default to @0)
/// @param size Optional page size in list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageTrackingPixelProjection*
-(NSURLSessionTask*) getAllTrackingPixelsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler;


/// Get pixel
/// 
///
/// @param _id 
/// 
///  code:200 message:"OK"
///
/// @return OAITrackingPixelDto*
-(NSURLSessionTask*) getTrackingPixelWithId: (NSString*) _id
    completionHandler: (void (^)(OAITrackingPixelDto* output, NSError* error)) handler;



@end
