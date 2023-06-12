# OAIEmailVerificationControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getValidationRequests**](OAIEmailVerificationControllerApi#getvalidationrequests) | **GET** /email-verification/validation-requests | Validate a list of email addresses. Per unit billing. See your plan for pricing.
[**validateEmailAddressList**](OAIEmailVerificationControllerApi#validateemailaddresslist) | **POST** /email-verification/email-address-list | Validate a list of email addresses. Per unit billing. See your plan for pricing.


# **getValidationRequests**
```objc
-(NSURLSessionTask*) getValidationRequestsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    isValid: (NSNumber*) isValid
        completionHandler: (void (^)(OAIPageEmailValidationRequest* output, NSError* error)) handler;
```

Validate a list of email addresses. Per unit billing. See your plan for pricing.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size for paginated result list. (optional) (default to @20)
NSString* sort = @"DESC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSNumber* isValid = @56; // Filter where email is valid is true or false (optional)

OAIEmailVerificationControllerApi*apiInstance = [[OAIEmailVerificationControllerApi alloc] init];

// Validate a list of email addresses. Per unit billing. See your plan for pricing.
[apiInstance getValidationRequestsWithPage:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
              isValid:isValid
          completionHandler: ^(OAIPageEmailValidationRequest* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailVerificationControllerApi->getValidationRequests: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size for paginated result list. | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;DESC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **isValid** | **NSNumber***| Filter where email is valid is true or false | [optional] 

### Return type

[**OAIPageEmailValidationRequest***](OAIPageEmailValidationRequest)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateEmailAddressList**
```objc
-(NSURLSessionTask*) validateEmailAddressListWithValidateEmailAddressListOptions: (OAIValidateEmailAddressListOptions*) validateEmailAddressListOptions
        completionHandler: (void (^)(OAIValidateEmailAddressListResult* output, NSError* error)) handler;
```

Validate a list of email addresses. Per unit billing. See your plan for pricing.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIValidateEmailAddressListOptions* validateEmailAddressListOptions = [[OAIValidateEmailAddressListOptions alloc] init]; // 

OAIEmailVerificationControllerApi*apiInstance = [[OAIEmailVerificationControllerApi alloc] init];

// Validate a list of email addresses. Per unit billing. See your plan for pricing.
[apiInstance validateEmailAddressListWithValidateEmailAddressListOptions:validateEmailAddressListOptions
          completionHandler: ^(OAIValidateEmailAddressListResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailVerificationControllerApi->validateEmailAddressList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateEmailAddressListOptions** | [**OAIValidateEmailAddressListOptions***](OAIValidateEmailAddressListOptions)|  | 

### Return type

[**OAIValidateEmailAddressListResult***](OAIValidateEmailAddressListResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

