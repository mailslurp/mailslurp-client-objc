# OAITemplateControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](OAITemplateControllerApi#createtemplate) | **POST** /templates | Create a Template
[**deleteTemplate**](OAITemplateControllerApi#deletetemplate) | **DELETE** /templates/{templateId} | Delete email template
[**getAllTemplates**](OAITemplateControllerApi#getalltemplates) | **GET** /templates/paginated | List templates
[**getTemplate**](OAITemplateControllerApi#gettemplate) | **GET** /templates/{templateId} | Get template
[**getTemplatePreviewHtml**](OAITemplateControllerApi#gettemplatepreviewhtml) | **GET** /templates/{templateId}/preview/html | Get template preview HTML
[**getTemplatePreviewJson**](OAITemplateControllerApi#gettemplatepreviewjson) | **GET** /templates/{templateId}/preview/json | Get template preview Json
[**getTemplates**](OAITemplateControllerApi#gettemplates) | **GET** /templates | List templates
[**updateTemplate**](OAITemplateControllerApi#updatetemplate) | **PUT** /templates/{templateId} | Update template


# **createTemplate**
```objc
-(NSURLSessionTask*) createTemplateWithCreateTemplateOptions: (OAICreateTemplateOptions*) createTemplateOptions
        completionHandler: (void (^)(OAITemplateDto* output, NSError* error)) handler;
```

Create a Template

Create an email template with variables for use with templated transactional emails.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateTemplateOptions* createTemplateOptions = [[OAICreateTemplateOptions alloc] init]; // 

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
 **createTemplateOptions** | [**OAICreateTemplateOptions***](OAICreateTemplateOptions)|  | 

### Return type

[**OAITemplateDto***](OAITemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTemplate**
```objc
-(NSURLSessionTask*) deleteTemplateWithTemplateId: (NSString*) templateId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete email template

Delete template

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* templateId = @"templateId_example"; // Template ID

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Delete email template
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
 **templateId** | [**NSString***]()| Template ID | 

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
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageTemplateProjection* output, NSError* error)) handler;
```

List templates

Get all templates in paginated format

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
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// List templates
[apiInstance getAllTemplatesWithPage:page
              size:size
              sort:sort
              since:since
              before:before
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
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageTemplateProjection***](OAIPageTemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplate**
```objc
-(NSURLSessionTask*) getTemplateWithTemplateId: (NSString*) templateId
        completionHandler: (void (^)(OAITemplateDto* output, NSError* error)) handler;
```

Get template

Get email template

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* templateId = @"templateId_example"; // Template ID

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Get template
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
 **templateId** | [**NSString***]()| Template ID | 

### Return type

[**OAITemplateDto***](OAITemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplatePreviewHtml**
```objc
-(NSURLSessionTask*) getTemplatePreviewHtmlWithTemplateId: (NSString*) templateId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get template preview HTML

Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* templateId = @"templateId_example"; // Template ID

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Get template preview HTML
[apiInstance getTemplatePreviewHtmlWithTemplateId:templateId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITemplateControllerApi->getTemplatePreviewHtml: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**NSString***]()| Template ID | 

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=utf-8, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplatePreviewJson**
```objc
-(NSURLSessionTask*) getTemplatePreviewJsonWithTemplateId: (NSString*) templateId
        completionHandler: (void (^)(OAITemplatePreview* output, NSError* error)) handler;
```

Get template preview Json

Get email template preview with passed template variables in JSON format. Pass template variables as query params.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* templateId = @"templateId_example"; // Template ID

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Get template preview Json
[apiInstance getTemplatePreviewJsonWithTemplateId:templateId
          completionHandler: ^(OAITemplatePreview* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITemplateControllerApi->getTemplatePreviewJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**NSString***]()| Template ID | 

### Return type

[**OAITemplatePreview***](OAITemplatePreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplates**
```objc
-(NSURLSessionTask*) getTemplatesWithCompletionHandler: 
        (void (^)(NSArray<OAITemplateProjection>* output, NSError* error)) handler;
```

List templates

Get all templates

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// List templates
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateTemplate**
```objc
-(NSURLSessionTask*) updateTemplateWithTemplateId: (NSString*) templateId
    createTemplateOptions: (OAICreateTemplateOptions*) createTemplateOptions
        completionHandler: (void (^)(OAITemplateDto* output, NSError* error)) handler;
```

Update template

Update email template

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* templateId = @"templateId_example"; // Template ID
OAICreateTemplateOptions* createTemplateOptions = [[OAICreateTemplateOptions alloc] init]; // 

OAITemplateControllerApi*apiInstance = [[OAITemplateControllerApi alloc] init];

// Update template
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
 **templateId** | [**NSString***]()| Template ID | 
 **createTemplateOptions** | [**OAICreateTemplateOptions***](OAICreateTemplateOptions)|  | 

### Return type

[**OAITemplateDto***](OAITemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

