# OAIAIControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateStructuredContentFromEmail**](OAIAIControllerApi#generatestructuredcontentfromemail) | **POST** /ai/structured-content/email | Generate structured content for an email
[**validateStructuredOutputSchema**](OAIAIControllerApi#validatestructuredoutputschema) | **POST** /ai/structured-content/validate | Validate structured content schema


# **generateStructuredContentFromEmail**
```objc
-(NSURLSessionTask*) generateStructuredContentFromEmailWithGenerateStructuredContentEmailOptions: (OAIGenerateStructuredContentEmailOptions*) generateStructuredContentEmailOptions
        completionHandler: (void (^)(OAIStructuredContentResult* output, NSError* error)) handler;
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
          completionHandler: ^(OAIStructuredContentResult* output, NSError* error) {
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

[**OAIStructuredContentResult***](OAIStructuredContentResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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

