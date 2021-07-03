# OAIMissedEmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllMissedEmails**](OAIMissedEmailControllerApi#getallmissedemails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**getMissedEmail**](OAIMissedEmailControllerApi#getmissedemail) | **GET** /missed-emails/{missedEmailId} | Get MissedEmail
[**waitForNthMissedEmail**](OAIMissedEmailControllerApi#waitfornthmissedemail) | **GET** /missed-emails/waitForNthMissedEmail | Wait for Nth missed email


# **getAllMissedEmails**
```objc
-(NSURLSessionTask*) getAllMissedEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
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


NSString* inboxId = @"inboxId_example"; // Optional inbox ID filter (optional)
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIMissedEmailControllerApi*apiInstance = [[OAIMissedEmailControllerApi alloc] init];

// Get all MissedEmails in paginated format
[apiInstance getAllMissedEmailsWithInboxId:inboxId
              page:page
              searchFilter:searchFilter
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
 **inboxId** | [**NSString***]()| Optional inbox ID filter | [optional] 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
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


NSString* missedEmailId = @"missedEmailId_example"; // missedEmailId

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
 **missedEmailId** | [**NSString***]()| missedEmailId | 

### Return type

[**OAIMissedEmail***](OAIMissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForNthMissedEmail**
```objc
-(NSURLSessionTask*) waitForNthMissedEmailWithInboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    index: (NSNumber*) index
        completionHandler: (void (^)(OAIMissedEmail* output, NSError* error)) handler;
```

Wait for Nth missed email

Wait for 0 based index missed email

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Optional inbox ID filter
NSNumber* timeout = @56; // Optional timeout milliseconds
NSNumber* index = @56; // Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1 (optional)

OAIMissedEmailControllerApi*apiInstance = [[OAIMissedEmailControllerApi alloc] init];

// Wait for Nth missed email
[apiInstance waitForNthMissedEmailWithInboxId:inboxId
              timeout:timeout
              index:index
          completionHandler: ^(OAIMissedEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMissedEmailControllerApi->waitForNthMissedEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Optional inbox ID filter | 
 **timeout** | **NSNumber***| Optional timeout milliseconds | 
 **index** | **NSNumber***| Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] 

### Return type

[**OAIMissedEmail***](OAIMissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

