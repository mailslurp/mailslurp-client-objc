# OAITemplateControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](OAITemplateControllerApi#createtemplate) | **POST** /templates | Create a Template
[**deleteTemplate**](OAITemplateControllerApi#deletetemplate) | **DELETE** /templates/{templateId} | Delete Template
[**getAllTemplates**](OAITemplateControllerApi#getalltemplates) | **GET** /templates/paginated | Get all Templates in paginated format
[**getTemplate**](OAITemplateControllerApi#gettemplate) | **GET** /templates/{templateId} | Get Template
[**getTemplates**](OAITemplateControllerApi#gettemplates) | **GET** /templates | Get all Templates
[**updateTemplate**](OAITemplateControllerApi#updatetemplate) | **PUT** /templates/{templateId} | Update a Template


# **createTemplate**
```objc
-(NSURLSessionTask*) createTemplateWithCreateTemplateOptions: (OAICreateTemplateOptions*) createTemplateOptions
        completionHandler: (void (^)(OAITemplateDto* output, NSError* error)) handler;
```

Create a Template

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateTemplateOptions* createTemplateOptions = [[OAICreateTemplateOptions alloc] init]; // createTemplateOptions

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Create a Template
[apiInstance createTemplateWithCreateTemplateOptions:createTemplateOptions
          completionHandler: ^(OAITemplateDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITemplateControllerApi->createTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTemplateOptions** | [**OAICreateTemplateOptions***](OAICreateTemplateOptions)| createTemplateOptions | 

### Return type

[**OAITemplateDto***](OAITemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTemplate**
```objc
-(NSURLSessionTask*) deleteTemplateWithTemplateId: (NSString*) templateId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Template

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* templateId = @"templateId_example"; // templateId

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Delete Template
[apiInstance deleteTemplateWithTemplateId:templateId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAITemplateControllerApi->deleteTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**NSString***]()| templateId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllTemplates**
```objc
-(NSURLSessionTask*) getAllTemplatesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageTemplateProjection* output, NSError* error)) handler;
```

Get all Templates in paginated format

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Get all Templates in paginated format
[apiInstance getAllTemplatesWithPage:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageTemplateProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITemplateControllerApi->getAllTemplates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageTemplateProjection***](OAIPageTemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplate**
```objc
-(NSURLSessionTask*) getTemplateWithTemplateId: (NSString*) templateId
        completionHandler: (void (^)(OAITemplateDto* output, NSError* error)) handler;
```

Get Template

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* templateId = @"templateId_example"; // templateId

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Get Template
[apiInstance getTemplateWithTemplateId:templateId
          completionHandler: ^(OAITemplateDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITemplateControllerApi->getTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**NSString***]()| templateId | 

### Return type

[**OAITemplateDto***](OAITemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplates**
```objc
-(NSURLSessionTask*) getTemplatesWithCompletionHandler: 
        (void (^)(NSArray<OAITemplateProjection>* output, NSError* error)) handler;
```

Get all Templates

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Get all Templates
[apiInstance getTemplatesWithCompletionHandler: 
          ^(NSArray<OAITemplateProjection>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITemplateControllerApi->getTemplates: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAITemplateProjection>***](OAITemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateTemplate**
```objc
-(NSURLSessionTask*) updateTemplateWithTemplateId: (NSString*) templateId
    createTemplateOptions: (OAICreateTemplateOptions*) createTemplateOptions
        completionHandler: (void (^)(OAITemplateDto* output, NSError* error)) handler;
```

Update a Template

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* templateId = @"templateId_example"; // templateId
OAICreateTemplateOptions* createTemplateOptions = [[OAICreateTemplateOptions alloc] init]; // createTemplateOptions

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Update a Template
[apiInstance updateTemplateWithTemplateId:templateId
              createTemplateOptions:createTemplateOptions
          completionHandler: ^(OAITemplateDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITemplateControllerApi->updateTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**NSString***]()| templateId | 
 **createTemplateOptions** | [**OAICreateTemplateOptions***](OAICreateTemplateOptions)| createTemplateOptions | 

### Return type

[**OAITemplateDto***](OAITemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

