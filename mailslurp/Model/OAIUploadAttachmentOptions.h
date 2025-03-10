#import <Foundation/Foundation.h>
#import "OAIObject.h"

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





@protocol OAIUploadAttachmentOptions
@end

@interface OAIUploadAttachmentOptions : OAIObject

/* Optional contentId for file. [optional]
 */
@property(nonatomic) NSString* contentId;
/* Optional contentType for file. For instance `application/pdf` [optional]
 */
@property(nonatomic) NSString* contentType;
/* Optional filename to save upload with. Will be the name that is shown in email clients [optional]
 */
@property(nonatomic) NSString* filename;
/* Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string. For examples of how to do this see https://www.mailslurp.com/guides/base64-file-uploads/ 
 */
@property(nonatomic) NSString* base64Contents;

@end
