# OAIApiInternalControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSamlUserOrCreate**](OAIApiInternalControllerApi#getsamluserorcreate) | **POST** /internal/saml/user | 


# **getSamlUserOrCreate**
```objc
-(NSURLSessionTask*) getSamlUserOrCreateWithKey: (NSString*) key
    getOrCreateSamlUserOptions: (OAIGetOrCreateSamlUserOptions*) getOrCreateSamlUserOptions
        completionHandler: (void (^)(OAIUserDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* key = @"key_example"; // 
OAIGetOrCreateSamlUserOptions* getOrCreateSamlUserOptions = [[OAIGetOrCreateSamlUserOptions alloc] init]; // 

OAIApiInternalControllerApi*apiInstance = [[OAIApiInternalControllerApi alloc] init];

[apiInstance getSamlUserOrCreateWithKey:key
              getOrCreateSamlUserOptions:getOrCreateSamlUserOptions
          completionHandler: ^(OAIUserDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIApiInternalControllerApi->getSamlUserOrCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***|  | 
 **getOrCreateSamlUserOptions** | [**OAIGetOrCreateSamlUserOptions***](OAIGetOrCreateSamlUserOptions)|  | 

### Return type

[**OAIUserDto***](OAIUserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

