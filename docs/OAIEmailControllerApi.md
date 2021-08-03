# OAIEmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllEmails**](OAIEmailControllerApi#deleteallemails) | **DELETE** /emails | Delete all emails in all inboxes.
[**deleteEmail**](OAIEmailControllerApi#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
[**downloadAttachment**](OAIEmailControllerApi#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as &#x60;octet-stream&#x60; with content type header. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints and convert the base 64 encoded content to a file or string.
[**downloadAttachmentBase64**](OAIEmailControllerApi#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the &#x60;base64FileContents&#x60; as a &#x60;utf-8&#x60; encoded string or array of bytes depending on the &#x60;contentType&#x60;.
[**downloadBody**](OAIEmailControllerApi#downloadbody) | **GET** /emails/{emailId}/body | Get email body as string. Returned as &#x60;plain/text&#x60; with content type header.
[**downloadBodyBytes**](OAIEmailControllerApi#downloadbodybytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as &#x60;octet-stream&#x60; with content type header.
[**forwardEmail**](OAIEmailControllerApi#forwardemail) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**getAttachmentMetaData**](OAIEmailControllerApi#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the &#x60;contentType&#x60; and &#x60;contentLength&#x60; of an attachment. To get the individual attachments  use the &#x60;downloadAttachment&#x60; methods.
[**getAttachments1**](OAIEmailControllerApi#getattachments1) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata. Metadata includes name and size of attachments.
[**getEmail**](OAIEmailControllerApi#getemail) | **GET** /emails/{emailId} | Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[**getEmailContentMatch**](OAIEmailControllerApi#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**getEmailHTML**](OAIEmailControllerApi#getemailhtml) | **GET** /emails/{emailId}/html | Get email content as HTML. For displaying emails in browser context.
[**getEmailHTMLQuery**](OAIEmailControllerApi#getemailhtmlquery) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailLinks**](OAIEmailControllerApi#getemaillinks) | **GET** /emails/{emailId}/links | Parse and return list of links found in an email (only works for HTML content)
[**getEmailTextLines**](OAIEmailControllerApi#getemailtextlines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailsPaginated**](OAIEmailControllerApi#getemailspaginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**getGravatarUrlForEmailAddress**](OAIEmailControllerApi#getgravatarurlforemailaddress) | **GET** /emails/gravatarFor | Get gravatar url for email address
[**getLatestEmail**](OAIEmailControllerApi#getlatestemail) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**getLatestEmailInInbox**](OAIEmailControllerApi#getlatestemailininbox) | **GET** /emails/latestIn | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**getOrganizationEmailsPaginated**](OAIEmailControllerApi#getorganizationemailspaginated) | **GET** /emails/organization | Get all organization emails. List team or shared test email accounts
[**getRawEmailContents**](OAIEmailControllerApi#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**getRawEmailJson**](OAIEmailControllerApi#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**getUnreadEmailCount**](OAIEmailControllerApi#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
[**markAsRead**](OAIEmailControllerApi#markasread) | **PATCH** /emails/{emailId}/read | Mark an email as read
[**replyToEmail**](OAIEmailControllerApi#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
[**sendEmailSourceOptional**](OAIEmailControllerApi#sendemailsourceoptional) | **POST** /emails | Send email
[**validateEmail**](OAIEmailControllerApi#validateemail) | **POST** /emails/{emailId}/validate | Validate email HTML contents


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
-(NSURLSessionTask*) downloadAttachmentWithAttachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
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


NSString* attachmentId = @"attachmentId_example"; // ID of attachment
NSString* emailId = @"emailId_example"; // ID of email
NSString* apiKey = @"apiKey_example"; // Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
[apiInstance downloadAttachmentWithAttachmentId:attachmentId
              emailId:emailId
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
 **attachmentId** | **NSString***| ID of attachment | 
 **emailId** | [**NSString***]()| ID of email | 
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
-(NSURLSessionTask*) downloadAttachmentBase64WithAttachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
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


NSString* attachmentId = @"attachmentId_example"; // ID of attachment
NSString* emailId = @"emailId_example"; // ID of email

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
[apiInstance downloadAttachmentBase64WithAttachmentId:attachmentId
              emailId:emailId
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
 **attachmentId** | **NSString***| ID of attachment | 
 **emailId** | [**NSString***]()| ID of email | 

### Return type

[**OAIDownloadAttachmentDto***](OAIDownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: text/html, text/plain

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
OAIForwardEmailOptions* forwardEmailOptions = [[OAIForwardEmailOptions alloc] init]; // forwardEmailOptions

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
 **forwardEmailOptions** | [**OAIForwardEmailOptions***](OAIForwardEmailOptions)| forwardEmailOptions | 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachmentMetaData**
```objc
-(NSURLSessionTask*) getAttachmentMetaDataWithAttachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
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


NSString* attachmentId = @"attachmentId_example"; // ID of attachment
NSString* emailId = @"emailId_example"; // ID of email

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
[apiInstance getAttachmentMetaDataWithAttachmentId:attachmentId
              emailId:emailId
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
 **attachmentId** | **NSString***| ID of attachment | 
 **emailId** | [**NSString***]()| ID of email | 

### Return type

[**OAIAttachmentMetaData***](OAIAttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachments1**
```objc
-(NSURLSessionTask*) getAttachments1WithEmailId: (NSString*) emailId
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
[apiInstance getAttachments1WithEmailId:emailId
          completionHandler: ^(NSArray<OAIAttachmentMetaData>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getAttachments1: %@", error);
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmail**
```objc
-(NSURLSessionTask*) getEmailWithEmailId: (NSString*) emailId
    decode: (NSNumber*) decode
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


NSString* emailId = @"emailId_example"; // emailId
NSNumber* decode = @(NO); // Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing (optional) (default to @(NO))

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[apiInstance getEmailWithEmailId:emailId
              decode:decode
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
 **emailId** | [**NSString***]()| emailId | 
 **decode** | **NSNumber***| Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing | [optional] [default to @(NO)]

### Return type

[**OAIEmail***](OAIEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
OAIContentMatchOptions* contentMatchOptions = [[OAIContentMatchOptions alloc] init]; // contentMatchOptions

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
 **contentMatchOptions** | [**OAIContentMatchOptions***](OAIContentMatchOptions)| contentMatchOptions | 

### Return type

[**OAIEmailContentMatchResult***](OAIEmailContentMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTML**
```objc
-(NSURLSessionTask*) getEmailHTMLWithEmailId: (NSString*) emailId
    decode: (NSNumber*) decode
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get email content as HTML. For displaying emails in browser context.

Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // emailId
NSNumber* decode = @(NO); // decode (optional) (default to @(NO))

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get email content as HTML. For displaying emails in browser context.
[apiInstance getEmailHTMLWithEmailId:emailId
              decode:decode
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
 **emailId** | [**NSString***]()| emailId | 
 **decode** | **NSNumber***| decode | [optional] [default to @(NO)]

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

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
NSString* htmlSelector = @"htmlSelector_example"; // HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. (optional)

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
 **htmlSelector** | **NSString***| HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | [optional] 

### Return type

[**OAIEmailTextLinesResult***](OAIEmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailLinks**
```objc
-(NSURLSessionTask*) getEmailLinksWithEmailId: (NSString*) emailId
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

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Parse and return list of links found in an email (only works for HTML content)
[apiInstance getEmailLinksWithEmailId:emailId
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

### Return type

[**OAIEmailLinksResult***](OAIEmailLinksResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailsPaginated**
```objc
-(NSURLSessionTask*) getEmailsPaginatedWithInboxId: (NSArray<NSString*>*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
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
NSString* searchFilter = @"false"; // Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body (optional) (default to @"false")
NSNumber* size = @20; // Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSNumber* unreadOnly = @(NO); // Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to @(NO))

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get all emails in all inboxes in paginated form. Email API list all.
[apiInstance getEmailsPaginatedWithInboxId:inboxId
              page:page
              searchFilter:searchFilter
              size:size
              sort:sort
              unreadOnly:unreadOnly
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
 **searchFilter** | **NSString***| Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] [default to @&quot;false&quot;]
 **size** | **NSNumber***| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **unreadOnly** | **NSNumber***| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to @(NO)]

### Return type

[**OAIPageEmailProjection***](OAIPageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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


NSString* emailAddress = @"emailAddress_example"; // emailAddress
NSString* size = @"size_example"; // size (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get gravatar url for email address
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
 **emailAddress** | **NSString***| emailAddress | 
 **size** | **NSString***| size | [optional] 

### Return type

[**OAIGravatarUrl***](OAIGravatarUrl)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmailInInbox**
```objc
-(NSURLSessionTask*) getLatestEmailInInboxWithInboxId: (NSString*) inboxId
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


NSString* inboxId = @"inboxId_example"; // ID of the inbox you want to get the latest email from (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
[apiInstance getLatestEmailInInboxWithInboxId:inboxId
          completionHandler: ^(OAIEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getLatestEmailInInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| ID of the inbox you want to get the latest email from | [optional] 

### Return type

[**OAIEmail***](OAIEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationEmailsPaginated**
```objc
-(NSURLSessionTask*) getOrganizationEmailsPaginatedWithInboxId: (NSArray<NSString*>*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
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
NSString* searchFilter = @"searchFilter_example"; // Optional search filter search filter for emails. (optional)
NSNumber* size = @20; // Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSNumber* unreadOnly = @(NO); // Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to @(NO))

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get all organization emails. List team or shared test email accounts
[apiInstance getOrganizationEmailsPaginatedWithInboxId:inboxId
              page:page
              searchFilter:searchFilter
              size:size
              sort:sort
              unreadOnly:unreadOnly
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
 **searchFilter** | **NSString***| Optional search filter search filter for emails. | [optional] 
 **size** | **NSNumber***| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **unreadOnly** | **NSNumber***| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to @(NO)]

### Return type

[**OAIPageEmailProjection***](OAIPageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailContents**
```objc
-(NSURLSessionTask*) getRawEmailContentsWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
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
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
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

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUnreadEmailCount**
```objc
-(NSURLSessionTask*) getUnreadEmailCountWithCompletionHandler: 
        (void (^)(OAIUnreadCount* output, NSError* error)) handler;
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



OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get unread email count
[apiInstance getUnreadEmailCountWithCompletionHandler: 
          ^(OAIUnreadCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getUnreadEmailCount: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIUnreadCount***](OAIUnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **markAsRead**
```objc
-(NSURLSessionTask*) markAsReadWithEmailId: (NSString*) emailId
    read: (NSNumber*) read
        completionHandler: (void (^)(OAIEmailPreview* output, NSError* error)) handler;
```

Mark an email as read

Marks an email as read or unread. Pass boolean read flag to set value.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // emailId
NSNumber* read = @(YES); // What value to assign to email read property. Default true. (optional) (default to @(YES))

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Mark an email as read
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
 **emailId** | [**NSString***]()| emailId | 
 **read** | **NSNumber***| What value to assign to email read property. Default true. | [optional] [default to @(YES)]

### Return type

[**OAIEmailPreview***](OAIEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
OAIReplyToEmailOptions* replyToEmailOptions = [[OAIReplyToEmailOptions alloc] init]; // replyToEmailOptions

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
 **replyToEmailOptions** | [**OAIReplyToEmailOptions***](OAIReplyToEmailOptions)| replyToEmailOptions | 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailSourceOptional**
```objc
-(NSURLSessionTask*) sendEmailSourceOptionalWithInboxId: (NSString*) inboxId
    useDomainPool: (NSNumber*) useDomainPool
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
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


NSString* inboxId = @"inboxId_example"; // ID of the inbox you want to send the email from (optional)
NSNumber* useDomainPool = @56; // Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. (optional)
OAISendEmailOptions* sendEmailOptions = [[OAISendEmailOptions alloc] init]; // Options for the email (optional)

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Send email
[apiInstance sendEmailSourceOptionalWithInboxId:inboxId
              useDomainPool:useDomainPool
              sendEmailOptions:sendEmailOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->sendEmailSourceOptional: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| ID of the inbox you want to send the email from | [optional] 
 **useDomainPool** | **NSNumber***| Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. | [optional] 
 **sendEmailOptions** | [**OAISendEmailOptions***](OAISendEmailOptions)| Options for the email | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

