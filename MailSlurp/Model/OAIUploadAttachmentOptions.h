#import <Foundation/Foundation.h>
#import "OAIObject.h"

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





@protocol OAIUploadAttachmentOptions
@end

@interface OAIUploadAttachmentOptions : OAIObject

/* Base64 encoded string of file contents [optional]
 */
@property(nonatomic) NSString* base64Contents;
/* Optional contentType for file. For instance application/pdf [optional]
 */
@property(nonatomic) NSString* contentType;
/* Optional filename to save upload with [optional]
 */
@property(nonatomic) NSString* filename;

@end