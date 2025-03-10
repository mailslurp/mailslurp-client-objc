#import <Foundation/Foundation.h>
#import "OAICreatePortalOptions.h"
#import "OAICreatePortalUserOptions.h"
#import "OAIGuestPortalDto.h"
#import "OAIGuestPortalUserCreateDto.h"
#import "OAIGuestPortalUserDto.h"
#import "OAIPageGuestPortalUsers.h"
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



@interface OAIGuestPortalControllerApi: NSObject <OAIApi>

extern NSString* kOAIGuestPortalControllerApiErrorDomain;
extern NSInteger kOAIGuestPortalControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create a portal page for your customers or clients to log into email accounts and view emails.
/// Create a guest login page for customers or clients to access assigned email addresses
///
/// @param createPortalOptions 
/// 
///  code:200 message:"OK"
///
/// @return OAIGuestPortalDto*
-(NSURLSessionTask*) createGuestPortalWithCreatePortalOptions: (OAICreatePortalOptions*) createPortalOptions
    completionHandler: (void (^)(OAIGuestPortalDto* output, NSError* error)) handler;


/// Create a portal guest user
/// Add customer to portal
///
/// @param portalId 
/// @param createPortalUserOptions 
/// 
///  code:200 message:"OK"
///
/// @return OAIGuestPortalUserCreateDto*
-(NSURLSessionTask*) createGuestPortalUserWithPortalId: (NSString*) portalId
    createPortalUserOptions: (OAICreatePortalUserOptions*) createPortalUserOptions
    completionHandler: (void (^)(OAIGuestPortalUserCreateDto* output, NSError* error)) handler;


/// Get all guest users for portal
/// Get all customers for a portal
///
/// @param portalId Optional portal ID (optional)
/// @param search Optional search term (optional)
/// @param page Optional page index in list pagination (optional) (default to @0)
/// @param size Optional page size in list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageGuestPortalUsers*
-(NSURLSessionTask*) getAllGuestPortalUsersWithPortalId: (NSString*) portalId
    search: (NSString*) search
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageGuestPortalUsers* output, NSError* error)) handler;


/// Get a client email portal
/// Fetch a customer guest portal
///
/// @param portalId 
/// 
///  code:200 message:"OK"
///
/// @return OAIGuestPortalDto*
-(NSURLSessionTask*) getGuestPortalWithPortalId: (NSString*) portalId
    completionHandler: (void (^)(OAIGuestPortalDto* output, NSError* error)) handler;


/// Get guest user for portal
/// Get customer for portal
///
/// @param portalId 
/// @param guestId 
/// 
///  code:200 message:"OK"
///
/// @return OAIGuestPortalUserDto*
-(NSURLSessionTask*) getGuestPortalUserWithPortalId: (NSString*) portalId
    guestId: (NSString*) guestId
    completionHandler: (void (^)(OAIGuestPortalUserDto* output, NSError* error)) handler;


/// Get guest user
/// Get customer by ID
///
/// @param guestId 
/// 
///  code:200 message:"OK"
///
/// @return OAIGuestPortalUserDto*
-(NSURLSessionTask*) getGuestPortalUserByIdWithGuestId: (NSString*) guestId
    completionHandler: (void (^)(OAIGuestPortalUserDto* output, NSError* error)) handler;


/// Get all guest users for portal
/// Get customers for a portal
///
/// @param portalId 
/// @param search Optional search term (optional)
/// @param page Optional page index in list pagination (optional) (default to @0)
/// @param size Optional page size in list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageGuestPortalUsers*
-(NSURLSessionTask*) getGuestPortalUsersWithPortalId: (NSString*) portalId
    search: (NSString*) search
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageGuestPortalUsers* output, NSError* error)) handler;


/// Get guest portals
/// Get portals
///
/// 
///  code:200 message:"OK"
///
/// @return NSArray<OAIGuestPortalDto>*
-(NSURLSessionTask*) getGuestPortalsWithCompletionHandler: 
    (void (^)(NSArray<OAIGuestPortalDto>* output, NSError* error)) handler;



@end
