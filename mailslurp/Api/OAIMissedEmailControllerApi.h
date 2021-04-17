#import <Foundation/Foundation.h>
#import "OAIMissedEmail.h"
#import "OAIPageMissedEmailProjection.h"
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



@interface OAIMissedEmailControllerApi: NSObject <OAIApi>

extern NSString* kOAIMissedEmailControllerApiErrorDomain;
extern NSInteger kOAIMissedEmailControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get all MissedEmails in paginated format
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
/// @return OAIPageMissedEmailProjection*
-(NSURLSessionTask*) getAllMissedEmailsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageMissedEmailProjection* output, NSError* error)) handler;


/// Get MissedEmail
/// 
///
/// @param missedEmailId MissedEmailId
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIMissedEmail*
-(NSURLSessionTask*) getMissedEmailWithMissedEmailId: (NSString*) missedEmailId
    completionHandler: (void (^)(OAIMissedEmail* output, NSError* error)) handler;



@end