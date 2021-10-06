# OAIAliasControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlias**](OAIAliasControllerApi#createalias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**deleteAlias**](OAIAliasControllerApi#deletealias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**getAlias**](OAIAliasControllerApi#getalias) | **GET** /aliases/{aliasId} | Get an email alias
[**getAliasEmails**](OAIAliasControllerApi#getaliasemails) | **GET** /aliases/{aliasId}/emails | Get emails for an alias
[**getAliasThreads**](OAIAliasControllerApi#getaliasthreads) | **GET** /aliases/{aliasId}/threads | Get threads created for an alias
[**getAliases**](OAIAliasControllerApi#getaliases) | **GET** /aliases | Get all email aliases you have created
[**replyToAliasEmail**](OAIAliasControllerApi#replytoaliasemail) | **PUT** /aliases/{aliasId}/emails/{emailId} | Reply to an email
[**sendAliasEmail**](OAIAliasControllerApi#sendaliasemail) | **POST** /aliases/{aliasId}/emails | Send an email from an alias inbox
[**updateAlias**](OAIAliasControllerApi#updatealias) | **PUT** /aliases/{aliasId} | Update an email alias


# **createAlias**
```objc
-(NSURLSessionTask*) createAliasWithCreateAliasOptions: (OAICreateAliasOptions*) createAliasOptions
        completionHandler: (void (^)(OAIAliasDto* output, NSError* error)) handler;
```

Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.

Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateAliasOptions* createAliasOptions = [[OAICreateAliasOptions alloc] init]; // createAliasOptions

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[apiInstance createAliasWithCreateAliasOptions:createAliasOptions
          completionHandler: ^(OAIAliasDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->createAlias: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAliasOptions** | [**OAICreateAliasOptions***](OAICreateAliasOptions)| createAliasOptions | 

### Return type

[**OAIAliasDto***](OAIAliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAlias**
```objc
-(NSURLSessionTask*) deleteAliasWithAliasId: (NSString*) aliasId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an email alias

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aliasId = @"aliasId_example"; // aliasId

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Delete an email alias
[apiInstance deleteAliasWithAliasId:aliasId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->deleteAlias: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**NSString***]()| aliasId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAlias**
```objc
-(NSURLSessionTask*) getAliasWithAliasId: (NSString*) aliasId
        completionHandler: (void (^)(OAIAliasDto* output, NSError* error)) handler;
```

Get an email alias

Get an email alias by ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aliasId = @"aliasId_example"; // aliasId

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Get an email alias
[apiInstance getAliasWithAliasId:aliasId
          completionHandler: ^(OAIAliasDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->getAlias: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**NSString***]()| aliasId | 

### Return type

[**OAIAliasDto***](OAIAliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAliasEmails**
```objc
-(NSURLSessionTask*) getAliasEmailsWithAliasId: (NSString*) aliasId
    before: (NSDate*) before
    page: (NSNumber*) page
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler;
```

Get emails for an alias

Get paginated emails for an alias by ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aliasId = @"aliasId_example"; // aliasId
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter by sent before given date time (optional)
NSNumber* page = @0; // Optional page index alias email list pagination (optional) (default to @0)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter by sent after given date time (optional)
NSNumber* size = @20; // Optional page size alias email list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Get emails for an alias
[apiInstance getAliasEmailsWithAliasId:aliasId
              before:before
              page:page
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->getAliasEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**NSString***]()| aliasId | 
 **before** | **NSDate***| Optional filter by sent before given date time | [optional] 
 **page** | **NSNumber***| Optional page index alias email list pagination | [optional] [default to @0]
 **since** | **NSDate***| Optional filter by sent after given date time | [optional] 
 **size** | **NSNumber***| Optional page size alias email list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageEmailProjection***](OAIPageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAliasThreads**
```objc
-(NSURLSessionTask*) getAliasThreadsWithAliasId: (NSString*) aliasId
    before: (NSDate*) before
    page: (NSNumber*) page
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageThreadProjection* output, NSError* error)) handler;
```

Get threads created for an alias

Returns threads created for an email alias in paginated form

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aliasId = @"aliasId_example"; // aliasId
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter by sent before given date time (optional)
NSNumber* page = @0; // Optional page index in thread list pagination (optional) (default to @0)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter by sent after given date time (optional)
NSNumber* size = @20; // Optional page size in thread list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Get threads created for an alias
[apiInstance getAliasThreadsWithAliasId:aliasId
              before:before
              page:page
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageThreadProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->getAliasThreads: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**NSString***]()| aliasId | 
 **before** | **NSDate***| Optional filter by sent before given date time | [optional] 
 **page** | **NSNumber***| Optional page index in thread list pagination | [optional] [default to @0]
 **since** | **NSDate***| Optional filter by sent after given date time | [optional] 
 **size** | **NSNumber***| Optional page size in thread list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageThreadProjection***](OAIPageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAliases**
```objc
-(NSURLSessionTask*) getAliasesWithBefore: (NSDate*) before
    page: (NSNumber*) page
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageAlias* output, NSError* error)) handler;
```

Get all email aliases you have created

Get all email aliases in paginated form

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSNumber* page = @0; // Optional page index in alias list pagination (optional) (default to @0)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSNumber* size = @20; // Optional page size in alias list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Get all email aliases you have created
[apiInstance getAliasesWithBefore:before
              page:page
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageAlias* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->getAliases: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **page** | **NSNumber***| Optional page index in alias list pagination | [optional] [default to @0]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **size** | **NSNumber***| Optional page size in alias list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageAlias***](OAIPageAlias)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToAliasEmail**
```objc
-(NSURLSessionTask*) replyToAliasEmailWithAliasId: (NSString*) aliasId
    emailId: (NSString*) emailId
    replyToAliasEmailOptions: (OAIReplyToAliasEmailOptions*) replyToAliasEmailOptions
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


NSString* aliasId = @"aliasId_example"; // ID of the alias that email belongs to
NSString* emailId = @"emailId_example"; // ID of the email that should be replied to
OAIReplyToAliasEmailOptions* replyToAliasEmailOptions = [[OAIReplyToAliasEmailOptions alloc] init]; // replyToAliasEmailOptions

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Reply to an email
[apiInstance replyToAliasEmailWithAliasId:aliasId
              emailId:emailId
              replyToAliasEmailOptions:replyToAliasEmailOptions
          completionHandler: ^(OAISentEmailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->replyToAliasEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**NSString***]()| ID of the alias that email belongs to | 
 **emailId** | [**NSString***]()| ID of the email that should be replied to | 
 **replyToAliasEmailOptions** | [**OAIReplyToAliasEmailOptions***](OAIReplyToAliasEmailOptions)| replyToAliasEmailOptions | 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendAliasEmail**
```objc
-(NSURLSessionTask*) sendAliasEmailWithAliasId: (NSString*) aliasId
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
        completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler;
```

Send an email from an alias inbox

Send an email from an alias. Replies to the email will be forwarded to the alias masked email address

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aliasId = @"aliasId_example"; // aliasId
OAISendEmailOptions* sendEmailOptions = [[OAISendEmailOptions alloc] init]; // Options for the email to be sent (optional)

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Send an email from an alias inbox
[apiInstance sendAliasEmailWithAliasId:aliasId
              sendEmailOptions:sendEmailOptions
          completionHandler: ^(OAISentEmailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->sendAliasEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**NSString***]()| aliasId | 
 **sendEmailOptions** | [**OAISendEmailOptions***](OAISendEmailOptions)| Options for the email to be sent | [optional] 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateAlias**
```objc
-(NSURLSessionTask*) updateAliasWithAliasId: (NSString*) aliasId
    updateAliasOptions: (OAIUpdateAliasOptions*) updateAliasOptions
        completionHandler: (void (^)(NSError* error)) handler;
```

Update an email alias

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aliasId = @"aliasId_example"; // aliasId
OAIUpdateAliasOptions* updateAliasOptions = [[OAIUpdateAliasOptions alloc] init]; // updateAliasOptions

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Update an email alias
[apiInstance updateAliasWithAliasId:aliasId
              updateAliasOptions:updateAliasOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->updateAlias: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**NSString***]()| aliasId | 
 **updateAliasOptions** | [**OAIUpdateAliasOptions***](OAIUpdateAliasOptions)| updateAliasOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

