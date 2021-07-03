#import <Foundation/Foundation.h>
#import "OAICreateGroupOptions.h"
#import "OAIGroupContactsDto.h"
#import "OAIGroupDto.h"
#import "OAIGroupProjection.h"
#import "OAIPageContactProjection.h"
#import "OAIPageGroupProjection.h"
#import "OAIUpdateGroupContacts.h"
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



@interface OAIGroupControllerApi: NSObject <OAIApi>

extern NSString* kOAIGroupControllerApiErrorDomain;
extern NSInteger kOAIGroupControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Add contacts to a group
/// 
///
/// @param groupId groupId
/// @param updateGroupContactsOption updateGroupContactsOption
/// 
///  code:200 message:"OK",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIGroupContactsDto*
-(NSURLSessionTask*) addContactsToGroupWithGroupId: (NSString*) groupId
    updateGroupContactsOption: (OAIUpdateGroupContacts*) updateGroupContactsOption
    completionHandler: (void (^)(OAIGroupContactsDto* output, NSError* error)) handler;


/// Create a group
/// 
///
/// @param createGroupOptions createGroupOptions
/// 
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIGroupDto*
-(NSURLSessionTask*) createGroupWithCreateGroupOptions: (OAICreateGroupOptions*) createGroupOptions
    completionHandler: (void (^)(OAIGroupDto* output, NSError* error)) handler;


/// Delete group
/// 
///
/// @param groupId groupId
/// 
///  code:204 message:"No Content",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden"
///
/// @return void
-(NSURLSessionTask*) deleteGroupWithGroupId: (NSString*) groupId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get all Contact Groups in paginated format
/// 
///
/// @param page Optional page index in list pagination (optional) (default to @0)
/// @param size Optional page size in list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIPageGroupProjection*
-(NSURLSessionTask*) getAllGroupsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageGroupProjection* output, NSError* error)) handler;


/// Get group
/// 
///
/// @param groupId groupId
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIGroupDto*
-(NSURLSessionTask*) getGroupWithGroupId: (NSString*) groupId
    completionHandler: (void (^)(OAIGroupDto* output, NSError* error)) handler;


/// Get group and contacts belonging to it
/// 
///
/// @param groupId groupId
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIGroupContactsDto*
-(NSURLSessionTask*) getGroupWithContactsWithGroupId: (NSString*) groupId
    completionHandler: (void (^)(OAIGroupContactsDto* output, NSError* error)) handler;


/// Get group and paginated contacts belonging to it
/// 
///
/// @param groupId groupId
/// @param page Optional page index in group contact pagination (optional) (default to @0)
/// @param size Optional page size in group contact pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIPageContactProjection*
-(NSURLSessionTask*) getGroupWithContactsPaginatedWithGroupId: (NSString*) groupId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageContactProjection* output, NSError* error)) handler;


/// Get all groups
/// 
///
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSArray<OAIGroupProjection>*
-(NSURLSessionTask*) getGroupsWithCompletionHandler: 
    (void (^)(NSArray<OAIGroupProjection>* output, NSError* error)) handler;


/// Remove contacts from a group
/// 
///
/// @param groupId groupId
/// @param updateGroupContactsOption updateGroupContactsOption
/// 
///  code:200 message:"OK",
///  code:204 message:"No Content",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden"
///
/// @return OAIGroupContactsDto*
-(NSURLSessionTask*) removeContactsFromGroupWithGroupId: (NSString*) groupId
    updateGroupContactsOption: (OAIUpdateGroupContacts*) updateGroupContactsOption
    completionHandler: (void (^)(OAIGroupContactsDto* output, NSError* error)) handler;



@end
