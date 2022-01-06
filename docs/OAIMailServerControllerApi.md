# OAIMailServerControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describeMailServerDomain**](OAIMailServerControllerApi#describemailserverdomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**getDnsLookup**](OAIMailServerControllerApi#getdnslookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
[**getIpAddress**](OAIMailServerControllerApi#getipaddress) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
[**verifyEmailAddress**](OAIMailServerControllerApi#verifyemailaddress) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.


# **describeMailServerDomain**
```objc
-(NSURLSessionTask*) describeMailServerDomainWithDescribeDomainOptions: (OAIDescribeDomainOptions*) describeDomainOptions
        completionHandler: (void (^)(OAIDescribeMailServerDomainResult* output, NSError* error)) handler;
```

Get DNS Mail Server records for a domain

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIDescribeDomainOptions* describeDomainOptions = [[OAIDescribeDomainOptions alloc] init]; // 

OAIMailServerControllerApi*apiInstance = [[OAIMailServerControllerApi alloc] init];

// Get DNS Mail Server records for a domain
[apiInstance describeMailServerDomainWithDescribeDomainOptions:describeDomainOptions
          completionHandler: ^(OAIDescribeMailServerDomainResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMailServerControllerApi->describeMailServerDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **describeDomainOptions** | [**OAIDescribeDomainOptions***](OAIDescribeDomainOptions)|  | 

### Return type

[**OAIDescribeMailServerDomainResult***](OAIDescribeMailServerDomainResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDnsLookup**
```objc
-(NSURLSessionTask*) getDnsLookupWithDNSLookupOptions: (OAIDNSLookupOptions*) dNSLookupOptions
        completionHandler: (void (^)(OAIDNSLookupResults* output, NSError* error)) handler;
```

Lookup DNS records for a domain

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIDNSLookupOptions* dNSLookupOptions = [[OAIDNSLookupOptions alloc] init]; // 

OAIMailServerControllerApi*apiInstance = [[OAIMailServerControllerApi alloc] init];

// Lookup DNS records for a domain
[apiInstance getDnsLookupWithDNSLookupOptions:dNSLookupOptions
          completionHandler: ^(OAIDNSLookupResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMailServerControllerApi->getDnsLookup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dNSLookupOptions** | [**OAIDNSLookupOptions***](OAIDNSLookupOptions)|  | 

### Return type

[**OAIDNSLookupResults***](OAIDNSLookupResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getIpAddress**
```objc
-(NSURLSessionTask*) getIpAddressWithName: (NSString*) name
        completionHandler: (void (^)(OAIIPAddressResult* output, NSError* error)) handler;
```

Get IP address for a domain

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* name = @"name_example"; // 

OAIMailServerControllerApi*apiInstance = [[OAIMailServerControllerApi alloc] init];

// Get IP address for a domain
[apiInstance getIpAddressWithName:name
          completionHandler: ^(OAIIPAddressResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMailServerControllerApi->getIpAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 

### Return type

[**OAIIPAddressResult***](OAIIPAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verifyEmailAddress**
```objc
-(NSURLSessionTask*) verifyEmailAddressWithVerifyEmailAddressOptions: (OAIVerifyEmailAddressOptions*) verifyEmailAddressOptions
        completionHandler: (void (^)(OAIEmailVerificationResult* output, NSError* error)) handler;
```

Verify the existence of an email address at a given mail server.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIVerifyEmailAddressOptions* verifyEmailAddressOptions = [[OAIVerifyEmailAddressOptions alloc] init]; // 

OAIMailServerControllerApi*apiInstance = [[OAIMailServerControllerApi alloc] init];

// Verify the existence of an email address at a given mail server.
[apiInstance verifyEmailAddressWithVerifyEmailAddressOptions:verifyEmailAddressOptions
          completionHandler: ^(OAIEmailVerificationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMailServerControllerApi->verifyEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyEmailAddressOptions** | [**OAIVerifyEmailAddressOptions***](OAIVerifyEmailAddressOptions)|  | 

### Return type

[**OAIEmailVerificationResult***](OAIEmailVerificationResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

