# OAIAliasControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlias**](OAIAliasControllerApi.md#createalias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**deleteAlias**](OAIAliasControllerApi.md#deletealias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**getAlias**](OAIAliasControllerApi.md#getalias) | **GET** /aliases/{aliasId} | Get an email alias
[**getAliases**](OAIAliasControllerApi.md#getaliases) | **GET** /aliases | Get all email aliases you have created
[**updateAlias**](OAIAliasControllerApi.md#updatealias) | **PUT** /aliases/{aliasId} | Update an email alias


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
 **createAliasOptions** | [**OAICreateAliasOptions***](OAICreateAliasOptions.md)| createAliasOptions | 

### Return type

[**OAIAliasDto***](OAIAliasDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **aliasId** | [**NSString***](.md)| aliasId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **aliasId** | [**NSString***](.md)| aliasId | 

### Return type

[**OAIAliasDto***](OAIAliasDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAliases**
```objc
-(NSURLSessionTask*) getAliasesWithPage: (NSNumber*) page
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


NSNumber* page = @0; // Optional page index in alias list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in alias list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Get all email aliases you have created
[apiInstance getAliasesWithPage:page
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
 **page** | **NSNumber***| Optional page index in alias list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in alias list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageAlias***](OAIPageAlias.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **aliasId** | [**NSString***](.md)| aliasId | 
 **updateAliasOptions** | [**OAIUpdateAliasOptions***](OAIUpdateAliasOptions.md)| updateAliasOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

