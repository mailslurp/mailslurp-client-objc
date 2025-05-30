# OAIEmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyImapFlagOperation**](OAIEmailControllerApi#applyimapflagoperation) | **POST** /emails/{emailId}/imap-flag-operation | Set IMAP flags associated with a message. Only supports &#39;\\Seen&#39; flag.
[**canSend**](OAIEmailControllerApi#cansend) | **POST** /emails/can-send | Check if email can be sent and options are valid.
[**checkEmailBody**](OAIEmailControllerApi#checkemailbody) | **POST** /emails/{emailId}/check-email-body | Detect broken links, spelling, and images in email content
[**checkEmailBodyFeatureSupport**](OAIEmailControllerApi#checkemailbodyfeaturesupport) | **POST** /emails/{emailId}/check-email-body-feature-support | Show which mail clients support the HTML and CSS features used in an email body.
[**checkEmailClientSupport**](OAIEmailControllerApi#checkemailclientsupport) | **POST** /emails/check-email-client-support | Show which email programs and devices support the features used in an email body.
[**deleteAllEmails**](OAIEmailControllerApi#deleteallemails) | **DELETE** /emails | Delete all emails in all inboxes.
[**deleteEmail**](OAIEmailControllerApi#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
[**downloadAttachment**](OAIEmailControllerApi#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as &#x60;octet-stream&#x60; with content type header. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints and convert the base 64 encoded content to a file or string.
[**downloadAttachmentBase64**](OAIEmailControllerApi#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the &#x60;base64FileContents&#x60; as a &#x60;utf-8&#x60; encoded string or array of bytes depending on the &#x60;contentType&#x60;.
[**downloadBody**](OAIEmailControllerApi#downloadbody) | **GET** /emails/{emailId}/body | Get email body as string. Returned as &#x60;plain/text&#x60; with content type header.
[**downloadBodyBytes**](OAIEmailControllerApi#downloadbodybytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as &#x60;octet-stream&#x60; with content type header.
[**forwardEmail**](OAIEmailControllerApi#forwardemail) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**getAttachmentMetaData**](OAIEmailControllerApi#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the &#x60;contentType&#x60; and &#x60;contentLength&#x60; of an attachment. To get the individual attachments  use the &#x60;downloadAttachment&#x60; methods.
[**getEmail**](OAIEmailControllerApi#getemail) | **GET** /emails/{emailId} | Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[**getEmailAttachments**](OAIEmailControllerApi#getemailattachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata. Metadata includes name and size of attachments.
[**getEmailContentMatch**](OAIEmailControllerApi#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**getEmailContentPart**](OAIEmailControllerApi#getemailcontentpart) | **GET** /emails/{emailId}/contentPart | Get email content part by content type
[**getEmailContentPartContent**](OAIEmailControllerApi#getemailcontentpartcontent) | **GET** /emails/{emailId}/contentPart/raw | Get email content part by content type raw response
[**getEmailCount**](OAIEmailControllerApi#getemailcount) | **GET** /emails/emails/count | Get email count
[**getEmailHTML**](OAIEmailControllerApi#getemailhtml) | **GET** /emails/{emailId}/html | Get email content as HTML. For displaying emails in browser context.
[**getEmailHTMLJson**](OAIEmailControllerApi#getemailhtmljson) | **GET** /emails/{emailId}/html/json | Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content
[**getEmailHTMLQuery**](OAIEmailControllerApi#getemailhtmlquery) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailLinks**](OAIEmailControllerApi#getemaillinks) | **GET** /emails/{emailId}/links | Parse and return list of links found in an email (only works for HTML content)
[**getEmailPreviewURLs**](OAIEmailControllerApi#getemailpreviewurls) | **GET** /emails/{emailId}/urls | Get email URLs for viewing in browser or downloading
[**getEmailScreenshotAsBase64**](OAIEmailControllerApi#getemailscreenshotasbase64) | **POST** /emails/{emailId}/screenshot/base64 | Take a screenshot of an email in a browser and return base64 encoded string
[**getEmailScreenshotAsBinary**](OAIEmailControllerApi#getemailscreenshotasbinary) | **POST** /emails/{emailId}/screenshot/binary | Take a screenshot of an email in a browser
[**getEmailSummary**](OAIEmailControllerApi#getemailsummary) | **GET** /emails/{emailId}/summary | Get email data including headers but not body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[**getEmailTextLines**](OAIEmailControllerApi#getemailtextlines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailThread**](OAIEmailControllerApi#getemailthread) | **GET** /emails/threads/{threadId} | Return email thread information. Use items endpoints to get messages for thread.
[**getEmailThreadItems**](OAIEmailControllerApi#getemailthreaditems) | **GET** /emails/threads/{threadId}/items | Return email thread items.
[**getEmailThreads**](OAIEmailControllerApi#getemailthreads) | **GET** /emails/threads | Return email threads in paginated form
[**getEmailsOffsetPaginated**](OAIEmailControllerApi#getemailsoffsetpaginated) | **GET** /emails/offset-paginated | Get all emails in all inboxes in paginated form. Email API list all.
[**getEmailsPaginated**](OAIEmailControllerApi#getemailspaginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**getGravatarUrlForEmailAddress**](OAIEmailControllerApi#getgravatarurlforemailaddress) | **GET** /emails/gravatarFor | 
[**getLatestEmail**](OAIEmailControllerApi#getlatestemail) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**getLatestEmailInInbox1**](OAIEmailControllerApi#getlatestemailininbox1) | **GET** /emails/latestIn | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**getOrganizationEmailsPaginated**](OAIEmailControllerApi#getorganizationemailspaginated) | **GET** /emails/organization | Get all organization emails. List team or shared test email accounts
[**getRawEmailContents**](OAIEmailControllerApi#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**getRawEmailJson**](OAIEmailControllerApi#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**getUnreadEmailCount**](OAIEmailControllerApi#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
[**markAllAsRead**](OAIEmailControllerApi#markallasread) | **PATCH** /emails/read | Mark all emails as read or unread
[**markAsRead**](OAIEmailControllerApi#markasread) | **PATCH** /emails/{emailId}/read | Mark an email as read or unread
[**replyToEmail**](OAIEmailControllerApi#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
[**searchEmails**](OAIEmailControllerApi#searchemails) | **POST** /emails/search | Get all emails by search criteria. Return in paginated form.
[**sendEmailSourceOptional**](OAIEmailControllerApi#sendemailsourceoptional) | **POST** /emails | Send email
[**setEmailFavourited**](OAIEmailControllerApi#setemailfavourited) | **PUT** /emails/{emailId}/favourite | Set email favourited state
[**validateEmail**](OAIEmailControllerApi#validateemail) | **POST** /emails/{emailId}/validate | Validate email HTML contents


# **applyImapFlagOperation**
```objc
-(NSURLSessionTask*) applyImapFlagOperationWithEmailId: (NSString*) emailId
    imapFlagOperationOptions: (OAIImapFlagOperationOptions*) imapFlagOperationOptions
        completionHandler: (void (^)(OAIEmailPreview* output, NSError* error)) handler;
```

Set IMAP flags associated with a message. Only supports '\\Seen' flag.

Apply RFC3501 section-2.3.2 IMAP flag operations on an email

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
OAIImapFlagOperationOptions* imapFlagOperationOptions = [[OAIImapFlagOperationOptions alloc] init]; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Set IMAP flags associated with a message. Only supports '\\Seen' flag.
[apiInstance applyImapFlagOperationWithEmailId:emailId
              imapFlagOperationOptions:imapFlagOperationOptions
          completionHandler: ^(OAIEmailPreview* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->applyImapFlagOperation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **imapFlagOperationOptions** | [**OAIImapFlagOperationOptions***](OAIImapFlagOperationOptions)|  | 

### Return type

[**OAIEmailPreview***](OAIEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **canSend**
```objc
-(NSURLSessionTask*) canSendWithInboxId: (NSString*) inboxId
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
        completionHandler: (void (^)(OAICanSendEmailResults* output, NSError* error)) handler;
```

Check if email can be sent and options are valid.

Can user send email to given recipient or is the recipient blocked

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // ID of the inbox you want to send the email from
OAISendEmailOptions* sendEmailOptions = [[OAISendEmailOptions alloc] init]; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Check if email can be sent and options are valid.
[apiInstance canSendWithInboxId:inboxId
              sendEmailOptions:sendEmailOptions
          completionHandler: ^(OAICanSendEmailResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->canSend: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| ID of the inbox you want to send the email from | 
 **sendEmailOptions** | [**OAISendEmailOptions***](OAISendEmailOptions)|  | 

### Return type

[**OAICanSendEmailResults***](OAICanSendEmailResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **checkEmailBody**
```objc
-(NSURLSessionTask*) checkEmailBodyWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(OAICheckEmailBodyResults* output, NSError* error)) handler;
```

Detect broken links, spelling, and images in email content

Find dead links, broken images, and spelling mistakes in email body. Will call included links via HTTP so do not invoke if your links are sensitive or stateful. Any resource that returns a 4xx or 5xx response or is not reachable via HEAD or GET HTTP operations will be considered unhealthy.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Detect broken links, spelling, and images in email content
[apiInstance checkEmailBodyWithEmailId:emailId
          completionHandler: ^(OAICheckEmailBodyResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->checkEmailBody: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 

### Return type

[**OAICheckEmailBodyResults***](OAICheckEmailBodyResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **checkEmailBodyFeatureSupport**
```objc
-(NSURLSessionTask*) checkEmailBodyFeatureSupportWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(OAICheckEmailBodyFeatureSupportResults* output, NSError* error)) handler;
```

Show which mail clients support the HTML and CSS features used in an email body.

Detect HTML and CSS features inside an email body and return a report of email client support across different platforms and versions.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Show which mail clients support the HTML and CSS features used in an email body.
[apiInstance checkEmailBodyFeatureSupportWithEmailId:emailId
          completionHandler: ^(OAICheckEmailBodyFeatureSupportResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->checkEmailBodyFeatureSupport: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 

### Return type

[**OAICheckEmailBodyFeatureSupportResults***](OAICheckEmailBodyFeatureSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **checkEmailClientSupport**
```objc
-(NSURLSessionTask*) checkEmailClientSupportWithCheckEmailClientSupportOptions: (OAICheckEmailClientSupportOptions*) checkEmailClientSupportOptions
        completionHandler: (void (^)(OAICheckEmailClientSupportResults* output, NSError* error)) handler;
```

Show which email programs and devices support the features used in an email body.

Evaluate the features used in an email body and return a report of email client support across different platforms and versions.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICheckEmailClientSupportOptions* checkEmailClientSupportOptions = [[OAICheckEmailClientSupportOptions alloc] init]; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Show which email programs and devices support the features used in an email body.
[apiInstance checkEmailClientSupportWithCheckEmailClientSupportOptions:checkEmailClientSupportOptions
          completionHandler: ^(OAICheckEmailClientSupportResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->checkEmailClientSupport: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkEmailClientSupportOptions** | [**OAICheckEmailClientSupportOptions***](OAICheckEmailClientSupportOptions)|  | 

### Return type

[**OAICheckEmailClientSupportResults***](OAICheckEmailClientSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllEmails**
```objc
-(NSURLSessionTask*) deleteAllEmailsWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all emails in all inboxes.

Deletes all emails in your account. Be careful as emails cannot be recovered

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Delete all emails in all inboxes.
[apiInstance deleteAllEmailsWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->deleteAllEmails: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmail**
```objc
-(NSURLSessionTask*) deleteEmailWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an email

Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email to delete

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Delete an email
[apiInstance deleteEmailWithEmailId:emailId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->deleteEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email to delete | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachment**
```objc
-(NSURLSessionTask*) downloadAttachmentWithEmailId: (NSString*) emailId
    attachmentId: (NSString*) attachmentId
    apiKey: (NSString*) apiKey
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email
NSString* attachmentId = @"attachmentId_example"; // ID of attachment
NSString* apiKey = @"apiKey_example"; // Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
[apiInstance downloadAttachmentWithEmailId:emailId
              attachmentId:attachmentId
              apiKey:apiKey
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->downloadAttachment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 
 **attachmentId** | **NSString***| ID of attachment | 
 **apiKey** | **NSString***| Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. | [optional] 

### Return type

**NSData***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentBase64**
```objc
-(NSURLSessionTask*) downloadAttachmentBase64WithEmailId: (NSString*) emailId
    attachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(OAIDownloadAttachmentDto* output, NSError* error)) handler;
```

Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email
NSString* attachmentId = @"attachmentId_example"; // ID of attachment

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
[apiInstance downloadAttachmentBase64WithEmailId:emailId
              attachmentId:attachmentId
          completionHandler: ^(OAIDownloadAttachmentDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->downloadAttachmentBase64: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 
 **attachmentId** | **NSString***| ID of attachment | 

### Return type

[**OAIDownloadAttachmentDto***](OAIDownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadBody**
```objc
-(NSURLSessionTask*) downloadBodyWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get email body as string. Returned as `plain/text` with content type header.

Returns the specified email body for a given email as a string

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email body as string. Returned as `plain/text` with content type header.
[apiInstance downloadBodyWithEmailId:emailId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->downloadBody: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadBodyBytes**
```objc
-(NSURLSessionTask*) downloadBodyBytesWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Get email body in bytes. Returned as `octet-stream` with content type header.

Returns the specified email body for a given email as a stream / array of bytes.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email body in bytes. Returned as `octet-stream` with content type header.
[apiInstance downloadBodyBytesWithEmailId:emailId
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->downloadBodyBytes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 

### Return type

**NSData***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **forwardEmail**
```objc
-(NSURLSessionTask*) forwardEmailWithEmailId: (NSString*) emailId
    forwardEmailOptions: (OAIForwardEmailOptions*) forwardEmailOptions
        completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler;
```

Forward email to recipients

Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email
OAIForwardEmailOptions* forwardEmailOptions = [[OAIForwardEmailOptions alloc] init]; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Forward email to recipients
[apiInstance forwardEmailWithEmailId:emailId
              forwardEmailOptions:forwardEmailOptions
          completionHandler: ^(OAISentEmailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->forwardEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 
 **forwardEmailOptions** | [**OAIForwardEmailOptions***](OAIForwardEmailOptions)|  | 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachmentMetaData**
```objc
-(NSURLSessionTask*) getAttachmentMetaDataWithEmailId: (NSString*) emailId
    attachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(OAIAttachmentMetaData* output, NSError* error)) handler;
```

Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.

Returns the metadata such as name and content-type for a given attachment and email.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email
NSString* attachmentId = @"attachmentId_example"; // ID of attachment

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
[apiInstance getAttachmentMetaDataWithEmailId:emailId
              attachmentId:attachmentId
          completionHandler: ^(OAIAttachmentMetaData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getAttachmentMetaData: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 
 **attachmentId** | **NSString***| ID of attachment | 

### Return type

[**OAIAttachmentMetaData***](OAIAttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmail**
```objc
-(NSURLSessionTask*) getEmailWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler;
```

Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.

Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[apiInstance getEmailWithEmailId:emailId
          completionHandler: ^(OAIEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 

### Return type

[**OAIEmail***](OAIEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailAttachments**
```objc
-(NSURLSessionTask*) getEmailAttachmentsWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(NSArray<OAIAttachmentMetaData>* output, NSError* error)) handler;
```

Get all email attachment metadata. Metadata includes name and size of attachments.

Returns an array of attachment metadata such as name and content-type for a given email if present.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get all email attachment metadata. Metadata includes name and size of attachments.
[apiInstance getEmailAttachmentsWithEmailId:emailId
          completionHandler: ^(NSArray<OAIAttachmentMetaData>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailAttachments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 

### Return type

[**NSArray<OAIAttachmentMetaData>***](OAIAttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentMatch**
```objc
-(NSURLSessionTask*) getEmailContentMatchWithEmailId: (NSString*) emailId
    contentMatchOptions: (OAIContentMatchOptions*) contentMatchOptions
        completionHandler: (void (^)(OAIEmailContentMatchResult* output, NSError* error)) handler;
```

Get email content regex pattern match results. Runs regex against email body and returns match groups.

Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email to match against
OAIContentMatchOptions* contentMatchOptions = [[OAIContentMatchOptions alloc] init]; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email content regex pattern match results. Runs regex against email body and returns match groups.
[apiInstance getEmailContentMatchWithEmailId:emailId
              contentMatchOptions:contentMatchOptions
          completionHandler: ^(OAIEmailContentMatchResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailContentMatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email to match against | 
 **contentMatchOptions** | [**OAIContentMatchOptions***](OAIContentMatchOptions)|  | 

### Return type

[**OAIEmailContentMatchResult***](OAIEmailContentMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentPart**
```objc
-(NSURLSessionTask*) getEmailContentPartWithEmailId: (NSString*) emailId
    contentType: (NSString*) contentType
    strict: (NSNumber*) strict
    index: (NSNumber*) index
        completionHandler: (void (^)(OAIEmailContentPartResult* output, NSError* error)) handler;
```

Get email content part by content type

Get email body content parts from a multipart email message for a given content type

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email to match against
NSString* contentType = @"contentType_example"; // Content type
NSNumber* strict = @56; // Strict content type match (optional)
NSNumber* index = @56; // Index of content type part if multiple (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email content part by content type
[apiInstance getEmailContentPartWithEmailId:emailId
              contentType:contentType
              strict:strict
              index:index
          completionHandler: ^(OAIEmailContentPartResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailContentPart: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email to match against | 
 **contentType** | **NSString***| Content type | 
 **strict** | **NSNumber***| Strict content type match | [optional] 
 **index** | **NSNumber***| Index of content type part if multiple | [optional] 

### Return type

[**OAIEmailContentPartResult***](OAIEmailContentPartResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentPartContent**
```objc
-(NSURLSessionTask*) getEmailContentPartContentWithEmailId: (NSString*) emailId
    contentType: (NSString*) contentType
    strict: (NSNumber*) strict
    index: (NSNumber*) index
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get email content part by content type raw response

Get email body content parts from a multipart email message for a given content type and return as response

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email to match against
NSString* contentType = @"contentType_example"; // Content type
NSNumber* strict = @56; // Strict content type match (optional)
NSNumber* index = @56; // Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message. (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email content part by content type raw response
[apiInstance getEmailContentPartContentWithEmailId:emailId
              contentType:contentType
              strict:strict
              index:index
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailContentPartContent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email to match against | 
 **contentType** | **NSString***| Content type | 
 **strict** | **NSNumber***| Strict content type match | [optional] 
 **index** | **NSNumber***| Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message. | [optional] 

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailCount**
```objc
-(NSURLSessionTask*) getEmailCountWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAICountDto* output, NSError* error)) handler;
```

Get email count

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; //  (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email count
[apiInstance getEmailCountWithInboxId:inboxId
          completionHandler: ^(OAICountDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | [optional] 

### Return type

[**OAICountDto***](OAICountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTML**
```objc
-(NSURLSessionTask*) getEmailHTMLWithEmailId: (NSString*) emailId
    replaceCidImages: (NSNumber*) replaceCidImages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get email content as HTML. For displaying emails in browser context.

Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`. Returns content-type `text/html;charset=utf-8` so you must call expecting that content response not JSON. For JSON response see the `getEmailHTMLJson` method.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
NSNumber* replaceCidImages = @(NO); //  (optional) (default to @(NO))

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email content as HTML. For displaying emails in browser context.
[apiInstance getEmailHTMLWithEmailId:emailId
              replaceCidImages:replaceCidImages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailHTML: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **replaceCidImages** | **NSNumber***|  | [optional] [default to @(NO)]

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=utf-8, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTMLJson**
```objc
-(NSURLSessionTask*) getEmailHTMLJsonWithEmailId: (NSString*) emailId
    replaceCidImages: (NSNumber*) replaceCidImages
        completionHandler: (void (^)(OAIEmailHtmlDto* output, NSError* error)) handler;
```

Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content

Retrieve email content as HTML response. Decodes quoted-printable entities and converts charset to UTF-8. Returns content-type `application/json;charset=utf-8` so you must call expecting that content response not JSON.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
NSNumber* replaceCidImages = @(NO); //  (optional) (default to @(NO))

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content
[apiInstance getEmailHTMLJsonWithEmailId:emailId
              replaceCidImages:replaceCidImages
          completionHandler: ^(OAIEmailHtmlDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailHTMLJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **replaceCidImages** | **NSNumber***|  | [optional] [default to @(NO)]

### Return type

[**OAIEmailHtmlDto***](OAIEmailHtmlDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTMLQuery**
```objc
-(NSURLSessionTask*) getEmailHTMLQueryWithEmailId: (NSString*) emailId
    htmlSelector: (NSString*) htmlSelector
        completionHandler: (void (^)(OAIEmailTextLinesResult* output, NSError* error)) handler;
```

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email to perform HTML query on
NSString* htmlSelector = @"htmlSelector_example"; // HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Parse and return text from an email, stripping HTML and decoding encoded characters
[apiInstance getEmailHTMLQueryWithEmailId:emailId
              htmlSelector:htmlSelector
          completionHandler: ^(OAIEmailTextLinesResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailHTMLQuery: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email to perform HTML query on | 
 **htmlSelector** | **NSString***| HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | 

### Return type

[**OAIEmailTextLinesResult***](OAIEmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailLinks**
```objc
-(NSURLSessionTask*) getEmailLinksWithEmailId: (NSString*) emailId
    selector: (NSString*) selector
        completionHandler: (void (^)(OAIEmailLinksResult* output, NSError* error)) handler;
```

Parse and return list of links found in an email (only works for HTML content)

HTML parsing uses JSoup and UNIX line separators. Searches content for href attributes

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email to fetch text for
NSString* selector = @"selector_example"; // Optional HTML query selector for links (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Parse and return list of links found in an email (only works for HTML content)
[apiInstance getEmailLinksWithEmailId:emailId
              selector:selector
          completionHandler: ^(OAIEmailLinksResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailLinks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email to fetch text for | 
 **selector** | **NSString***| Optional HTML query selector for links | [optional] 

### Return type

[**OAIEmailLinksResult***](OAIEmailLinksResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailPreviewURLs**
```objc
-(NSURLSessionTask*) getEmailPreviewURLsWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(OAIEmailPreviewUrls* output, NSError* error)) handler;
```

Get email URLs for viewing in browser or downloading

Get a list of URLs for email content as text/html or raw SMTP message for viewing the message in a browser.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email URLs for viewing in browser or downloading
[apiInstance getEmailPreviewURLsWithEmailId:emailId
          completionHandler: ^(OAIEmailPreviewUrls* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailPreviewURLs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 

### Return type

[**OAIEmailPreviewUrls***](OAIEmailPreviewUrls)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailScreenshotAsBase64**
```objc
-(NSURLSessionTask*) getEmailScreenshotAsBase64WithEmailId: (NSString*) emailId
    getEmailScreenshotOptions: (OAIGetEmailScreenshotOptions*) getEmailScreenshotOptions
        completionHandler: (void (^)(OAIEmailScreenshotResult* output, NSError* error)) handler;
```

Take a screenshot of an email in a browser and return base64 encoded string

Capture image of email screenshot and return as base64 encoded string. Useful for embedding in HTML. Be careful as this may contain sensitive information.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
OAIGetEmailScreenshotOptions* getEmailScreenshotOptions = [[OAIGetEmailScreenshotOptions alloc] init]; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Take a screenshot of an email in a browser and return base64 encoded string
[apiInstance getEmailScreenshotAsBase64WithEmailId:emailId
              getEmailScreenshotOptions:getEmailScreenshotOptions
          completionHandler: ^(OAIEmailScreenshotResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailScreenshotAsBase64: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **getEmailScreenshotOptions** | [**OAIGetEmailScreenshotOptions***](OAIGetEmailScreenshotOptions)|  | 

### Return type

[**OAIEmailScreenshotResult***](OAIEmailScreenshotResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailScreenshotAsBinary**
```objc
-(NSURLSessionTask*) getEmailScreenshotAsBinaryWithEmailId: (NSString*) emailId
    getEmailScreenshotOptions: (OAIGetEmailScreenshotOptions*) getEmailScreenshotOptions
        completionHandler: (void (^)(NSError* error)) handler;
```

Take a screenshot of an email in a browser

Returns binary octet-stream of screenshot of the given email

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
OAIGetEmailScreenshotOptions* getEmailScreenshotOptions = [[OAIGetEmailScreenshotOptions alloc] init]; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Take a screenshot of an email in a browser
[apiInstance getEmailScreenshotAsBinaryWithEmailId:emailId
              getEmailScreenshotOptions:getEmailScreenshotOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailScreenshotAsBinary: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **getEmailScreenshotOptions** | [**OAIGetEmailScreenshotOptions***](OAIGetEmailScreenshotOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailSummary**
```objc
-(NSURLSessionTask*) getEmailSummaryWithEmailId: (NSString*) emailId
    decode: (NSNumber*) decode
        completionHandler: (void (^)(OAIEmailPreview* output, NSError* error)) handler;
```

Get email data including headers but not body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.

Returns a email summary object with headers. To retrieve the body see getEmail and to get raw unparsed email use the getRawEmail endpoints

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
NSNumber* decode = @56; //  (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email data including headers but not body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[apiInstance getEmailSummaryWithEmailId:emailId
              decode:decode
          completionHandler: ^(OAIEmailPreview* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailSummary: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **decode** | **NSNumber***|  | [optional] 

### Return type

[**OAIEmailPreview***](OAIEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailTextLines**
```objc
-(NSURLSessionTask*) getEmailTextLinesWithEmailId: (NSString*) emailId
    decodeHtmlEntities: (NSNumber*) decodeHtmlEntities
    lineSeparator: (NSString*) lineSeparator
        completionHandler: (void (^)(OAIEmailTextLinesResult* output, NSError* error)) handler;
```

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email to fetch text for
NSNumber* decodeHtmlEntities = @56; // Decode HTML entities (optional)
NSString* lineSeparator = @"lineSeparator_example"; // Line separator character (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Parse and return text from an email, stripping HTML and decoding encoded characters
[apiInstance getEmailTextLinesWithEmailId:emailId
              decodeHtmlEntities:decodeHtmlEntities
              lineSeparator:lineSeparator
          completionHandler: ^(OAIEmailTextLinesResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailTextLines: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email to fetch text for | 
 **decodeHtmlEntities** | **NSNumber***| Decode HTML entities | [optional] 
 **lineSeparator** | **NSString***| Line separator character | [optional] 

### Return type

[**OAIEmailTextLinesResult***](OAIEmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailThread**
```objc
-(NSURLSessionTask*) getEmailThreadWithThreadId: (NSString*) threadId
        completionHandler: (void (^)(OAIEmailThreadDto* output, NSError* error)) handler;
```

Return email thread information. Use items endpoints to get messages for thread.

Return email message thread summary from Message-ID, In-Reply-To, and References header. Get messages using items endpoint

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* threadId = @"threadId_example"; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Return email thread information. Use items endpoints to get messages for thread.
[apiInstance getEmailThreadWithThreadId:threadId
          completionHandler: ^(OAIEmailThreadDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailThread: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | [**NSString***]()|  | 

### Return type

[**OAIEmailThreadDto***](OAIEmailThreadDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailThreadItems**
```objc
-(NSURLSessionTask*) getEmailThreadItemsWithThreadId: (NSString*) threadId
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIEmailThreadItemsDto* output, NSError* error)) handler;
```

Return email thread items.

Return email thread messages based on Message-ID, In-Reply-To, and References header

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* threadId = @"threadId_example"; // 
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Return email thread items.
[apiInstance getEmailThreadItemsWithThreadId:threadId
              sort:sort
          completionHandler: ^(OAIEmailThreadItemsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailThreadItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | [**NSString***]()|  | 
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIEmailThreadItemsDto***](OAIEmailThreadItemsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailThreads**
```objc
-(NSURLSessionTask*) getEmailThreadsWithHtmlSelector: (NSString*) htmlSelector
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageEmailThreadProjection* output, NSError* error)) handler;
```

Return email threads in paginated form

Return email message chains built from Message-ID, In-Reply-To, and References header.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* htmlSelector = @"htmlSelector_example"; // Optional inbox filter (optional)
NSNumber* page = @0; // Optional page index in email thread pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter search filter for email threads. (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter email threads created since time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter emails threads created before given date time (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Return email threads in paginated form
[apiInstance getEmailThreadsWithHtmlSelector:htmlSelector
              page:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
          completionHandler: ^(OAIPageEmailThreadProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailThreads: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **htmlSelector** | [**NSString***]()| Optional inbox filter | [optional] 
 **page** | **NSNumber***| Optional page index in email thread pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter search filter for email threads. | [optional] 
 **since** | **NSDate***| Optional filter email threads created since time | [optional] 
 **before** | **NSDate***| Optional filter emails threads created before given date time | [optional] 

### Return type

[**OAIPageEmailThreadProjection***](OAIPageEmailThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailsOffsetPaginated**
```objc
-(NSURLSessionTask*) getEmailsOffsetPaginatedWithInboxId: (NSArray<NSString*>*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    favourited: (NSNumber*) favourited
    syncConnectors: (NSNumber*) syncConnectors
    plusAddressId: (NSString*) plusAddressId
        completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler;
```

Get all emails in all inboxes in paginated form. Email API list all.

By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSArray<NSString*>* inboxId = @[@"inboxId_example"]; // Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
NSNumber* page = @0; // Optional page index in email list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSNumber* unreadOnly = @(NO); // Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to @(NO))
NSString* searchFilter = @"searchFilter_example"; // Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter emails received after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter emails received before given date time (optional)
NSNumber* favourited = @56; // Optional filter emails that are favourited (optional)
NSNumber* syncConnectors = @56; // Sync connectors (optional)
NSString* plusAddressId = @"plusAddressId_example"; // Optional plus address ID filter (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get all emails in all inboxes in paginated form. Email API list all.
[apiInstance getEmailsOffsetPaginatedWithInboxId:inboxId
              page:page
              size:size
              sort:sort
              unreadOnly:unreadOnly
              searchFilter:searchFilter
              since:since
              before:before
              favourited:favourited
              syncConnectors:syncConnectors
              plusAddressId:plusAddressId
          completionHandler: ^(OAIPageEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailsOffsetPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSArray&lt;NSString*&gt;***](NSString*)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **NSNumber***| Optional page index in email list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **unreadOnly** | **NSNumber***| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to @(NO)]
 **searchFilter** | **NSString***| Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] 
 **since** | **NSDate***| Optional filter emails received after given date time | [optional] 
 **before** | **NSDate***| Optional filter emails received before given date time | [optional] 
 **favourited** | **NSNumber***| Optional filter emails that are favourited | [optional] 
 **syncConnectors** | **NSNumber***| Sync connectors | [optional] 
 **plusAddressId** | [**NSString***]()| Optional plus address ID filter | [optional] 

### Return type

[**OAIPageEmailProjection***](OAIPageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailsPaginated**
```objc
-(NSURLSessionTask*) getEmailsPaginatedWithInboxId: (NSArray<NSString*>*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    syncConnectors: (NSNumber*) syncConnectors
    plusAddressId: (NSString*) plusAddressId
    favourited: (NSNumber*) favourited
        completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler;
```

Get all emails in all inboxes in paginated form. Email API list all.

By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSArray<NSString*>* inboxId = @[@"inboxId_example"]; // Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
NSNumber* page = @0; // Optional page index in email list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSNumber* unreadOnly = @(NO); // Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to @(NO))
NSString* searchFilter = @"searchFilter_example"; // Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter emails received after given date time. If unset will use time 24hours prior to now. (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter emails received before given date time (optional)
NSNumber* syncConnectors = @56; // Sync connectors (optional)
NSString* plusAddressId = @"plusAddressId_example"; // Optional plus address ID filter (optional)
NSNumber* favourited = @56; // Optional filter emails that are favourited (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get all emails in all inboxes in paginated form. Email API list all.
[apiInstance getEmailsPaginatedWithInboxId:inboxId
              page:page
              size:size
              sort:sort
              unreadOnly:unreadOnly
              searchFilter:searchFilter
              since:since
              before:before
              syncConnectors:syncConnectors
              plusAddressId:plusAddressId
              favourited:favourited
          completionHandler: ^(OAIPageEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getEmailsPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSArray&lt;NSString*&gt;***](NSString*)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **NSNumber***| Optional page index in email list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **unreadOnly** | **NSNumber***| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to @(NO)]
 **searchFilter** | **NSString***| Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] 
 **since** | **NSDate***| Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **before** | **NSDate***| Optional filter emails received before given date time | [optional] 
 **syncConnectors** | **NSNumber***| Sync connectors | [optional] 
 **plusAddressId** | [**NSString***]()| Optional plus address ID filter | [optional] 
 **favourited** | **NSNumber***| Optional filter emails that are favourited | [optional] 

### Return type

[**OAIPageEmailProjection***](OAIPageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGravatarUrlForEmailAddress**
```objc
-(NSURLSessionTask*) getGravatarUrlForEmailAddressWithEmailAddress: (NSString*) emailAddress
    size: (NSString*) size
        completionHandler: (void (^)(OAIGravatarUrl* output, NSError* error)) handler;
```



Get gravatar url for email address

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailAddress = @"emailAddress_example"; // 
NSString* size = @"size_example"; //  (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

[apiInstance getGravatarUrlForEmailAddressWithEmailAddress:emailAddress
              size:size
          completionHandler: ^(OAIGravatarUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getGravatarUrlForEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **NSString***|  | 
 **size** | **NSString***|  | [optional] 

### Return type

[**OAIGravatarUrl***](OAIGravatarUrl)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmail**
```objc
-(NSURLSessionTask*) getLatestEmailWithInboxIds: (NSArray<NSString*>*) inboxIds
        completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler;
```

Get latest email in all inboxes. Most recently received.

Get the newest email in all inboxes or in a passed set of inbox IDs

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSArray<NSString*>* inboxIds = @[@"inboxIds_example"]; // Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get latest email in all inboxes. Most recently received.
[apiInstance getLatestEmailWithInboxIds:inboxIds
          completionHandler: ^(OAIEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getLatestEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxIds** | [**NSArray&lt;NSString*&gt;***](NSString*)| Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes | [optional] 

### Return type

[**OAIEmail***](OAIEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmailInInbox1**
```objc
-(NSURLSessionTask*) getLatestEmailInInbox1WithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler;
```

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Get the newest email in all inboxes or in a passed set of inbox IDs

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // ID of the inbox you want to get the latest email from

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
[apiInstance getLatestEmailInInbox1WithInboxId:inboxId
          completionHandler: ^(OAIEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getLatestEmailInInbox1: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| ID of the inbox you want to get the latest email from | 

### Return type

[**OAIEmail***](OAIEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationEmailsPaginated**
```objc
-(NSURLSessionTask*) getOrganizationEmailsPaginatedWithInboxId: (NSArray<NSString*>*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    syncConnectors: (NSNumber*) syncConnectors
    favourited: (NSNumber*) favourited
    plusAddressId: (NSString*) plusAddressId
        completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler;
```

Get all organization emails. List team or shared test email accounts

By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSArray<NSString*>* inboxId = @[@"inboxId_example"]; // Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
NSNumber* page = @0; // Optional page index in email list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSNumber* unreadOnly = @(NO); // Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to @(NO))
NSString* searchFilter = @"searchFilter_example"; // Optional search filter search filter for emails. (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter emails received after given date time. If unset will use time 24hours prior to now. (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter emails received before given date time (optional)
NSNumber* syncConnectors = @56; // Sync connectors (optional)
NSNumber* favourited = @56; // Search only favorited emails (optional)
NSString* plusAddressId = @"plusAddressId_example"; // Optional plus address ID filter (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get all organization emails. List team or shared test email accounts
[apiInstance getOrganizationEmailsPaginatedWithInboxId:inboxId
              page:page
              size:size
              sort:sort
              unreadOnly:unreadOnly
              searchFilter:searchFilter
              since:since
              before:before
              syncConnectors:syncConnectors
              favourited:favourited
              plusAddressId:plusAddressId
          completionHandler: ^(OAIPageEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getOrganizationEmailsPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSArray&lt;NSString*&gt;***](NSString*)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **NSNumber***| Optional page index in email list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **unreadOnly** | **NSNumber***| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to @(NO)]
 **searchFilter** | **NSString***| Optional search filter search filter for emails. | [optional] 
 **since** | **NSDate***| Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **before** | **NSDate***| Optional filter emails received before given date time | [optional] 
 **syncConnectors** | **NSNumber***| Sync connectors | [optional] 
 **favourited** | **NSNumber***| Search only favorited emails | [optional] 
 **plusAddressId** | [**NSString***]()| Optional plus address ID filter | [optional] 

### Return type

[**OAIPageEmailProjection***](OAIPageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailContents**
```objc
-(NSURLSessionTask*) getRawEmailContentsWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(NSError* error)) handler;
```

Get raw email string. Returns unparsed raw SMTP message with headers and body.

Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get raw email string. Returns unparsed raw SMTP message with headers and body.
[apiInstance getRawEmailContentsWithEmailId:emailId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getRawEmailContents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailJson**
```objc
-(NSURLSessionTask*) getRawEmailJsonWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(OAIRawEmailJson* output, NSError* error)) handler;
```

Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[apiInstance getRawEmailJsonWithEmailId:emailId
          completionHandler: ^(OAIRawEmailJson* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getRawEmailJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 

### Return type

[**OAIRawEmailJson***](OAIRawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUnreadEmailCount**
```objc
-(NSURLSessionTask*) getUnreadEmailCountWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIUnreadCount* output, NSError* error)) handler;
```

Get unread email count

Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Optional inbox ID filter (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get unread email count
[apiInstance getUnreadEmailCountWithInboxId:inboxId
          completionHandler: ^(OAIUnreadCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getUnreadEmailCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Optional inbox ID filter | [optional] 

### Return type

[**OAIUnreadCount***](OAIUnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **markAllAsRead**
```objc
-(NSURLSessionTask*) markAllAsReadWithRead: (NSNumber*) read
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```

Mark all emails as read or unread

Marks all emails as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* read = @(YES); // What value to assign to email read property. Default true. (optional) (default to @(YES))
NSString* inboxId = @"inboxId_example"; // Optional inbox ID filter (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Mark all emails as read or unread
[apiInstance markAllAsReadWithRead:read
              inboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->markAllAsRead: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **read** | **NSNumber***| What value to assign to email read property. Default true. | [optional] [default to @(YES)]
 **inboxId** | [**NSString***]()| Optional inbox ID filter | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **markAsRead**
```objc
-(NSURLSessionTask*) markAsReadWithEmailId: (NSString*) emailId
    read: (NSNumber*) read
        completionHandler: (void (^)(OAIEmailPreview* output, NSError* error)) handler;
```

Mark an email as read or unread

Marks an email as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
NSNumber* read = @(YES); // What value to assign to email read property. Default true. (optional) (default to @(YES))

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Mark an email as read or unread
[apiInstance markAsReadWithEmailId:emailId
              read:read
          completionHandler: ^(OAIEmailPreview* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->markAsRead: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **read** | **NSNumber***| What value to assign to email read property. Default true. | [optional] [default to @(YES)]

### Return type

[**OAIEmailPreview***](OAIEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToEmail**
```objc
-(NSURLSessionTask*) replyToEmailWithEmailId: (NSString*) emailId
    replyToEmailOptions: (OAIReplyToEmailOptions*) replyToEmailOptions
        completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler;
```

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of the email that should be replied to
OAIReplyToEmailOptions* replyToEmailOptions = [[OAIReplyToEmailOptions alloc] init]; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Reply to an email
[apiInstance replyToEmailWithEmailId:emailId
              replyToEmailOptions:replyToEmailOptions
          completionHandler: ^(OAISentEmailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->replyToEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of the email that should be replied to | 
 **replyToEmailOptions** | [**OAIReplyToEmailOptions***](OAIReplyToEmailOptions)|  | 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **searchEmails**
```objc
-(NSURLSessionTask*) searchEmailsWithSearchEmailsOptions: (OAISearchEmailsOptions*) searchEmailsOptions
    syncConnectors: (NSNumber*) syncConnectors
    favourited: (NSNumber*) favourited
    plusAddressId: (NSString*) plusAddressId
        completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler;
```

Get all emails by search criteria. Return in paginated form.

Search emails by given criteria return matches in paginated format. Searches against email recipients, sender, subject, email address and ID. Does not search email body

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAISearchEmailsOptions* searchEmailsOptions = [[OAISearchEmailsOptions alloc] init]; // 
NSNumber* syncConnectors = @56; // Sync connectors (optional)
NSNumber* favourited = @56; // Search only favourited emails (optional)
NSString* plusAddressId = @"plusAddressId_example"; // Optional plus address ID filter (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get all emails by search criteria. Return in paginated form.
[apiInstance searchEmailsWithSearchEmailsOptions:searchEmailsOptions
              syncConnectors:syncConnectors
              favourited:favourited
              plusAddressId:plusAddressId
          completionHandler: ^(OAIPageEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->searchEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchEmailsOptions** | [**OAISearchEmailsOptions***](OAISearchEmailsOptions)|  | 
 **syncConnectors** | **NSNumber***| Sync connectors | [optional] 
 **favourited** | **NSNumber***| Search only favourited emails | [optional] 
 **plusAddressId** | [**NSString***]()| Optional plus address ID filter | [optional] 

### Return type

[**OAIPageEmailProjection***](OAIPageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailSourceOptional**
```objc
-(NSURLSessionTask*) sendEmailSourceOptionalWithSendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
    inboxId: (NSString*) inboxId
    useDomainPool: (NSNumber*) useDomainPool
    virtualSend: (NSNumber*) virtualSend
        completionHandler: (void (^)(NSError* error)) handler;
```

Send email

Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAISendEmailOptions* sendEmailOptions = [[OAISendEmailOptions alloc] init]; // 
NSString* inboxId = @"inboxId_example"; // ID of the inbox you want to send the email from (optional)
NSNumber* useDomainPool = @56; // Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. (optional)
NSNumber* virtualSend = @56; // Optionally create inbox to send from that is a virtual inbox and won't send to external addresses (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Send email
[apiInstance sendEmailSourceOptionalWithSendEmailOptions:sendEmailOptions
              inboxId:inboxId
              useDomainPool:useDomainPool
              virtualSend:virtualSend
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->sendEmailSourceOptional: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendEmailOptions** | [**OAISendEmailOptions***](OAISendEmailOptions)|  | 
 **inboxId** | [**NSString***]()| ID of the inbox you want to send the email from | [optional] 
 **useDomainPool** | **NSNumber***| Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. | [optional] 
 **virtualSend** | **NSNumber***| Optionally create inbox to send from that is a virtual inbox and won&#39;t send to external addresses | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setEmailFavourited**
```objc
-(NSURLSessionTask*) setEmailFavouritedWithEmailId: (NSString*) emailId
    favourited: (NSNumber*) favourited
        completionHandler: (void (^)(NSError* error)) handler;
```

Set email favourited state

Set and return new favorite state for an email

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email to set favourite state
NSNumber* favourited = @56; // 

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Set email favourited state
[apiInstance setEmailFavouritedWithEmailId:emailId
              favourited:favourited
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->setEmailFavourited: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email to set favourite state | 
 **favourited** | **NSNumber***|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateEmail**
```objc
-(NSURLSessionTask*) validateEmailWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(OAIValidationDto* output, NSError* error)) handler;
```

Validate email HTML contents

Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Validate email HTML contents
[apiInstance validateEmailWithEmailId:emailId
          completionHandler: ^(OAIValidationDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->validateEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 

### Return type

[**OAIValidationDto***](OAIValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

