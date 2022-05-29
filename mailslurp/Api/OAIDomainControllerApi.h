#import <Foundation/Foundation.h>
#import "OAICreateDomainOptions.h"
#import "OAIDomainDto.h"
#import "OAIDomainPreview.h"
#import "OAIUpdateDomainOptions.h"
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



@interface OAIDomainControllerApi: NSObject <OAIApi>

extern NSString* kOAIDomainControllerApiErrorDomain;
extern NSInteger kOAIDomainControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Add catch all wild card inbox to domain
/// Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated
///
/// @param _id 
/// 
///  code:200 message:"OK"
///
/// @return OAIDomainDto*
-(NSURLSessionTask*) addDomainWildcardCatchAllWithId: (NSString*) _id
    completionHandler: (void (^)(OAIDomainDto* output, NSError* error)) handler;


/// Create Domain
/// Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.
///
/// @param createDomainOptions 
/// 
///  code:201 message:"Created"
///
/// @return OAIDomainDto*
-(NSURLSessionTask*) createDomainWithCreateDomainOptions: (OAICreateDomainOptions*) createDomainOptions
    completionHandler: (void (^)(OAIDomainDto* output, NSError* error)) handler;


/// Delete a domain
/// Delete a domain. This will disable any existing inboxes that use this domain.
///
/// @param _id 
/// 
///  code:204 message:"No Content"
///
/// @return NSArray<NSString*>*
-(NSURLSessionTask*) deleteDomainWithId: (NSString*) _id
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;


/// Get a domain
/// Returns domain verification status and tokens for a given domain
///
/// @param _id 
/// 
///  code:200 message:"OK"
///
/// @return OAIDomainDto*
-(NSURLSessionTask*) getDomainWithId: (NSString*) _id
    completionHandler: (void (^)(OAIDomainDto* output, NSError* error)) handler;


/// Get domains
/// List all custom domains you have created
///
/// 
///  code:200 message:"OK"
///
/// @return NSArray<OAIDomainPreview>*
-(NSURLSessionTask*) getDomainsWithCompletionHandler: 
    (void (^)(NSArray<OAIDomainPreview>* output, NSError* error)) handler;


/// Update a domain
/// Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.
///
/// @param _id 
/// @param updateDomainOptions 
/// 
///  code:200 message:"OK"
///
/// @return OAIDomainDto*
-(NSURLSessionTask*) updateDomainWithId: (NSString*) _id
    updateDomainOptions: (OAIUpdateDomainOptions*) updateDomainOptions
    completionHandler: (void (^)(OAIDomainDto* output, NSError* error)) handler;



@end
