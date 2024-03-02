#import <Foundation/Foundation.h>
#import "OAIDeliveryStatusDto.h"
#import "OAIEmailPreviewUrls.h"
#import "OAIPageDeliveryStatus.h"
#import "OAIPageSentEmailProjection.h"
#import "OAIPageSentEmailWithQueueProjection.h"
#import "OAIPageTrackingPixelProjection.h"
#import "OAIRawEmailJson.h"
#import "OAISentEmailDto.h"
#import "OAIApi.h"

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



@interface OAISentEmailsControllerApi: NSObject <OAIApi>

extern NSString* kOAISentEmailsControllerApiErrorDomain;
extern NSInteger kOAISentEmailsControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Delete all sent email receipts
/// 
///
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteAllSentEmailsWithCompletionHandler: 
    (void (^)(NSError* error)) handler;


/// Delete sent email receipt
/// 
///
/// @param _id 
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteSentEmailWithId: (NSString*) _id
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Get all sent email tracking pixels in paginated form
///
/// @param page Optional page index in sent email tracking pixel list pagination (optional) (default to @0)
/// @param size Optional page size in sent email tracking pixel list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageTrackingPixelProjection*
-(NSURLSessionTask*) getAllSentTrackingPixelsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler;


/// Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
/// Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint
///
/// @param emailId ID of email
/// 
///  code:200 message:"OK"
///
/// @return void
-(NSURLSessionTask*) getRawSentEmailContentsWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
/// Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response
///
/// @param emailId ID of email
/// 
///  code:200 message:"OK"
///
/// @return OAIRawEmailJson*
-(NSURLSessionTask*) getRawSentEmailJsonWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(OAIRawEmailJson* output, NSError* error)) handler;


/// 
/// Get a sent email delivery status
///
/// @param deliveryId 
/// 
///  code:200 message:"OK"
///
/// @return OAIDeliveryStatusDto*
-(NSURLSessionTask*) getSentDeliveryStatusWithDeliveryId: (NSString*) deliveryId
    completionHandler: (void (^)(OAIDeliveryStatusDto* output, NSError* error)) handler;


/// 
/// Get all sent email delivery statuses
///
/// @param page Optional page index in delivery status list pagination (optional) (default to @0)
/// @param size Optional page size in delivery status list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageDeliveryStatus*
-(NSURLSessionTask*) getSentDeliveryStatusesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageDeliveryStatus* output, NSError* error)) handler;


/// 
/// Get all sent email delivery statuses
///
/// @param sentId ID of the sent email that you want to get the delivery status of. Sent email object is returned when sending an email
/// @param page Optional page index in delivery status list pagination (optional) (default to @0)
/// @param size Optional page size in delivery status list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageDeliveryStatus*
-(NSURLSessionTask*) getSentDeliveryStatusesBySentIdWithSentId: (NSString*) sentId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageDeliveryStatus* output, NSError* error)) handler;


/// Get sent email receipt
/// 
///
/// @param _id 
/// 
///  code:200 message:"OK"
///
/// @return OAISentEmailDto*
-(NSURLSessionTask*) getSentEmailWithId: (NSString*) _id
    completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler;


/// Get sent email HTML content
/// 
///
/// @param _id 
/// 
///  code:200 message:"OK"
///
/// @return NSString*
-(NSURLSessionTask*) getSentEmailHTMLContentWithId: (NSString*) _id
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Get sent email URL for viewing in browser or downloading
/// Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.
///
/// @param _id 
/// 
///  code:200 message:"OK"
///
/// @return OAIEmailPreviewUrls*
-(NSURLSessionTask*) getSentEmailPreviewURLsWithId: (NSString*) _id
    completionHandler: (void (^)(OAIEmailPreviewUrls* output, NSError* error)) handler;


/// 
/// Get all tracking pixels for a sent email in paginated form
///
/// @param _id 
/// @param page Optional page index in sent email tracking pixel list pagination (optional) (default to @0)
/// @param size Optional page size in sent email tracking pixel list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageTrackingPixelProjection*
-(NSURLSessionTask*) getSentEmailTrackingPixelsWithId: (NSString*) _id
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler;


/// Get all sent emails in paginated form
/// 
///
/// @param inboxId Optional inboxId to filter sender of sent emails by (optional)
/// @param page Optional page index in inbox sent email list pagination (optional) (default to @0)
/// @param size Optional page size in inbox sent email list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageSentEmailProjection*
-(NSURLSessionTask*) getSentEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler;


/// Get results of email sent with queues in paginated form
/// 
///
/// @param page Optional page index in inbox sent email list pagination (optional) (default to @0)
/// @param size Optional page size in inbox sent email list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageSentEmailWithQueueProjection*
-(NSURLSessionTask*) getSentEmailsWithQueueResultsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageSentEmailWithQueueProjection* output, NSError* error)) handler;


/// 
/// Get all sent organization emails in paginated form
///
/// @param inboxId Optional inboxId to filter sender of sent emails by (optional)
/// @param page Optional page index in sent email list pagination (optional) (default to @0)
/// @param size Optional page size in sent email list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageSentEmailProjection*
-(NSURLSessionTask*) getSentOrganizationEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler;


/// 
/// Wait for delivery statuses
///
/// @param sentId Optional sent email ID filter (optional)
/// @param inboxId Optional inbox ID filter (optional)
/// @param timeout Optional timeout milliseconds (optional)
/// @param index Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index&#x3D;1 (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIDeliveryStatusDto*
-(NSURLSessionTask*) waitForDeliveryStatusesWithSentId: (NSString*) sentId
    inboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    index: (NSNumber*) index
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIDeliveryStatusDto* output, NSError* error)) handler;



@end
