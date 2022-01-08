#import <Foundation/Foundation.h>
#import "OAIInboxDto.h"
#import "OAISimpleSendEmailOptions.h"
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



@interface OAICommonActionsControllerApi: NSObject <OAIApi>

extern NSString* kOAICommonActionsControllerApiErrorDomain;
extern NSInteger kOAICommonActionsControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create new random inbox
/// Returns an Inbox with an `id` and an `emailAddress`
///
/// @param allowTeamAccess  (optional)
/// @param useDomainPool  (optional)
/// @param expiresAt  (optional)
/// @param expiresIn  (optional)
/// @param emailAddress  (optional)
/// @param inboxType  (optional)
/// @param _description  (optional)
/// @param name  (optional)
/// @param tags  (optional)
/// @param favourite  (optional)
/// 
///  code:201 message:"Created"
///
/// @return OAIInboxDto*
-(NSURLSessionTask*) createNewEmailAddressWithAllowTeamAccess: (NSNumber*) allowTeamAccess
    useDomainPool: (NSNumber*) useDomainPool
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    emailAddress: (NSString*) emailAddress
    inboxType: (NSString*) inboxType
    _description: (NSString*) _description
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    favourite: (NSNumber*) favourite
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;


/// Create new random inbox
/// Returns an Inbox with an `id` and an `emailAddress`
///
/// @param allowTeamAccess  (optional)
/// @param useDomainPool  (optional)
/// @param expiresAt  (optional)
/// @param expiresIn  (optional)
/// @param emailAddress  (optional)
/// @param inboxType  (optional)
/// @param _description  (optional)
/// @param name  (optional)
/// @param tags  (optional)
/// @param favourite  (optional)
/// 
///  code:201 message:"Created"
///
/// @return OAIInboxDto*
-(NSURLSessionTask*) createNewEmailAddress1WithAllowTeamAccess: (NSNumber*) allowTeamAccess
    useDomainPool: (NSNumber*) useDomainPool
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    emailAddress: (NSString*) emailAddress
    inboxType: (NSString*) inboxType
    _description: (NSString*) _description
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    favourite: (NSNumber*) favourite
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;


/// Delete inbox email address by inbox id
/// Deletes inbox email address
///
/// @param inboxId 
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteEmailAddressWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler;


/// Delete all emails in an inbox
/// Deletes all emails
///
/// @param inboxId 
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) emptyInboxWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler;


/// Send an email
/// If no senderId or inboxId provided a random email address will be used to send from.
///
/// @param simpleSendEmailOptions 
/// 
///  code:201 message:"Created"
///
/// @return void
-(NSURLSessionTask*) sendEmailSimpleWithSimpleSendEmailOptions: (OAISimpleSendEmailOptions*) simpleSendEmailOptions
    completionHandler: (void (^)(NSError* error)) handler;



@end
