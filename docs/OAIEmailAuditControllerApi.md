# OAIEmailAuditControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compareEmailAudits**](OAIEmailAuditControllerApi#compareemailaudits) | **GET** /email-audits/{auditId}/compare/{otherAuditId} | Compare two email audits
[**createEmailAudit**](OAIEmailAuditControllerApi#createemailaudit) | **POST** /email-audits | Create email audit
[**deleteEmailAudit**](OAIEmailAuditControllerApi#deleteemailaudit) | **DELETE** /email-audits/{auditId} | Delete email audit
[**getEmailAudit**](OAIEmailAuditControllerApi#getemailaudit) | **GET** /email-audits/{auditId} | Get email audit
[**getEmailAudits**](OAIEmailAuditControllerApi#getemailaudits) | **GET** /email-audits | List email audits


# **compareEmailAudits**
```objc
-(NSURLSessionTask*) compareEmailAuditsWithAuditId: (NSString*) auditId
    otherAuditId: (NSString*) otherAuditId
        completionHandler: (void (^)(OAIEmailAuditComparisonDto* output, NSError* error)) handler;
```

Compare two email audits

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* auditId = @"auditId_example"; // 
NSString* otherAuditId = @"otherAuditId_example"; // 

OAIEmailAuditControllerApi*apiInstance = [[OAIEmailAuditControllerApi alloc] init];

// Compare two email audits
[apiInstance compareEmailAuditsWithAuditId:auditId
              otherAuditId:otherAuditId
          completionHandler: ^(OAIEmailAuditComparisonDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailAuditControllerApi->compareEmailAudits: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditId** | [**NSString***]()|  | 
 **otherAuditId** | [**NSString***]()|  | 

### Return type

[**OAIEmailAuditComparisonDto***](OAIEmailAuditComparisonDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createEmailAudit**
```objc
-(NSURLSessionTask*) createEmailAuditWithCreateEmailAuditOptions: (OAICreateEmailAuditOptions*) createEmailAuditOptions
        completionHandler: (void (^)(OAIEmailAuditDto* output, NSError* error)) handler;
```

Create email audit

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateEmailAuditOptions* createEmailAuditOptions = [[OAICreateEmailAuditOptions alloc] init]; // 

OAIEmailAuditControllerApi*apiInstance = [[OAIEmailAuditControllerApi alloc] init];

// Create email audit
[apiInstance createEmailAuditWithCreateEmailAuditOptions:createEmailAuditOptions
          completionHandler: ^(OAIEmailAuditDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailAuditControllerApi->createEmailAudit: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmailAuditOptions** | [**OAICreateEmailAuditOptions***](OAICreateEmailAuditOptions)|  | 

### Return type

[**OAIEmailAuditDto***](OAIEmailAuditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmailAudit**
```objc
-(NSURLSessionTask*) deleteEmailAuditWithAuditId: (NSString*) auditId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete email audit

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* auditId = @"auditId_example"; // 

OAIEmailAuditControllerApi*apiInstance = [[OAIEmailAuditControllerApi alloc] init];

// Delete email audit
[apiInstance deleteEmailAuditWithAuditId:auditId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailAuditControllerApi->deleteEmailAudit: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailAudit**
```objc
-(NSURLSessionTask*) getEmailAuditWithAuditId: (NSString*) auditId
        completionHandler: (void (^)(OAIEmailAuditDto* output, NSError* error)) handler;
```

Get email audit

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* auditId = @"auditId_example"; // 

OAIEmailAuditControllerApi*apiInstance = [[OAIEmailAuditControllerApi alloc] init];

// Get email audit
[apiInstance getEmailAuditWithAuditId:auditId
          completionHandler: ^(OAIEmailAuditDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailAuditControllerApi->getEmailAudit: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditId** | [**NSString***]()|  | 

### Return type

[**OAIEmailAuditDto***](OAIEmailAuditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailAudits**
```objc
-(NSURLSessionTask*) getEmailAuditsWithEmailId: (NSString*) emailId
    since: (NSDate*) since
    before: (NSDate*) before
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<OAIEmailAuditDto>* output, NSError* error)) handler;
```

List email audits

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; //  (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSNumber* limit = @56; //  (optional)

OAIEmailAuditControllerApi*apiInstance = [[OAIEmailAuditControllerApi alloc] init];

// List email audits
[apiInstance getEmailAuditsWithEmailId:emailId
              since:since
              before:before
              limit:limit
          completionHandler: ^(NSArray<OAIEmailAuditDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailAuditControllerApi->getEmailAudits: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | [optional] 
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 
 **limit** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIEmailAuditDto>***](OAIEmailAuditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

