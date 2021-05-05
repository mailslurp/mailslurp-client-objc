#import <Foundation/Foundation.h>
#import "OAIAttachmentMetaData.h"
#import "OAIDownloadAttachmentDto.h"
#import "OAIUploadAttachmentOptions.h"
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



@interface OAIAttachmentControllerApi: NSObject <OAIApi>

extern NSString* kOAIAttachmentControllerApiErrorDomain;
extern NSInteger kOAIAttachmentControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
/// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
///
/// @param attachmentId ID of attachment
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIDownloadAttachmentDto*
-(NSURLSessionTask*) downloadAttachmentAsBase64EncodedWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIDownloadAttachmentDto* output, NSError* error)) handler;


/// Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
/// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
///
/// @param attachmentId ID of attachment
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSData*
-(NSURLSessionTask*) downloadAttachmentAsBytesWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Get email attachment metadata information
/// Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
///
/// @param attachmentId ID of attachment
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIAttachmentMetaData*
-(NSURLSessionTask*) getAttachmentInfoWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIAttachmentMetaData* output, NSError* error)) handler;


/// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
/// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
///
/// @param uploadOptions uploadOptions
/// 
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSArray<NSString*>*
-(NSURLSessionTask*) uploadAttachmentWithUploadOptions: (OAIUploadAttachmentOptions*) uploadOptions
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;


/// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
/// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
///
/// @param string Optional contentType for file. For instance &#x60;application/pdf&#x60; (optional)
/// @param filename Optional filename to save upload with (optional)
/// @param byteArray Byte array request body (optional)
/// 
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSArray<NSString*>*
-(NSURLSessionTask*) uploadAttachmentBytesWithString: (NSString*) string
    filename: (NSString*) filename
    byteArray: (NSData*) byteArray
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;


/// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
/// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
///
/// @param file file
/// @param contentType Optional content type of attachment (optional)
/// @param filename Optional name of file (optional)
/// @param xFilename Optional content type header of attachment (optional)
/// 
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSArray<NSString*>*
-(NSURLSessionTask*) uploadMultipartFormWithFile: (NSURL*) file
    contentType: (NSString*) contentType
    filename: (NSString*) filename
    xFilename: (NSString*) xFilename
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;



@end
