#import <Foundation/Foundation.h>
#import "OAIInbox.h"
#import "OAISimpleSendEmailOptions.h"
#import "OAIApi.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
*
* The version of the OpenAPI document: 6.5.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAICommonActionsControllerApi: NSObject <OAIApi>

extern NSString* kOAICommonActionsControllerApiErrorDomain;
extern NSInteger kOAICommonActionsControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create new random inbox
/// Returns an Inbox with an `id` and an `emailAddress`
///
/// @param allowTeamAccess allowTeamAccess (optional)
/// @param expiresAt expiresAt (optional)
/// @param expiresIn expiresIn (optional)
/// @param useDomainPool useDomainPool (optional)
/// 
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIInbox*
-(NSURLSessionTask*) createNewEmailAddressWithAllowTeamAccess: (NSNumber*) allowTeamAccess
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    useDomainPool: (NSNumber*) useDomainPool
    completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler;


/// Create new random inbox
/// Returns an Inbox with an `id` and an `emailAddress`
///
/// @param allowTeamAccess allowTeamAccess (optional)
/// @param expiresAt expiresAt (optional)
/// @param expiresIn expiresIn (optional)
/// @param useDomainPool useDomainPool (optional)
/// 
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIInbox*
-(NSURLSessionTask*) createNewEmailAddress1WithAllowTeamAccess: (NSNumber*) allowTeamAccess
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    useDomainPool: (NSNumber*) useDomainPool
    completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler;


/// Delete all emails in an inbox
/// Deletes all emails
///
/// @param inboxId inboxId
/// 
///  code:204 message:"No Content",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden"
///
/// @return void
-(NSURLSessionTask*) emptyInboxWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler;


/// Send an email
/// If no senderId or inboxId provided a random email address will be used to send from.
///
/// @param emailOptions emailOptions
/// 
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return void
-(NSURLSessionTask*) sendEmailSimpleWithEmailOptions: (OAISimpleSendEmailOptions*) emailOptions
    completionHandler: (void (^)(NSError* error)) handler;



@end
