# OAIApiUserControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJsonPropertyAsString**](OAIApiUserControllerApi#getjsonpropertyasstring) | **POST** /user/json/pluck | 
[**getUserInfo**](OAIApiUserControllerApi#getuserinfo) | **GET** /user/info | 


# **getJsonPropertyAsString**
```objc
-(NSURLSessionTask*) getJsonPropertyAsStringWithProperty: (NSString*) _property
    body: (NSObject*) body
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Utility function to extract properties from JSON objects in language where this is cumbersome.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _property = @"_property_example"; // JSON property name or dot separated path selector such as `a.b.c`
NSObject* body = NULL; // 

OAIApiUserControllerApi*apiInstance = [[OAIApiUserControllerApi alloc] init];

[apiInstance getJsonPropertyAsStringWithProperty:_property
              body:body
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIApiUserControllerApi->getJsonPropertyAsString: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_property** | **NSString***| JSON property name or dot separated path selector such as &#x60;a.b.c&#x60; | 
 **body** | **NSObject***|  | 

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUserInfo**
```objc
-(NSURLSessionTask*) getUserInfoWithCompletionHandler: 
        (void (^)(OAIUserInfoDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIApiUserControllerApi*apiInstance = [[OAIApiUserControllerApi alloc] init];

[apiInstance getUserInfoWithCompletionHandler: 
          ^(OAIUserInfoDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIApiUserControllerApi->getUserInfo: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIUserInfoDto***](OAIUserInfoDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

