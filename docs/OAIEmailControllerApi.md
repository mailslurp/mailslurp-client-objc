# OAIEmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllEmails**](OAIEmailControllerApi.md#deleteallemails) | **DELETE** /emails | Delete all emails
[**deleteEmail**](OAIEmailControllerApi.md#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
[**downloadAttachment**](OAIEmailControllerApi.md#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**downloadAttachmentBase64**](OAIEmailControllerApi.md#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string (alternative to binary responses)
[**forwardEmail**](OAIEmailControllerApi.md#forwardemail) | **POST** /emails/{emailId}/forward | Forward email
[**getAttachmentMetaData**](OAIEmailControllerApi.md#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata
[**getAttachments**](OAIEmailControllerApi.md#getattachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata
[**getEmail**](OAIEmailControllerApi.md#getemail) | **GET** /emails/{emailId} | Get email content
[**getEmailContentMatch**](OAIEmailControllerApi.md#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**getEmailHTML**](OAIEmailControllerApi.md#getemailhtml) | **GET** /emails/{emailId}/html | Get email content as HTML
[**getEmailHTMLQuery**](OAIEmailControllerApi.md#getemailhtmlquery) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailTextLines**](OAIEmailControllerApi.md#getemailtextlines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailsPaginated**](OAIEmailControllerApi.md#getemailspaginated) | **GET** /emails | Get all emails
[**getRawEmailContents**](OAIEmailControllerApi.md#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string
[**getRawEmailJson**](OAIEmailControllerApi.md#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON
[**getUnreadEmailCount**](OAIEmailControllerApi.md#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
[**replyToEmail**](OAIEmailControllerApi.md#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
[**validateEmail**](OAIEmailControllerApi.md#validateemail) | **POST** /emails/{emailId}/validate | Validate email


# **deleteAllEmails**
```objc
-(NSURLSessionTask*) deleteAllEmailsWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all emails

Deletes all emails in your account. Be careful as emails cannot be recovered

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Delete all emails
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

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **emailId** | [**NSString***](.md)| ID of email to delete | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadAttachment**
```objc
-(NSURLSessionTask*) downloadAttachmentWithAttachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
    apiKey: (NSString*) apiKey
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.

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

// Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
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
 **emailId** | [**NSString***](.md)| ID of email | 
 **apiKey** | **NSString***| Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. | [optional] 

### Return type

**NSData***

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadAttachmentBase64**
```objc
-(NSURLSessionTask*) downloadAttachmentBase64WithAttachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
        completionHandler: (void (^)(OAIDownloadAttachmentDto* output, NSError* error)) handler;
```

Get email attachment as base64 encoded string (alternative to binary responses)

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

// Get email attachment as base64 encoded string (alternative to binary responses)
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
 **emailId** | [**NSString***](.md)| ID of email | 

### Return type

[**OAIDownloadAttachmentDto***](OAIDownloadAttachmentDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forwardEmail**
```objc
-(NSURLSessionTask*) forwardEmailWithEmailId: (NSString*) emailId
    forwardEmailOptions: (OAIForwardEmailOptions*) forwardEmailOptions
        completionHandler: (void (^)(NSError* error)) handler;
```

Forward email

Forward an existing email to new recipients.

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

// Forward email
[apiInstance forwardEmailWithEmailId:emailId
              forwardEmailOptions:forwardEmailOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->forwardEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***](.md)| ID of email | 
 **forwardEmailOptions** | [**OAIForwardEmailOptions***](OAIForwardEmailOptions.md)| forwardEmailOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachmentMetaData**
```objc
-(NSURLSessionTask*) getAttachmentMetaDataWithAttachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
        completionHandler: (void (^)(OAIAttachmentMetaData* output, NSError* error)) handler;
```

Get email attachment metadata

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

// Get email attachment metadata
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
 **emailId** | [**NSString***](.md)| ID of email | 

### Return type

[**OAIAttachmentMetaData***](OAIAttachmentMetaData.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachments**
```objc
-(NSURLSessionTask*) getAttachmentsWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(NSArray<OAIAttachmentMetaData>* output, NSError* error)) handler;
```

Get all email attachment metadata

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

// Get all email attachment metadata
[apiInstance getAttachmentsWithEmailId:emailId
          completionHandler: ^(NSArray<OAIAttachmentMetaData>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailControllerApi->getAttachments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***](.md)| ID of email | 

### Return type

[**NSArray<OAIAttachmentMetaData>***](OAIAttachmentMetaData.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmail**
```objc
-(NSURLSessionTask*) getEmailWithEmailId: (NSString*) emailId
    decode: (NSNumber*) decode
        completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler;
```

Get email content

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

// Get email content
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
 **emailId** | [**NSString***](.md)| emailId | 
 **decode** | **NSNumber***| Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing | [optional] [default to @(NO)]

### Return type

[**OAIEmail***](OAIEmail.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **emailId** | [**NSString***](.md)| ID of email to match against | 
 **contentMatchOptions** | [**OAIContentMatchOptions***](OAIContentMatchOptions.md)| contentMatchOptions | 

### Return type

[**OAIEmailContentMatchResult***](OAIEmailContentMatchResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailHTML**
```objc
-(NSURLSessionTask*) getEmailHTMLWithEmailId: (NSString*) emailId
    decode: (NSNumber*) decode
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get email content as HTML

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

// Get email content as HTML
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
 **emailId** | [**NSString***](.md)| emailId | 
 **decode** | **NSNumber***| decode | [optional] [default to @(NO)]

### Return type

**NSString***

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **emailId** | [**NSString***](.md)| ID of email to perform HTML query on | 
 **htmlSelector** | **NSString***| HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | [optional] 

### Return type

[**OAIEmailTextLinesResult***](OAIEmailTextLinesResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **emailId** | [**NSString***](.md)| ID of email to fetch text for | 
 **decodeHtmlEntities** | **NSNumber***| Decode HTML entities | [optional] 
 **lineSeparator** | **NSString***| Line separator character | [optional] 

### Return type

[**OAIEmailTextLinesResult***](OAIEmailTextLinesResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailsPaginated**
```objc
-(NSURLSessionTask*) getEmailsPaginatedWithInboxId: (NSArray<NSString*>*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
        completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler;
```

Get all emails

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

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Get all emails
[apiInstance getEmailsPaginatedWithInboxId:inboxId
              page:page
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
 **inboxId** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **NSNumber***| Optional page index in email list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **unreadOnly** | **NSNumber***| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to @(NO)]

### Return type

[**OAIPageEmailProjection***](OAIPageEmailProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawEmailContents**
```objc
-(NSURLSessionTask*) getRawEmailContentsWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get raw email string

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

// Get raw email string
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
 **emailId** | [**NSString***](.md)| ID of email | 

### Return type

**NSString***

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawEmailJson**
```objc
-(NSURLSessionTask*) getRawEmailJsonWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(OAIRawEmailJson* output, NSError* error)) handler;
```

Get raw email in JSON

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

// Get raw email in JSON
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
 **emailId** | [**NSString***](.md)| ID of email | 

### Return type

[**OAIRawEmailJson***](OAIRawEmailJson.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnreadEmailCount**
```objc
-(NSURLSessionTask*) getUnreadEmailCountWithCompletionHandler: 
        (void (^)(OAIUnreadCount* output, NSError* error)) handler;
```

Get unread email count

Get number of emails unread

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

[**OAIUnreadCount***](OAIUnreadCount.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **emailId** | [**NSString***](.md)| ID of the email that should be replied to | 
 **replyToEmailOptions** | [**OAIReplyToEmailOptions***](OAIReplyToEmailOptions.md)| replyToEmailOptions | 

### Return type

[**OAISentEmailDto***](OAISentEmailDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateEmail**
```objc
-(NSURLSessionTask*) validateEmailWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(OAIValidationDto* output, NSError* error)) handler;
```

Validate email

Validate the HTML content of email if HTML is found. Considered valid if no HTML.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email

OAIEmailControllerApi*apiInstance = [[OAIEmailControllerApi alloc] init];

// Validate email
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
 **emailId** | [**NSString***](.md)| ID of email | 

### Return type

[**OAIValidationDto***](OAIValidationDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

