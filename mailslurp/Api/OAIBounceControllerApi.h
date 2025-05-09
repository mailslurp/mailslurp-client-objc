#import <Foundation/Foundation.h>
#import "OAIAccountBounceBlockDto.h"
#import "OAIBouncedEmailDto.h"
#import "OAIBouncedRecipientDto.h"
#import "OAIComplaint.h"
#import "OAIFilterBouncedRecipientsOptions.h"
#import "OAIFilterBouncedRecipientsResult.h"
#import "OAIPageBouncedEmail.h"
#import "OAIPageBouncedRecipients.h"
#import "OAIPageComplaint.h"
#import "OAIPageListUnsubscribeRecipients.h"
#import "OAIPageReputationItems.h"
#import "OAIApi.h"

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



@interface OAIBounceControllerApi: NSObject <OAIApi>

extern NSString* kOAIBounceControllerApiErrorDomain;
extern NSInteger kOAIBounceControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Filter a list of email recipients and remove those who have bounced
/// Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints
///
/// @param filterBouncedRecipientsOptions 
/// 
///  code:200 message:"OK"
///
/// @return OAIFilterBouncedRecipientsResult*
-(NSURLSessionTask*) filterBouncedRecipientWithFilterBouncedRecipientsOptions: (OAIFilterBouncedRecipientsOptions*) filterBouncedRecipientsOptions
    completionHandler: (void (^)(OAIFilterBouncedRecipientsResult* output, NSError* error)) handler;


/// Can account send email
/// Check if account block status prevents sending
///
/// 
///  code:200 message:"OK"
///
/// @return OAIAccountBounceBlockDto*
-(NSURLSessionTask*) getAccountBounceBlockStatusWithCompletionHandler: 
    (void (^)(OAIAccountBounceBlockDto* output, NSError* error)) handler;


/// Get a bounced email.
/// Bounced emails are email you have sent that were rejected by a recipient
///
/// @param _id ID of the bounced email to fetch
/// 
///  code:200 message:"OK"
///
/// @return OAIBouncedEmailDto*
-(NSURLSessionTask*) getBouncedEmailWithId: (NSString*) _id
    completionHandler: (void (^)(OAIBouncedEmailDto* output, NSError* error)) handler;


/// Get paginated list of bounced emails.
/// Bounced emails are email you have sent that were rejected by a recipient
///
/// @param page Optional page index (optional) (default to @0)
/// @param size Optional page size  (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageBouncedEmail*
-(NSURLSessionTask*) getBouncedEmailsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageBouncedEmail* output, NSError* error)) handler;


/// Get a bounced email.
/// Bounced emails are email you have sent that were rejected by a recipient
///
/// @param _id ID of the bounced recipient
/// 
///  code:200 message:"OK"
///
/// @return OAIBouncedRecipientDto*
-(NSURLSessionTask*) getBouncedRecipientWithId: (NSString*) _id
    completionHandler: (void (^)(OAIBouncedRecipientDto* output, NSError* error)) handler;


/// Get paginated list of bounced recipients.
/// Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
///
/// @param page Optional page index  (optional) (default to @0)
/// @param size Optional page size  (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageBouncedRecipients*
-(NSURLSessionTask*) getBouncedRecipientsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageBouncedRecipients* output, NSError* error)) handler;


/// Get complaint
/// Get complaint
///
/// @param _id ID of the complaint
/// 
///  code:200 message:"OK"
///
/// @return OAIComplaint*
-(NSURLSessionTask*) getComplaintWithId: (NSString*) _id
    completionHandler: (void (^)(OAIComplaint* output, NSError* error)) handler;


/// Get paginated list of complaints.
/// SMTP complaints made against your account
///
/// @param page Optional page index  (optional) (default to @0)
/// @param size Optional page size  (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageComplaint*
-(NSURLSessionTask*) getComplaintsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageComplaint* output, NSError* error)) handler;


/// Get paginated list of unsubscribed recipients.
/// Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.
///
/// @param page Optional page index (optional) (default to @0)
/// @param size Optional page size  (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param domainId Filter by domainId (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageListUnsubscribeRecipients*
-(NSURLSessionTask*) getListUnsubscribeRecipientsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    domainId: (NSString*) domainId
    completionHandler: (void (^)(OAIPageListUnsubscribeRecipients* output, NSError* error)) handler;


/// Get paginated list of reputation items.
/// List of complaints and bounces
///
/// @param page Optional page index (optional) (default to @0)
/// @param size Optional page size (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageReputationItems*
-(NSURLSessionTask*) getReputationItemsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageReputationItems* output, NSError* error)) handler;



@end
