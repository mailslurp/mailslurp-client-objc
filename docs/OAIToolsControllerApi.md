# OAIToolsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkEmailFeaturesClientSupport**](OAIToolsControllerApi#checkemailfeaturesclientsupport) | **POST** /tools/check-email-features-client-support | Check email client support for email HTML and CSS features
[**createNewFakeEmailAddress**](OAIToolsControllerApi#createnewfakeemailaddress) | **POST** /tools/fake-email | Create a new email address using the fake email domains
[**deleteNewFakeEmailAddress**](OAIToolsControllerApi#deletenewfakeemailaddress) | **DELETE** /tools/fake-email | Delete a fake email address using the fake email domains
[**generateBimiRecord**](OAIToolsControllerApi#generatebimirecord) | **POST** /tools/generate-bimi-record | Create a BIMI record policy
[**generateDmarcRecord**](OAIToolsControllerApi#generatedmarcrecord) | **POST** /tools/generate-dmarc-record | Create a DMARC record policy
[**generateMtaStsRecord**](OAIToolsControllerApi#generatemtastsrecord) | **POST** /tools/generate-mta-sts-record | Create a TLS reporting record policy
[**generateTlsReportingRecord**](OAIToolsControllerApi#generatetlsreportingrecord) | **POST** /tools/generate-tls-reporting-record | Create a TLS reporting record policy
[**getFakeEmailByEmailAddress**](OAIToolsControllerApi#getfakeemailbyemailaddress) | **GET** /tools/fake-email/byEmailAddress | 
[**getFakeEmailById**](OAIToolsControllerApi#getfakeemailbyid) | **GET** /tools/fake-email | Get a fake email by its ID
[**getFakeEmailRaw**](OAIToolsControllerApi#getfakeemailraw) | **GET** /tools/fake-email/html | Get raw fake email content
[**getFakeEmailsForAddress**](OAIToolsControllerApi#getfakeemailsforaddress) | **GET** /tools/fake-emails | Get fake emails for an address
[**lookupBimiDomain**](OAIToolsControllerApi#lookupbimidomain) | **POST** /tools/lookup-bimi-domain | Lookup a BIMI record policy
[**lookupDmarcDomain**](OAIToolsControllerApi#lookupdmarcdomain) | **POST** /tools/lookup-dmarc-domain | Lookup a DMARC record policy
[**lookupMtaStsDomain**](OAIToolsControllerApi#lookupmtastsdomain) | **POST** /tools/lookup-mta-sts-domain | Lookup a MTA-STS domain policy
[**lookupTlsReportingDomain**](OAIToolsControllerApi#lookuptlsreportingdomain) | **POST** /tools/lookup-tls-reporting-domain | Lookup a TLS reporting domain policy


# **checkEmailFeaturesClientSupport**
```objc
-(NSURLSessionTask*) checkEmailFeaturesClientSupportWithCheckEmailFeaturesClientSupportOptions: (OAICheckEmailFeaturesClientSupportOptions*) checkEmailFeaturesClientSupportOptions
        completionHandler: (void (^)(OAICheckEmailFeaturesClientSupportResults* output, NSError* error)) handler;
```

Check email client support for email HTML and CSS features

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICheckEmailFeaturesClientSupportOptions* checkEmailFeaturesClientSupportOptions = [[OAICheckEmailFeaturesClientSupportOptions alloc] init]; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Check email client support for email HTML and CSS features
[apiInstance checkEmailFeaturesClientSupportWithCheckEmailFeaturesClientSupportOptions:checkEmailFeaturesClientSupportOptions
          completionHandler: ^(OAICheckEmailFeaturesClientSupportResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->checkEmailFeaturesClientSupport: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkEmailFeaturesClientSupportOptions** | [**OAICheckEmailFeaturesClientSupportOptions***](OAICheckEmailFeaturesClientSupportOptions)|  | 

### Return type

[**OAICheckEmailFeaturesClientSupportResults***](OAICheckEmailFeaturesClientSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createNewFakeEmailAddress**
```objc
-(NSURLSessionTask*) createNewFakeEmailAddressWithCompletionHandler: 
        (void (^)(OAINewFakeEmailAddressResult* output, NSError* error)) handler;
```

Create a new email address using the fake email domains

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Create a new email address using the fake email domains
[apiInstance createNewFakeEmailAddressWithCompletionHandler: 
          ^(OAINewFakeEmailAddressResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->createNewFakeEmailAddress: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAINewFakeEmailAddressResult***](OAINewFakeEmailAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteNewFakeEmailAddress**
```objc
-(NSURLSessionTask*) deleteNewFakeEmailAddressWithEmailAddress: (NSString*) emailAddress
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a fake email address using the fake email domains

Delete a fake email address using the fake email domains

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailAddress = @"emailAddress_example"; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Delete a fake email address using the fake email domains
[apiInstance deleteNewFakeEmailAddressWithEmailAddress:emailAddress
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->deleteNewFakeEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateBimiRecord**
```objc
-(NSURLSessionTask*) generateBimiRecordWithGenerateBimiRecordOptions: (OAIGenerateBimiRecordOptions*) generateBimiRecordOptions
        completionHandler: (void (^)(OAIGenerateBimiRecordResults* output, NSError* error)) handler;
```

Create a BIMI record policy

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIGenerateBimiRecordOptions* generateBimiRecordOptions = [[OAIGenerateBimiRecordOptions alloc] init]; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Create a BIMI record policy
[apiInstance generateBimiRecordWithGenerateBimiRecordOptions:generateBimiRecordOptions
          completionHandler: ^(OAIGenerateBimiRecordResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->generateBimiRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateBimiRecordOptions** | [**OAIGenerateBimiRecordOptions***](OAIGenerateBimiRecordOptions)|  | 

### Return type

[**OAIGenerateBimiRecordResults***](OAIGenerateBimiRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateDmarcRecord**
```objc
-(NSURLSessionTask*) generateDmarcRecordWithGenerateDmarcRecordOptions: (OAIGenerateDmarcRecordOptions*) generateDmarcRecordOptions
        completionHandler: (void (^)(OAIGenerateDmarcRecordResults* output, NSError* error)) handler;
```

Create a DMARC record policy

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIGenerateDmarcRecordOptions* generateDmarcRecordOptions = [[OAIGenerateDmarcRecordOptions alloc] init]; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Create a DMARC record policy
[apiInstance generateDmarcRecordWithGenerateDmarcRecordOptions:generateDmarcRecordOptions
          completionHandler: ^(OAIGenerateDmarcRecordResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->generateDmarcRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateDmarcRecordOptions** | [**OAIGenerateDmarcRecordOptions***](OAIGenerateDmarcRecordOptions)|  | 

### Return type

[**OAIGenerateDmarcRecordResults***](OAIGenerateDmarcRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateMtaStsRecord**
```objc
-(NSURLSessionTask*) generateMtaStsRecordWithGenerateMtaStsRecordOptions: (OAIGenerateMtaStsRecordOptions*) generateMtaStsRecordOptions
        completionHandler: (void (^)(OAIGenerateMtaStsRecordResults* output, NSError* error)) handler;
```

Create a TLS reporting record policy

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIGenerateMtaStsRecordOptions* generateMtaStsRecordOptions = [[OAIGenerateMtaStsRecordOptions alloc] init]; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Create a TLS reporting record policy
[apiInstance generateMtaStsRecordWithGenerateMtaStsRecordOptions:generateMtaStsRecordOptions
          completionHandler: ^(OAIGenerateMtaStsRecordResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->generateMtaStsRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateMtaStsRecordOptions** | [**OAIGenerateMtaStsRecordOptions***](OAIGenerateMtaStsRecordOptions)|  | 

### Return type

[**OAIGenerateMtaStsRecordResults***](OAIGenerateMtaStsRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateTlsReportingRecord**
```objc
-(NSURLSessionTask*) generateTlsReportingRecordWithGenerateTlsReportingRecordOptions: (OAIGenerateTlsReportingRecordOptions*) generateTlsReportingRecordOptions
        completionHandler: (void (^)(OAIGenerateTlsReportingRecordResults* output, NSError* error)) handler;
```

Create a TLS reporting record policy

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIGenerateTlsReportingRecordOptions* generateTlsReportingRecordOptions = [[OAIGenerateTlsReportingRecordOptions alloc] init]; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Create a TLS reporting record policy
[apiInstance generateTlsReportingRecordWithGenerateTlsReportingRecordOptions:generateTlsReportingRecordOptions
          completionHandler: ^(OAIGenerateTlsReportingRecordResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->generateTlsReportingRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateTlsReportingRecordOptions** | [**OAIGenerateTlsReportingRecordOptions***](OAIGenerateTlsReportingRecordOptions)|  | 

### Return type

[**OAIGenerateTlsReportingRecordResults***](OAIGenerateTlsReportingRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getFakeEmailByEmailAddress**
```objc
-(NSURLSessionTask*) getFakeEmailByEmailAddressWithEmailAddress: (NSString*) emailAddress
        completionHandler: (void (^)(OAIFakeEmailResult* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailAddress = @"emailAddress_example"; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

[apiInstance getFakeEmailByEmailAddressWithEmailAddress:emailAddress
          completionHandler: ^(OAIFakeEmailResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->getFakeEmailByEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **NSString***|  | 

### Return type

[**OAIFakeEmailResult***](OAIFakeEmailResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getFakeEmailById**
```objc
-(NSURLSessionTask*) getFakeEmailByIdWithId: (NSString*) _id
        completionHandler: (void (^)(OAIFakeEmailResult* output, NSError* error)) handler;
```

Get a fake email by its ID

Get a fake email by its ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Get a fake email by its ID
[apiInstance getFakeEmailByIdWithId:_id
          completionHandler: ^(OAIFakeEmailResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->getFakeEmailById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIFakeEmailResult***](OAIFakeEmailResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getFakeEmailRaw**
```objc
-(NSURLSessionTask*) getFakeEmailRawWithId: (NSString*) _id
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get raw fake email content

Retrieve the raw content of a fake email by its ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Get raw fake email content
[apiInstance getFakeEmailRawWithId:_id
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->getFakeEmailRaw: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=utf-8, text/html;charset=utf-8, text/plain; charset=utf-8, text/html; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getFakeEmailsForAddress**
```objc
-(NSURLSessionTask*) getFakeEmailsForAddressWithEmailAddress: (NSString*) emailAddress
    page: (NSNumber*) page
        completionHandler: (void (^)(NSArray<OAIFakeEmailPreview>* output, NSError* error)) handler;
```

Get fake emails for an address

Get fake emails for an address

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailAddress = @"emailAddress_example"; // 
NSNumber* page = @56; //  (optional)

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Get fake emails for an address
[apiInstance getFakeEmailsForAddressWithEmailAddress:emailAddress
              page:page
          completionHandler: ^(NSArray<OAIFakeEmailPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->getFakeEmailsForAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **NSString***|  | 
 **page** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIFakeEmailPreview>***](OAIFakeEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupBimiDomain**
```objc
-(NSURLSessionTask*) lookupBimiDomainWithLookupBimiDomainOptions: (OAILookupBimiDomainOptions*) lookupBimiDomainOptions
        completionHandler: (void (^)(OAILookupBimiDomainResults* output, NSError* error)) handler;
```

Lookup a BIMI record policy

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAILookupBimiDomainOptions* lookupBimiDomainOptions = [[OAILookupBimiDomainOptions alloc] init]; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Lookup a BIMI record policy
[apiInstance lookupBimiDomainWithLookupBimiDomainOptions:lookupBimiDomainOptions
          completionHandler: ^(OAILookupBimiDomainResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->lookupBimiDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookupBimiDomainOptions** | [**OAILookupBimiDomainOptions***](OAILookupBimiDomainOptions)|  | 

### Return type

[**OAILookupBimiDomainResults***](OAILookupBimiDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupDmarcDomain**
```objc
-(NSURLSessionTask*) lookupDmarcDomainWithLookupDmarcDomainOptions: (OAILookupDmarcDomainOptions*) lookupDmarcDomainOptions
        completionHandler: (void (^)(OAILookupDmarcDomainResults* output, NSError* error)) handler;
```

Lookup a DMARC record policy

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAILookupDmarcDomainOptions* lookupDmarcDomainOptions = [[OAILookupDmarcDomainOptions alloc] init]; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Lookup a DMARC record policy
[apiInstance lookupDmarcDomainWithLookupDmarcDomainOptions:lookupDmarcDomainOptions
          completionHandler: ^(OAILookupDmarcDomainResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->lookupDmarcDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookupDmarcDomainOptions** | [**OAILookupDmarcDomainOptions***](OAILookupDmarcDomainOptions)|  | 

### Return type

[**OAILookupDmarcDomainResults***](OAILookupDmarcDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupMtaStsDomain**
```objc
-(NSURLSessionTask*) lookupMtaStsDomainWithLookupMtaStsDomainOptions: (OAILookupMtaStsDomainOptions*) lookupMtaStsDomainOptions
        completionHandler: (void (^)(OAILookupMtaStsDomainResults* output, NSError* error)) handler;
```

Lookup a MTA-STS domain policy

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAILookupMtaStsDomainOptions* lookupMtaStsDomainOptions = [[OAILookupMtaStsDomainOptions alloc] init]; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Lookup a MTA-STS domain policy
[apiInstance lookupMtaStsDomainWithLookupMtaStsDomainOptions:lookupMtaStsDomainOptions
          completionHandler: ^(OAILookupMtaStsDomainResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->lookupMtaStsDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookupMtaStsDomainOptions** | [**OAILookupMtaStsDomainOptions***](OAILookupMtaStsDomainOptions)|  | 

### Return type

[**OAILookupMtaStsDomainResults***](OAILookupMtaStsDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupTlsReportingDomain**
```objc
-(NSURLSessionTask*) lookupTlsReportingDomainWithLookupTlsReportingDomainOptions: (OAILookupTlsReportingDomainOptions*) lookupTlsReportingDomainOptions
        completionHandler: (void (^)(OAILookupTlsReportingDomainResults* output, NSError* error)) handler;
```

Lookup a TLS reporting domain policy

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAILookupTlsReportingDomainOptions* lookupTlsReportingDomainOptions = [[OAILookupTlsReportingDomainOptions alloc] init]; // 

OAIToolsControllerApi*apiInstance = [[OAIToolsControllerApi alloc] init];

// Lookup a TLS reporting domain policy
[apiInstance lookupTlsReportingDomainWithLookupTlsReportingDomainOptions:lookupTlsReportingDomainOptions
          completionHandler: ^(OAILookupTlsReportingDomainResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIToolsControllerApi->lookupTlsReportingDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookupTlsReportingDomainOptions** | [**OAILookupTlsReportingDomainOptions***](OAILookupTlsReportingDomainOptions)|  | 

### Return type

[**OAILookupTlsReportingDomainResults***](OAILookupTlsReportingDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

