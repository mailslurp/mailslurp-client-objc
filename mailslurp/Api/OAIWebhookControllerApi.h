#import <Foundation/Foundation.h>
#import "OAIAbstractWebhookPayload.h"
#import "OAICreateWebhookOptions.h"
#import "OAIJSONSchemaDto.h"
#import "OAIPageWebhookProjection.h"
#import "OAIPageWebhookResult.h"
#import "OAIUnseenErrorCountDto.h"
#import "OAIWebhookDto.h"
#import "OAIWebhookEmailOpenedPayload.h"
#import "OAIWebhookEmailReadPayload.h"
#import "OAIWebhookNewAttachmentPayload.h"
#import "OAIWebhookNewContactPayload.h"
#import "OAIWebhookNewEmailPayload.h"
#import "OAIWebhookRedriveResult.h"
#import "OAIWebhookResultDto.h"
#import "OAIWebhookTestResult.h"
#import "OAIApi.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
*
* The version of the OpenAPI document: 6.5.2
* Contact: contact@mailslurp.dev
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIWebhookControllerApi: NSObject <OAIApi>

extern NSString* kOAIWebhookControllerApiErrorDomain;
extern NSInteger kOAIWebhookControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Attach a WebHook URL to an inbox
/// Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
///
/// @param inboxId 
/// @param createWebhookOptions 
/// 
///  code:201 message:"Created"
///
/// @return OAIWebhookDto*
-(NSURLSessionTask*) createWebhookWithInboxId: (NSString*) inboxId
    createWebhookOptions: (OAICreateWebhookOptions*) createWebhookOptions
    completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler;


/// Delete all webhooks
/// 
///
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteAllWebhooksWithCompletionHandler: 
    (void (^)(NSError* error)) handler;


/// Delete and disable a Webhook for an Inbox
/// 
///
/// @param inboxId 
/// @param webhookId 
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteWebhookWithInboxId: (NSString*) inboxId
    webhookId: (NSString*) webhookId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get results for all webhooks
/// 
///
/// @param page Optional page index in list pagination (optional) (default to @0)
/// @param size Optional page size in list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// @param unseenOnly Filter for unseen exceptions only (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageWebhookResult*
-(NSURLSessionTask*) getAllWebhookResultsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    unseenOnly: (NSNumber*) unseenOnly
    completionHandler: (void (^)(OAIPageWebhookResult* output, NSError* error)) handler;


/// List Webhooks Paginated
/// List webhooks in paginated form. Allows for page index, page size, and sort direction.
///
/// @param page Optional page index in list pagination (optional) (default to @0)
/// @param size Optional page size for paginated result list. (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageWebhookProjection*
-(NSURLSessionTask*) getAllWebhooksWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler;


/// Get paginated webhooks for an Inbox
/// 
///
/// @param inboxId 
/// @param page Optional page index in list pagination (optional) (default to @0)
/// @param size Optional page size in list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageWebhookProjection*
-(NSURLSessionTask*) getInboxWebhooksPaginatedWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler;


/// 
/// Get JSON Schema definition for webhook payload
///
/// @param webhookId 
/// 
///  code:201 message:"Created"
///
/// @return OAIJSONSchemaDto*
-(NSURLSessionTask*) getJsonSchemaForWebhookPayloadWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(OAIJSONSchemaDto* output, NSError* error)) handler;


/// 
/// Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
///
/// @param eventName  (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIAbstractWebhookPayload*
-(NSURLSessionTask*) getTestWebhookPayloadWithEventName: (NSString*) eventName
    completionHandler: (void (^)(OAIAbstractWebhookPayload* output, NSError* error)) handler;


/// 
/// Get webhook test payload for email opened event
///
/// 
///  code:200 message:"OK"
///
/// @return OAIWebhookEmailOpenedPayload*
-(NSURLSessionTask*) getTestWebhookPayloadEmailOpenedWithCompletionHandler: 
    (void (^)(OAIWebhookEmailOpenedPayload* output, NSError* error)) handler;


/// 
/// Get webhook test payload for email opened event
///
/// 
///  code:200 message:"OK"
///
/// @return OAIWebhookEmailReadPayload*
-(NSURLSessionTask*) getTestWebhookPayloadEmailReadWithCompletionHandler: 
    (void (^)(OAIWebhookEmailReadPayload* output, NSError* error)) handler;


/// 
/// Get example payload for webhook
///
/// @param webhookId 
/// 
///  code:201 message:"Created"
///
/// @return OAIAbstractWebhookPayload*
-(NSURLSessionTask*) getTestWebhookPayloadForWebhookWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(OAIAbstractWebhookPayload* output, NSError* error)) handler;


/// Get webhook test payload for new attachment event
/// 
///
/// 
///  code:200 message:"OK"
///
/// @return OAIWebhookNewAttachmentPayload*
-(NSURLSessionTask*) getTestWebhookPayloadNewAttachmentWithCompletionHandler: 
    (void (^)(OAIWebhookNewAttachmentPayload* output, NSError* error)) handler;


/// Get webhook test payload for new contact event
/// 
///
/// 
///  code:200 message:"OK"
///
/// @return OAIWebhookNewContactPayload*
-(NSURLSessionTask*) getTestWebhookPayloadNewContactWithCompletionHandler: 
    (void (^)(OAIWebhookNewContactPayload* output, NSError* error)) handler;


/// Get webhook test payload for new email event
/// 
///
/// 
///  code:200 message:"OK"
///
/// @return OAIWebhookNewEmailPayload*
-(NSURLSessionTask*) getTestWebhookPayloadNewEmailWithCompletionHandler: 
    (void (^)(OAIWebhookNewEmailPayload* output, NSError* error)) handler;


/// Get a webhook for an Inbox
/// 
///
/// @param webhookId 
/// 
///  code:200 message:"OK"
///
/// @return OAIWebhookDto*
-(NSURLSessionTask*) getWebhookWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler;


/// Get a webhook result for a webhook
/// 
///
/// @param webhookResultId Webhook Result ID
/// 
///  code:200 message:"OK"
///
/// @return OAIWebhookResultDto*
-(NSURLSessionTask*) getWebhookResultWithWebhookResultId: (NSString*) webhookResultId
    completionHandler: (void (^)(OAIWebhookResultDto* output, NSError* error)) handler;


/// Get a webhook results for a webhook
/// 
///
/// @param webhookId ID of webhook to get results for
/// @param page Optional page index in list pagination (optional) (default to @0)
/// @param size Optional page size in list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param searchFilter Optional search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// @param unseenOnly Filter for unseen exceptions only (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageWebhookResult*
-(NSURLSessionTask*) getWebhookResultsWithWebhookId: (NSString*) webhookId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    unseenOnly: (NSNumber*) unseenOnly
    completionHandler: (void (^)(OAIPageWebhookResult* output, NSError* error)) handler;


/// Get count of unseen webhook results with error status
/// 
///
/// @param inboxId 
/// 
///  code:200 message:"OK"
///
/// @return OAIUnseenErrorCountDto*
-(NSURLSessionTask*) getWebhookResultsUnseenErrorCountWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIUnseenErrorCountDto* output, NSError* error)) handler;


/// Get all webhooks for an Inbox
/// 
///
/// @param inboxId 
/// 
///  code:200 message:"OK"
///
/// @return NSArray<OAIWebhookDto>*
-(NSURLSessionTask*) getWebhooksWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSArray<OAIWebhookDto>* output, NSError* error)) handler;


/// Get a webhook result and try to resend the original webhook payload
/// Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.
///
/// @param webhookResultId Webhook Result ID
/// 
///  code:200 message:"OK"
///
/// @return OAIWebhookRedriveResult*
-(NSURLSessionTask*) redriveWebhookResultWithWebhookResultId: (NSString*) webhookResultId
    completionHandler: (void (^)(OAIWebhookRedriveResult* output, NSError* error)) handler;


/// Send webhook test data
/// 
///
/// @param webhookId 
/// 
///  code:201 message:"Created"
///
/// @return OAIWebhookTestResult*
-(NSURLSessionTask*) sendTestDataWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(OAIWebhookTestResult* output, NSError* error)) handler;



@end
