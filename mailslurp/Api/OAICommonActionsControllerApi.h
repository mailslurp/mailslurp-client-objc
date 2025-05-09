#import <Foundation/Foundation.h>
#import "OAIInboxDto.h"
#import "OAISimpleSendEmailOptions.h"
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
/// @param virtualInbox  (optional)
/// @param useShortAddress  (optional)
/// @param domainName  (optional)
/// @param domainId  (optional)
/// @param prefix  (optional)
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
    virtualInbox: (NSNumber*) virtualInbox
    useShortAddress: (NSNumber*) useShortAddress
    domainName: (NSString*) domainName
    domainId: (NSString*) domainId
    prefix: (NSString*) prefix
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
/// @param virtualInbox  (optional)
/// @param useShortAddress  (optional)
/// @param domainName  (optional)
/// @param domainId  (optional)
/// @param prefix  (optional)
/// 
///  code:201 message:"Created"
///
/// @return OAIInboxDto*
-(NSURLSessionTask*) createRandomInboxWithAllowTeamAccess: (NSNumber*) allowTeamAccess
    useDomainPool: (NSNumber*) useDomainPool
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    emailAddress: (NSString*) emailAddress
    inboxType: (NSString*) inboxType
    _description: (NSString*) _description
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    favourite: (NSNumber*) favourite
    virtualInbox: (NSNumber*) virtualInbox
    useShortAddress: (NSNumber*) useShortAddress
    domainName: (NSString*) domainName
    domainId: (NSString*) domainId
    prefix: (NSString*) prefix
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;


/// Delete inbox email address by inbox id
/// Deletes inbox email address
///
/// @param inboxId ID of inbox to delete
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteEmailAddressWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler;


/// Delete all emails in an inbox
/// Deletes all emails
///
/// @param inboxId ID of inbox to empty
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) emptyInboxWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler;


/// Send an email using query parameters
/// If no senderId or inboxId provided a random email address will be used to send from. Ensure your parameters are URL encoded.
///
/// @param to Email address to send to
/// @param senderId ID of inbox to send from. If null an inbox will be created for sending (optional)
/// @param body Body of the email message. Supports HTML (optional)
/// @param subject Subject line of the email (optional)
/// 
///  code:201 message:"Created"
///
/// @return void
-(NSURLSessionTask*) sendEmailQueryWithTo: (NSString*) to
    senderId: (NSString*) senderId
    body: (NSString*) body
    subject: (NSString*) subject
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
