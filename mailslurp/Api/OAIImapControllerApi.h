#import <Foundation/Foundation.h>
#import "OAIImapServerFetchResult.h"
#import "OAIImapServerGetResult.h"
#import "OAIImapServerListOptions.h"
#import "OAIImapServerListResult.h"
#import "OAIImapServerSearchOptions.h"
#import "OAIImapServerSearchResult.h"
#import "OAIImapServerStatusOptions.h"
#import "OAIImapServerStatusResult.h"
#import "OAIImapUpdateFlagsOptions.h"
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



@interface OAIImapControllerApi: NSObject <OAIApi>

extern NSString* kOAIImapControllerApiErrorDomain;
extern NSInteger kOAIImapControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Fetch message in an inbox
/// 
///
/// @param seqNum 
/// @param inboxId Inbox ID to search (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIImapServerFetchResult*
-(NSURLSessionTask*) imapServerFetchWithSeqNum: (NSNumber*) seqNum
    inboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIImapServerFetchResult* output, NSError* error)) handler;


/// Get a message by email ID
/// 
///
/// @param emailId Email ID to get
/// @param inboxId Inbox ID to search (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIImapServerGetResult*
-(NSURLSessionTask*) imapServerGetWithEmailId: (NSString*) emailId
    inboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIImapServerGetResult* output, NSError* error)) handler;


/// List messages in an inbox
/// 
///
/// @param imapServerListOptions 
/// @param inboxId Inbox ID to list (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIImapServerListResult*
-(NSURLSessionTask*) imapServerListWithImapServerListOptions: (OAIImapServerListOptions*) imapServerListOptions
    inboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIImapServerListResult* output, NSError* error)) handler;


/// Search messages in an inbox
/// 
///
/// @param imapServerSearchOptions 
/// @param inboxId Inbox ID to search (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIImapServerSearchResult*
-(NSURLSessionTask*) imapServerSearchWithImapServerSearchOptions: (OAIImapServerSearchOptions*) imapServerSearchOptions
    inboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIImapServerSearchResult* output, NSError* error)) handler;


/// Get status for mailbox
/// 
///
/// @param imapServerStatusOptions 
/// @param inboxId Inbox ID to list (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIImapServerStatusResult*
-(NSURLSessionTask*) imapServerStatusWithImapServerStatusOptions: (OAIImapServerStatusOptions*) imapServerStatusOptions
    inboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIImapServerStatusResult* output, NSError* error)) handler;


/// 
/// Update message flags
///
/// @param imapUpdateFlagsOptions 
/// @param inboxId  (optional)
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) imapServerUpdateFlagsWithImapUpdateFlagsOptions: (OAIImapUpdateFlagsOptions*) imapUpdateFlagsOptions
    inboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler;



@end
