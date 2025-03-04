#import <Foundation/Foundation.h>
#import "OAICreateInboxReplierOptions.h"
#import "OAIInboxReplierDto.h"
#import "OAIPageInboxReplierDto.h"
#import "OAIPageInboxReplierEvents.h"
#import "OAIUpdateInboxReplierOptions.h"
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



@interface OAIInboxReplierControllerApi: NSObject <OAIApi>

extern NSString* kOAIInboxReplierControllerApiErrorDomain;
extern NSInteger kOAIInboxReplierControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create an inbox replier
/// Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving
///
/// @param createInboxReplierOptions 
/// 
///  code:200 message:"OK"
///
/// @return OAIInboxReplierDto*
-(NSURLSessionTask*) createNewInboxReplierWithCreateInboxReplierOptions: (OAICreateInboxReplierOptions*) createInboxReplierOptions
    completionHandler: (void (^)(OAIInboxReplierDto* output, NSError* error)) handler;


/// Delete an inbox replier
/// Delete inbox replier
///
/// @param _id ID of inbox replier
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteInboxReplierWithId: (NSString*) _id
    completionHandler: (void (^)(NSError* error)) handler;


/// Delete inbox repliers
/// Delete inbox repliers. Accepts optional inboxId filter.
///
/// @param inboxId Optional inbox id to attach replier to (optional)
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteInboxRepliersWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get inbox replier event list
/// Get all inbox ruleset events
///
/// @param inboxReplierId ID of inbox replier (optional)
/// @param inboxId ID of inbox (optional)
/// @param emailId ID of email (optional)
/// @param sentId ID of sent (optional)
/// @param page Optional page index in inbox replier event list pagination (optional) (default to @0)
/// @param size Optional page size in inbox replier event list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// 
///  code:200 message:"OK"
///
/// @return OAIPageInboxReplierEvents*
-(NSURLSessionTask*) getAllInboxReplierEventsWithInboxReplierId: (NSString*) inboxReplierId
    inboxId: (NSString*) inboxId
    emailId: (NSString*) emailId
    sentId: (NSString*) sentId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageInboxReplierEvents* output, NSError* error)) handler;


/// Get an inbox replier
/// Get inbox ruleset
///
/// @param _id ID of inbox replier
/// 
///  code:200 message:"OK"
///
/// @return OAIInboxReplierDto*
-(NSURLSessionTask*) getInboxReplierWithId: (NSString*) _id
    completionHandler: (void (^)(OAIInboxReplierDto* output, NSError* error)) handler;


/// Get an inbox replier event list
/// Get inbox ruleset events
///
/// @param _id ID of inbox replier
/// @param page Optional page index in inbox replier event list pagination (optional) (default to @0)
/// @param size Optional page size in inbox replier event list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// 
///  code:200 message:"OK"
///
/// @return OAIPageInboxReplierEvents*
-(NSURLSessionTask*) getInboxReplierEventsWithId: (NSString*) _id
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageInboxReplierEvents* output, NSError* error)) handler;


/// List inbox repliers
/// List all repliers attached to an inbox
///
/// @param inboxId Optional inbox id to get repliers from (optional)
/// @param page Optional page index in inbox replier list pagination (optional) (default to @0)
/// @param size Optional page size in inbox replier list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageInboxReplierDto*
-(NSURLSessionTask*) getInboxRepliersWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageInboxReplierDto* output, NSError* error)) handler;


/// Update an inbox replier
/// Update inbox ruleset
///
/// @param _id ID of inbox replier
/// @param updateInboxReplierOptions 
/// 
///  code:200 message:"OK"
///
/// @return OAIInboxReplierDto*
-(NSURLSessionTask*) updateInboxReplierWithId: (NSString*) _id
    updateInboxReplierOptions: (OAIUpdateInboxReplierOptions*) updateInboxReplierOptions
    completionHandler: (void (^)(OAIInboxReplierDto* output, NSError* error)) handler;



@end
