#import <Foundation/Foundation.h>
#import "OAIContactDto.h"
#import "OAIContactProjection.h"
#import "OAICreateContactOptions.h"
#import "OAIPageContactProjection.h"
#import "OAIApi.h"

/**
* MailSlurp API
* ## Introduction  [MailSlurp](https://www.mailslurp.com) is an Email API for developers and QA testers. It let's users: - create emails addresses on demand - receive emails and attachments in code - send templated HTML emails  ## About  This page contains the REST API documentation for MailSlurp. All requests require API Key authentication passed as an `x-api-key` header.  Create an account to [get your free API Key](https://app.mailslurp.com/sign-up/).  ## Resources - 🔑 [Get API Key](https://app.mailslurp.com/sign-up/)                    - 🎓 [Developer Portal](https://www.mailslurp.com/docs/)           - 📦 [Library SDKs](https://www.mailslurp.com/docs/) - ✍️ [Code Examples](https://www.mailslurp.com/examples) - ⚠️ [Report an issue](https://drift.me/mailslurp)  ## Explore  
*
* The version of the OpenAPI document: 6.5.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIContactControllerApi: NSObject <OAIApi>

extern NSString* kOAIContactControllerApiErrorDomain;
extern NSInteger kOAIContactControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create a contact
/// 
///
/// @param createContactOptions createContactOptions
/// 
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIContactDto*
-(NSURLSessionTask*) createContactWithCreateContactOptions: (OAICreateContactOptions*) createContactOptions
    completionHandler: (void (^)(OAIContactDto* output, NSError* error)) handler;


/// Delete contact
/// 
///
/// @param contactId contactId
/// 
///  code:204 message:"No Content",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden"
///
/// @return void
-(NSURLSessionTask*) deleteContactWithContactId: (NSString*) contactId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get all contacts
/// 
///
/// @param page Optional page index in inbox list pagination (optional) (default to @0)
/// @param size Optional page size in inbox list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIPageContactProjection*
-(NSURLSessionTask*) getAllContactsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageContactProjection* output, NSError* error)) handler;


/// Get contact
/// 
///
/// @param contactId contactId
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIContactDto*
-(NSURLSessionTask*) getContactWithContactId: (NSString*) contactId
    completionHandler: (void (^)(OAIContactDto* output, NSError* error)) handler;


/// Get all contacts
/// 
///
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSArray<OAIContactProjection>*
-(NSURLSessionTask*) getContactsWithCompletionHandler: 
    (void (^)(NSArray<OAIContactProjection>* output, NSError* error)) handler;



@end