# OAIMissedEmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllMissedEmails**](OAIMissedEmailControllerApi#getallmissedemails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**getMissedEmail**](OAIMissedEmailControllerApi#getmissedemail) | **GET** /missed-emails/{MissedEmailId} | Get MissedEmail


# **getAllMissedEmails**
```objc
-(NSURLSessionTask*) getAllMissedEmailsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageMissedEmailProjection* output, NSError* error)) handler;
```

Get all MissedEmails in paginated format

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in inbox list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIMissedEmailControllerApi*apiInstance = [[OAIMissedEmailControllerApi alloc] init];

// Get all MissedEmails in paginated format
[apiInstance getAllMissedEmailsWithPage:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageMissedEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMissedEmailControllerApi->getAllMissedEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in inbox list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageMissedEmailProjection***](OAIPageMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedEmail**
```objc
-(NSURLSessionTask*) getMissedEmailWithMissedEmailId: (NSString*) missedEmailId
        completionHandler: (void (^)(OAIMissedEmail* output, NSError* error)) handler;
```

Get MissedEmail

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* missedEmailId = @"missedEmailId_example"; // MissedEmailId

OAIMissedEmailControllerApi*apiInstance = [[OAIMissedEmailControllerApi alloc] init];

// Get MissedEmail
[apiInstance getMissedEmailWithMissedEmailId:missedEmailId
          completionHandler: ^(OAIMissedEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMissedEmailControllerApi->getMissedEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **missedEmailId** | [**NSString***]()| MissedEmailId | 

### Return type

[**OAIMissedEmail***](OAIMissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)
