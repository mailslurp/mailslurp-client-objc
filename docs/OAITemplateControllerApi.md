# OAITemplateControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](OAITemplateControllerApi.md#createtemplate) | **POST** /templates | Create a Template
[**deleteTemplate**](OAITemplateControllerApi.md#deletetemplate) | **DELETE** /templates/{TemplateId} | Delete Template
[**getAllTemplates**](OAITemplateControllerApi.md#getalltemplates) | **GET** /templates/paginated | Get all Templates in paginated format
[**getTemplate**](OAITemplateControllerApi.md#gettemplate) | **GET** /templates/{TemplateId} | Get Template
[**getTemplates**](OAITemplateControllerApi.md#gettemplates) | **GET** /templates | Get all Templates


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
 **createTemplateOptions** | [**OAICreateTemplateOptions***](OAICreateTemplateOptions.md)| createTemplateOptions | 

### Return type

[**OAITemplateDto***](OAITemplateDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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


NSString* templateId = @"templateId_example"; // TemplateId

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
 **templateId** | [**NSString***](.md)| TemplateId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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


NSNumber* page = @0; // Optional page index in inbox list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox list pagination (optional) (default to @20)
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
 **page** | **NSNumber***| Optional page index in inbox list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageTemplateProjection***](OAIPageTemplateProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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


NSString* templateId = @"templateId_example"; // TemplateId

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
 **templateId** | [**NSString***](.md)| TemplateId | 

### Return type

[**OAITemplateDto***](OAITemplateDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

[**NSArray<OAITemplateProjection>***](OAITemplateProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

