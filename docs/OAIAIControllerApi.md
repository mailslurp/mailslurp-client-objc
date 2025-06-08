# OAIAIControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransformer**](OAIAIControllerApi#createtransformer) | **GET** /ai/transformer | List transformers
[**createTransformer1**](OAIAIControllerApi#createtransformer1) | **POST** /ai/transformer | Create a transformer for reuse in automations
[**createTransformerMappings**](OAIAIControllerApi#createtransformermappings) | **POST** /ai/transformer/mappings | Create transformer mapping
[**deleteTransformer**](OAIAIControllerApi#deletetransformer) | **DELETE** /ai/transformer/{id} | Delete a transformer
[**deleteTransformerMapping**](OAIAIControllerApi#deletetransformermapping) | **DELETE** /ai/transformer/mappings/{id} | Delete transformer mapping
[**deleteTransformers**](OAIAIControllerApi#deletetransformers) | **DELETE** /ai/transformer | Delete all transformers
[**generateStructuredContentFromAttachment**](OAIAIControllerApi#generatestructuredcontentfromattachment) | **POST** /ai/structured-content/attachment | Generate structured content for an attachment
[**generateStructuredContentFromEmail**](OAIAIControllerApi#generatestructuredcontentfromemail) | **POST** /ai/structured-content/email | Generate structured content for an email
[**generateStructuredContentFromSms**](OAIAIControllerApi#generatestructuredcontentfromsms) | **POST** /ai/structured-content/sms | Generate structured content for a TXT message
[**getTransformer**](OAIAIControllerApi#gettransformer) | **GET** /ai/transformer/{id} | Get a transformer
[**getTransformerMapping**](OAIAIControllerApi#gettransformermapping) | **GET** /ai/transformer/mappings/{id} | Get transformer mapping
[**getTransformerMappings**](OAIAIControllerApi#gettransformermappings) | **GET** /ai/transformer/mappings | Get transformer mappings
[**getTransformerResult**](OAIAIControllerApi#gettransformerresult) | **GET** /ai/transformer/results/{id} | Get transformer result
[**getTransformerResults**](OAIAIControllerApi#gettransformerresults) | **GET** /ai/transformer/results | Get transformer results
[**validateStructuredOutputSchema**](OAIAIControllerApi#validatestructuredoutputschema) | **POST** /ai/structured-content/validate | Validate structured content schema


# **createTransformer**
```objc
-(NSURLSessionTask*) createTransformerWithOptions: (OAIAITranformCreateOptions*) options
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageAITransformProjection* output, NSError* error)) handler;
```

List transformers

List all AI transforms

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIAITranformCreateOptions* options = [[OAIAITranformCreateOptions alloc] init]; // 
NSNumber* page = @0; //  (optional) (default to @0)
NSNumber* size = @20; // Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// List transformers
[apiInstance createTransformerWithOptions:options
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageAITransformProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->createTransformer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **options** | [**OAIAITranformCreateOptions***]()|  | 
 **page** | **NSNumber***|  | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageAITransformProjection***](OAIPageAITransformProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createTransformer1**
```objc
-(NSURLSessionTask*) createTransformer1WithAITranformCreateOptions: (OAIAITranformCreateOptions*) aITranformCreateOptions
        completionHandler: (void (^)(OAIAITransformDto* output, NSError* error)) handler;
```

Create a transformer for reuse in automations

Save an AI transform instructions and schema for use with webhooks and automations

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIAITranformCreateOptions* aITranformCreateOptions = [[OAIAITranformCreateOptions alloc] init]; // 

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Create a transformer for reuse in automations
[apiInstance createTransformer1WithAITranformCreateOptions:aITranformCreateOptions
          completionHandler: ^(OAIAITransformDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->createTransformer1: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aITranformCreateOptions** | [**OAIAITranformCreateOptions***](OAIAITranformCreateOptions)|  | 

### Return type

[**OAIAITransformDto***](OAIAITransformDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createTransformerMappings**
```objc
-(NSURLSessionTask*) createTransformerMappingsWithCreateAITransformerMappingOptions: (OAICreateAITransformerMappingOptions*) createAITransformerMappingOptions
        completionHandler: (void (^)(OAIAITransformMappingDto* output, NSError* error)) handler;
```

Create transformer mapping

Create AI transformer mappings to other entities

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateAITransformerMappingOptions* createAITransformerMappingOptions = [[OAICreateAITransformerMappingOptions alloc] init]; // 

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Create transformer mapping
[apiInstance createTransformerMappingsWithCreateAITransformerMappingOptions:createAITransformerMappingOptions
          completionHandler: ^(OAIAITransformMappingDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->createTransformerMappings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAITransformerMappingOptions** | [**OAICreateAITransformerMappingOptions***](OAICreateAITransformerMappingOptions)|  | 

### Return type

[**OAIAITransformMappingDto***](OAIAITransformMappingDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTransformer**
```objc
-(NSURLSessionTask*) deleteTransformerWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a transformer

Delete an AI transformer and schemas by ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Delete a transformer
[apiInstance deleteTransformerWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->deleteTransformer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTransformerMapping**
```objc
-(NSURLSessionTask*) deleteTransformerMappingWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete transformer mapping

Delete an AI transformer mapping

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of transform mapping

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Delete transformer mapping
[apiInstance deleteTransformerMappingWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->deleteTransformerMapping: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of transform mapping | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTransformers**
```objc
-(NSURLSessionTask*) deleteTransformersWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all transformers

Delete all AI transformers and schemas

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Delete all transformers
[apiInstance deleteTransformersWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->deleteTransformers: %@", error);
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

# **generateStructuredContentFromAttachment**
```objc
-(NSURLSessionTask*) generateStructuredContentFromAttachmentWithGenerateStructuredContentAttachmentOptions: (OAIGenerateStructuredContentAttachmentOptions*) generateStructuredContentAttachmentOptions
        completionHandler: (void (^)(OAIStructuredContentResultDto* output, NSError* error)) handler;
```

Generate structured content for an attachment

Use output schemas to extract data from an attachment using AI

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIGenerateStructuredContentAttachmentOptions* generateStructuredContentAttachmentOptions = [[OAIGenerateStructuredContentAttachmentOptions alloc] init]; // 

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Generate structured content for an attachment
[apiInstance generateStructuredContentFromAttachmentWithGenerateStructuredContentAttachmentOptions:generateStructuredContentAttachmentOptions
          completionHandler: ^(OAIStructuredContentResultDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->generateStructuredContentFromAttachment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateStructuredContentAttachmentOptions** | [**OAIGenerateStructuredContentAttachmentOptions***](OAIGenerateStructuredContentAttachmentOptions)|  | 

### Return type

[**OAIStructuredContentResultDto***](OAIStructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateStructuredContentFromEmail**
```objc
-(NSURLSessionTask*) generateStructuredContentFromEmailWithGenerateStructuredContentEmailOptions: (OAIGenerateStructuredContentEmailOptions*) generateStructuredContentEmailOptions
        completionHandler: (void (^)(OAIStructuredContentResultDto* output, NSError* error)) handler;
```

Generate structured content for an email

Use output schemas to extract data from an email using AI

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIGenerateStructuredContentEmailOptions* generateStructuredContentEmailOptions = [[OAIGenerateStructuredContentEmailOptions alloc] init]; // 

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Generate structured content for an email
[apiInstance generateStructuredContentFromEmailWithGenerateStructuredContentEmailOptions:generateStructuredContentEmailOptions
          completionHandler: ^(OAIStructuredContentResultDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->generateStructuredContentFromEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateStructuredContentEmailOptions** | [**OAIGenerateStructuredContentEmailOptions***](OAIGenerateStructuredContentEmailOptions)|  | 

### Return type

[**OAIStructuredContentResultDto***](OAIStructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateStructuredContentFromSms**
```objc
-(NSURLSessionTask*) generateStructuredContentFromSmsWithGenerateStructuredContentSmsOptions: (OAIGenerateStructuredContentSmsOptions*) generateStructuredContentSmsOptions
        completionHandler: (void (^)(OAIStructuredContentResultDto* output, NSError* error)) handler;
```

Generate structured content for a TXT message

Use output schemas to extract data from an SMS using AI

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIGenerateStructuredContentSmsOptions* generateStructuredContentSmsOptions = [[OAIGenerateStructuredContentSmsOptions alloc] init]; // 

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Generate structured content for a TXT message
[apiInstance generateStructuredContentFromSmsWithGenerateStructuredContentSmsOptions:generateStructuredContentSmsOptions
          completionHandler: ^(OAIStructuredContentResultDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->generateStructuredContentFromSms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateStructuredContentSmsOptions** | [**OAIGenerateStructuredContentSmsOptions***](OAIGenerateStructuredContentSmsOptions)|  | 

### Return type

[**OAIStructuredContentResultDto***](OAIStructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformer**
```objc
-(NSURLSessionTask*) getTransformerWithId: (NSString*) _id
        completionHandler: (void (^)(OAIAITransformDto* output, NSError* error)) handler;
```

Get a transformer

Get AI transformer and schemas by ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Get a transformer
[apiInstance getTransformerWithId:_id
          completionHandler: ^(OAIAITransformDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->getTransformer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIAITransformDto***](OAIAITransformDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerMapping**
```objc
-(NSURLSessionTask*) getTransformerMappingWithId: (NSString*) _id
        completionHandler: (void (^)(OAIAITransformMappingDto* output, NSError* error)) handler;
```

Get transformer mapping

Get an AI transformer mapping

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of transform mapping

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Get transformer mapping
[apiInstance getTransformerMappingWithId:_id
          completionHandler: ^(OAIAITransformMappingDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->getTransformerMapping: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of transform mapping | 

### Return type

[**OAIAITransformMappingDto***](OAIAITransformMappingDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerMappings**
```objc
-(NSURLSessionTask*) getTransformerMappingsWithAiTransformId: (NSString*) aiTransformId
    entityId: (NSString*) entityId
    entityType: (NSString*) entityType
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageAITransformMappingProjection* output, NSError* error)) handler;
```

Get transformer mappings

Get AI transformer mappings to other entities

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aiTransformId = @"aiTransformId_example"; //  (optional)
NSString* entityId = @"entityId_example"; //  (optional)
NSString* entityType = @"entityType_example"; //  (optional)
NSNumber* page = @0; //  (optional) (default to @0)
NSNumber* size = @20; // Optional page size. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Get transformer mappings
[apiInstance getTransformerMappingsWithAiTransformId:aiTransformId
              entityId:entityId
              entityType:entityType
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageAITransformMappingProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->getTransformerMappings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiTransformId** | [**NSString***]()|  | [optional] 
 **entityId** | [**NSString***]()|  | [optional] 
 **entityType** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageAITransformMappingProjection***](OAIPageAITransformMappingProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerResult**
```objc
-(NSURLSessionTask*) getTransformerResultWithId: (NSString*) _id
        completionHandler: (void (^)(OAIAITransformResultDto* output, NSError* error)) handler;
```

Get transformer result

Get AI transformer result

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of transform result

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Get transformer result
[apiInstance getTransformerResultWithId:_id
          completionHandler: ^(OAIAITransformResultDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->getTransformerResult: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of transform result | 

### Return type

[**OAIAITransformResultDto***](OAIAITransformResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerResults**
```objc
-(NSURLSessionTask*) getTransformerResultsWithAiTransformId: (NSString*) aiTransformId
    aiTransformMappingId: (NSString*) aiTransformMappingId
    entityId: (NSString*) entityId
    entityType: (NSString*) entityType
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageAITransformResultProjection* output, NSError* error)) handler;
```

Get transformer results

Get AI transformer results

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aiTransformId = @"aiTransformId_example"; //  (optional)
NSString* aiTransformMappingId = @"aiTransformMappingId_example"; //  (optional)
NSString* entityId = @"entityId_example"; //  (optional)
NSString* entityType = @"entityType_example"; //  (optional)
NSNumber* page = @0; //  (optional) (default to @0)
NSNumber* size = @20; // Optional page size. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Get transformer results
[apiInstance getTransformerResultsWithAiTransformId:aiTransformId
              aiTransformMappingId:aiTransformMappingId
              entityId:entityId
              entityType:entityType
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageAITransformResultProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->getTransformerResults: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiTransformId** | [**NSString***]()|  | [optional] 
 **aiTransformMappingId** | [**NSString***]()|  | [optional] 
 **entityId** | [**NSString***]()|  | [optional] 
 **entityType** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageAITransformResultProjection***](OAIPageAITransformResultProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateStructuredOutputSchema**
```objc
-(NSURLSessionTask*) validateStructuredOutputSchemaWithStructuredOutputSchema: (OAIStructuredOutputSchema*) structuredOutputSchema
        completionHandler: (void (^)(OAIStructuredOutputSchemaValidation* output, NSError* error)) handler;
```

Validate structured content schema

Check if a schema is valid and can be used to extract data using AI

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIStructuredOutputSchema* structuredOutputSchema = [[OAIStructuredOutputSchema alloc] init]; // 

OAIAIControllerApi*apiInstance = [[OAIAIControllerApi alloc] init];

// Validate structured content schema
[apiInstance validateStructuredOutputSchemaWithStructuredOutputSchema:structuredOutputSchema
          completionHandler: ^(OAIStructuredOutputSchemaValidation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAIControllerApi->validateStructuredOutputSchema: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structuredOutputSchema** | [**OAIStructuredOutputSchema***](OAIStructuredOutputSchema)|  | 

### Return type

[**OAIStructuredOutputSchemaValidation***](OAIStructuredOutputSchemaValidation)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

