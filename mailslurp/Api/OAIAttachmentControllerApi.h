#import <Foundation/Foundation.h>
#import "OAIAttachmentEntityDto.h"
#import "OAIAttachmentMetaData.h"
#import "OAIDownloadAttachmentDto.h"
#import "OAIInlineObject.h"
#import "OAIPageAttachmentEntity.h"
#import "OAIUploadAttachmentOptions.h"
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



@interface OAIAttachmentControllerApi: NSObject <OAIApi>

extern NSString* kOAIAttachmentControllerApiErrorDomain;
extern NSInteger kOAIAttachmentControllerApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Delete all attachments
/// Delete all attachments
///
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteAllAttachmentsWithCompletionHandler: 
    (void (^)(NSError* error)) handler;


/// Delete an attachment
/// Delete an attachment
///
/// @param attachmentId ID of attachment
/// 
///  code:204 message:"No Content"
///
/// @return void
-(NSURLSessionTask*) deleteAttachmentWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
/// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
///
/// @param attachmentId ID of attachment
/// 
///  code:200 message:"OK"
///
/// @return OAIDownloadAttachmentDto*
-(NSURLSessionTask*) downloadAttachmentAsBase64EncodedWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIDownloadAttachmentDto* output, NSError* error)) handler;


/// Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
/// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
///
/// @param attachmentId ID of attachment
/// 
///  code:0 message:"default response"
///
/// @return NSData*
-(NSURLSessionTask*) downloadAttachmentAsBytesWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Get an attachment entity
/// 
///
/// @param attachmentId ID of attachment
/// 
///  code:200 message:"OK"
///
/// @return OAIAttachmentEntityDto*
-(NSURLSessionTask*) getAttachmentWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIAttachmentEntityDto* output, NSError* error)) handler;


/// Get email attachment metadata information
/// Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
///
/// @param attachmentId ID of attachment
/// 
///  code:200 message:"OK"
///
/// @return OAIAttachmentMetaData*
-(NSURLSessionTask*) getAttachmentInfoWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIAttachmentMetaData* output, NSError* error)) handler;


/// Get email attachments
/// Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.
///
/// @param page Optional page index for list pagination (optional) (default to @0)
/// @param size Optional page size for list pagination (optional) (default to @20)
/// @param sort Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
/// @param fileNameFilter Optional file name and content type search filter (optional)
/// @param since Filter by created at after the given timestamp (optional)
/// @param before Filter by created at before the given timestamp (optional)
/// @param inboxId Optional inboxId to filter attachments by (optional)
/// @param emailId Optional emailId to filter attachments by (optional)
/// @param sentEmailId Optional sentEmailId to filter attachments by (optional)
/// 
///  code:200 message:"OK"
///
/// @return OAIPageAttachmentEntity*
-(NSURLSessionTask*) getAttachmentsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    fileNameFilter: (NSString*) fileNameFilter
    since: (NSDate*) since
    before: (NSDate*) before
    inboxId: (NSString*) inboxId
    emailId: (NSString*) emailId
    sentEmailId: (NSString*) sentEmailId
    completionHandler: (void (^)(OAIPageAttachmentEntity* output, NSError* error)) handler;


/// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
/// 
///
/// @param uploadAttachmentOptions 
/// 
///  code:201 message:"Created"
///
/// @return NSArray<NSString*>*
-(NSURLSessionTask*) uploadAttachmentWithUploadAttachmentOptions: (OAIUploadAttachmentOptions*) uploadAttachmentOptions
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;


/// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
/// 
///
/// @param contentType  (optional)
/// @param contentType2 Optional contentType for file. For instance &#x60;application/pdf&#x60; (optional)
/// @param contentId Optional content ID (CID) to save upload with (optional)
/// @param filename Optional filename to save upload with (optional)
/// @param fileSize Optional byte length to save upload with (optional)
/// @param filename2  (optional)
/// 
///  code:201 message:"Created"
///
/// @return NSArray<NSString*>*
-(NSURLSessionTask*) uploadAttachmentBytesWithContentType: (NSString*) contentType
    contentType2: (NSString*) contentType2
    contentId: (NSString*) contentId
    filename: (NSString*) filename
    fileSize: (NSNumber*) fileSize
    filename2: (NSString*) filename2
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;


/// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
/// 
///
/// @param contentId Optional content ID of attachment (optional)
/// @param contentType Optional content type of attachment (optional)
/// @param filename Optional name of file (optional)
/// @param contentTypeHeader Optional content type header of attachment (optional)
/// @param xFilename Optional filename header of attachment (optional)
/// @param xFilenameRaw Optional raw filename header of attachment that will be converted to punycode (optional)
/// @param xFilesize Optional content size of attachment (optional)
/// @param inlineObject  (optional)
/// 
///  code:201 message:"Created"
///
/// @return NSArray<NSString*>*
-(NSURLSessionTask*) uploadMultipartFormWithContentId: (NSString*) contentId
    contentType: (NSString*) contentType
    filename: (NSString*) filename
    contentTypeHeader: (NSString*) contentTypeHeader
    xFilename: (NSString*) xFilename
    xFilenameRaw: (NSString*) xFilenameRaw
    xFilesize: (NSNumber*) xFilesize
    inlineObject: (OAIInlineObject*) inlineObject
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;



@end
