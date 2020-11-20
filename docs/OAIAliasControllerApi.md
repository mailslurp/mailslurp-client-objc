# OAIAliasControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlias**](OAIAliasControllerApi.md#createalias) | **POST** /aliases | Create an email alias
[**createAnonymousAlias**](OAIAliasControllerApi.md#createanonymousalias) | **POST** /aliases/anonymous | Create an anonymous email alias
[**deleteAlias**](OAIAliasControllerApi.md#deletealias) | **DELETE** /aliases/{aliasId} | Delete an owned alias
[**getAlias**](OAIAliasControllerApi.md#getalias) | **GET** /aliases/{aliasId} | Get an email alias
[**getAliases**](OAIAliasControllerApi.md#getaliases) | **GET** /aliases | Get all email aliases
[**updateAlias**](OAIAliasControllerApi.md#updatealias) | **PUT** /aliases/{aliasId} | Update an owned alias


# **createAlias**
```objc
-(NSURLSessionTask*) createAliasWithCreateOwnedAliasOptions: (OAICreateOwnedAliasOptions*) createOwnedAliasOptions
        completionHandler: (void (^)(NSError* error)) handler;
```

Create an email alias

Create an email alias belonging to a user ID. To create anonymous aliases use the `createAnonymousAlias` method.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateOwnedAliasOptions* createOwnedAliasOptions = [[OAICreateOwnedAliasOptions alloc] init]; // createOwnedAliasOptions

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Create an email alias
[apiInstance createAliasWithCreateOwnedAliasOptions:createOwnedAliasOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->createAlias: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOwnedAliasOptions** | [**OAICreateOwnedAliasOptions***](OAICreateOwnedAliasOptions.md)| createOwnedAliasOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAnonymousAlias**
```objc
-(NSURLSessionTask*) createAnonymousAliasWithCreateAnonymousAliasOptions: (OAICreateAnonymousAliasOptions*) createAnonymousAliasOptions
        completionHandler: (void (^)(OAIAlias* output, NSError* error)) handler;
```

Create an anonymous email alias

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateAnonymousAliasOptions* createAnonymousAliasOptions = [[OAICreateAnonymousAliasOptions alloc] init]; // createAnonymousAliasOptions

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Create an anonymous email alias
[apiInstance createAnonymousAliasWithCreateAnonymousAliasOptions:createAnonymousAliasOptions
          completionHandler: ^(OAIAlias* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAliasControllerApi->createAnonymousAlias: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAnonymousAliasOptions** | [**OAICreateAnonymousAliasOptions***](OAICreateAnonymousAliasOptions.md)| createAnonymousAliasOptions | 

### Return type

[**OAIAlias***](OAIAlias.md)

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

Delete an owned alias

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aliasId = @"aliasId_example"; // aliasId

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Delete an owned alias
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
        completionHandler: (void (^)(OAIAlias* output, NSError* error)) handler;
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
          completionHandler: ^(OAIAlias* output, NSError* error) {
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

[**OAIAlias***](OAIAlias.md)

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

Get all email aliases

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

// Get all email aliases
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
    createOwnedAliasOptions: (OAICreateOwnedAliasOptions*) createOwnedAliasOptions
        completionHandler: (void (^)(NSError* error)) handler;
```

Update an owned alias

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aliasId = @"aliasId_example"; // aliasId
OAICreateOwnedAliasOptions* createOwnedAliasOptions = [[OAICreateOwnedAliasOptions alloc] init]; // createOwnedAliasOptions

OAIAliasControllerApi*apiInstance = [[OAIAliasControllerApi alloc] init];

// Update an owned alias
[apiInstance updateAliasWithAliasId:aliasId
              createOwnedAliasOptions:createOwnedAliasOptions
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
 **createOwnedAliasOptions** | [**OAICreateOwnedAliasOptions***](OAICreateOwnedAliasOptions.md)| createOwnedAliasOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

