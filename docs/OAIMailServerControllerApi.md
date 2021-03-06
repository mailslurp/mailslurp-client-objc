# OAIMailServerControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describeMailServerDomain**](OAIMailServerControllerApi#describemailserverdomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**getDnsLookup**](OAIMailServerControllerApi#getdnslookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
[**getIpAddress**](OAIMailServerControllerApi#getipaddress) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
[**verifyEmailAddress**](OAIMailServerControllerApi#verifyemailaddress) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.


# **describeMailServerDomain**
```objc
-(NSURLSessionTask*) describeMailServerDomainWithDescribeOptions: (OAIDescribeDomainOptions*) describeOptions
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


OAIDescribeDomainOptions* describeOptions = [[OAIDescribeDomainOptions alloc] init]; // describeOptions

OAIMailServerControllerApi*apiInstance = [[OAIMailServerControllerApi alloc] init];

// Get DNS Mail Server records for a domain
[apiInstance describeMailServerDomainWithDescribeOptions:describeOptions
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
 **describeOptions** | [**OAIDescribeDomainOptions***](OAIDescribeDomainOptions)| describeOptions | 

### Return type

[**OAIDescribeMailServerDomainResult***](OAIDescribeMailServerDomainResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDnsLookup**
```objc
-(NSURLSessionTask*) getDnsLookupWithDnsLookupOptions: (OAIDNSLookupOptions*) dnsLookupOptions
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


OAIDNSLookupOptions* dnsLookupOptions = [[OAIDNSLookupOptions alloc] init]; // dnsLookupOptions

OAIMailServerControllerApi*apiInstance = [[OAIMailServerControllerApi alloc] init];

// Lookup DNS records for a domain
[apiInstance getDnsLookupWithDnsLookupOptions:dnsLookupOptions
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
 **dnsLookupOptions** | [**OAIDNSLookupOptions***](OAIDNSLookupOptions)| dnsLookupOptions | 

### Return type

[**OAIDNSLookupResults***](OAIDNSLookupResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

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


NSString* name = @"name_example"; // name

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
 **name** | **NSString***| name | 

### Return type

[**OAIIPAddressResult***](OAIIPAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verifyEmailAddress**
```objc
-(NSURLSessionTask*) verifyEmailAddressWithVerifyOptions: (OAIVerifyEmailAddressOptions*) verifyOptions
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


OAIVerifyEmailAddressOptions* verifyOptions = [[OAIVerifyEmailAddressOptions alloc] init]; // verifyOptions

OAIMailServerControllerApi*apiInstance = [[OAIMailServerControllerApi alloc] init];

// Verify the existence of an email address at a given mail server.
[apiInstance verifyEmailAddressWithVerifyOptions:verifyOptions
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
 **verifyOptions** | [**OAIVerifyEmailAddressOptions***](OAIVerifyEmailAddressOptions)| verifyOptions | 

### Return type

[**OAIEmailVerificationResult***](OAIEmailVerificationResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

