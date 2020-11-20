# OAIMailServerControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describeMailServerDomain**](OAIMailServerControllerApi.md#describemailserverdomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**verifyEmailAddress**](OAIMailServerControllerApi.md#verifyemailaddress) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.


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
 **describeOptions** | [**OAIDescribeDomainOptions***](OAIDescribeDomainOptions.md)| describeOptions | 

### Return type

[**OAIDescribeMailServerDomainResult***](OAIDescribeMailServerDomainResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **verifyOptions** | [**OAIVerifyEmailAddressOptions***](OAIVerifyEmailAddressOptions.md)| verifyOptions | 

### Return type

[**OAIEmailVerificationResult***](OAIEmailVerificationResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

