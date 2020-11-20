# OAIWaitForControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**waitFor**](OAIWaitForControllerApi.md#waitfor) | **POST** /waitFor | Wait for conditions to be met
[**waitForEmailCount**](OAIWaitForControllerApi.md#waitforemailcount) | **GET** /waitForEmailCount | Wait for and return count number of emails 
[**waitForLatestEmail**](OAIWaitForControllerApi.md#waitforlatestemail) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
[**waitForMatchingEmail**](OAIWaitForControllerApi.md#waitformatchingemail) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**waitForNthEmail**](OAIWaitForControllerApi.md#waitfornthemail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified


# **waitFor**
```objc
-(NSURLSessionTask*) waitForWithWaitForConditions: (OAIWaitForConditions*) waitForConditions
        completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler;
```

Wait for conditions to be met

Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIWaitForConditions* waitForConditions = [[OAIWaitForConditions alloc] init]; // Conditions to wait for (optional)

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait for conditions to be met
[apiInstance waitForWithWaitForConditions:waitForConditions
          completionHandler: ^(NSArray<OAIEmailPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWaitForControllerApi->waitFor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waitForConditions** | [**OAIWaitForConditions***](OAIWaitForConditions.md)| Conditions to wait for | [optional] 

### Return type

[**NSArray<OAIEmailPreview>***](OAIEmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **waitForEmailCount**
```objc
-(NSURLSessionTask*) waitForEmailCountWithCount: (NSNumber*) count
    inboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
        completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler;
```

Wait for and return count number of emails 

If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* count = @56; // Number of emails to wait for. Must be greater that 1 (optional)
NSString* inboxId = @"inboxId_example"; // Id of the inbox we are fetching emails from (optional)
NSNumber* timeout = @56; // Max milliseconds to wait (optional)
NSNumber* unreadOnly = @(NO); // Optional filter for unread only (optional) (default to @(NO))

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait for and return count number of emails 
[apiInstance waitForEmailCountWithCount:count
              inboxId:inboxId
              timeout:timeout
              unreadOnly:unreadOnly
          completionHandler: ^(NSArray<OAIEmailPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWaitForControllerApi->waitForEmailCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSNumber***| Number of emails to wait for. Must be greater that 1 | [optional] 
 **inboxId** | [**NSString***](.md)| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **NSNumber***| Max milliseconds to wait | [optional] 
 **unreadOnly** | **NSNumber***| Optional filter for unread only | [optional] [default to @(NO)]

### Return type

[**NSArray<OAIEmailPreview>***](OAIEmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **waitForLatestEmail**
```objc
-(NSURLSessionTask*) waitForLatestEmailWithInboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
        completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler;
```

Fetch inbox's latest email or if empty wait for an email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Id of the inbox we are fetching emails from (optional)
NSNumber* timeout = @56; // Max milliseconds to wait (optional)
NSNumber* unreadOnly = @(NO); // Optional filter for unread only. (optional) (default to @(NO))

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Fetch inbox's latest email or if empty wait for an email to arrive
[apiInstance waitForLatestEmailWithInboxId:inboxId
              timeout:timeout
              unreadOnly:unreadOnly
          completionHandler: ^(OAIEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWaitForControllerApi->waitForLatestEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **NSNumber***| Max milliseconds to wait | [optional] 
 **unreadOnly** | **NSNumber***| Optional filter for unread only. | [optional] [default to @(NO)]

### Return type

[**OAIEmail***](OAIEmail.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **waitForMatchingEmail**
```objc
-(NSURLSessionTask*) waitForMatchingEmailWithMatchOptions: (OAIMatchOptions*) matchOptions
    count: (NSNumber*) count
    inboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
        completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler;
```

Wait or return list of emails that match simple matching patterns

Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIMatchOptions* matchOptions = [[OAIMatchOptions alloc] init]; // matchOptions
NSNumber* count = @56; // Number of emails to wait for. Must be greater that 1 (optional)
NSString* inboxId = @"inboxId_example"; // Id of the inbox we are fetching emails from (optional)
NSNumber* timeout = @56; // Max milliseconds to wait (optional)
NSNumber* unreadOnly = @(NO); // Optional filter for unread only (optional) (default to @(NO))

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait or return list of emails that match simple matching patterns
[apiInstance waitForMatchingEmailWithMatchOptions:matchOptions
              count:count
              inboxId:inboxId
              timeout:timeout
              unreadOnly:unreadOnly
          completionHandler: ^(NSArray<OAIEmailPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWaitForControllerApi->waitForMatchingEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matchOptions** | [**OAIMatchOptions***](OAIMatchOptions.md)| matchOptions | 
 **count** | **NSNumber***| Number of emails to wait for. Must be greater that 1 | [optional] 
 **inboxId** | [**NSString***](.md)| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **NSNumber***| Max milliseconds to wait | [optional] 
 **unreadOnly** | **NSNumber***| Optional filter for unread only | [optional] [default to @(NO)]

### Return type

[**NSArray<OAIEmailPreview>***](OAIEmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **waitForNthEmail**
```objc
-(NSURLSessionTask*) waitForNthEmailWithInboxId: (NSString*) inboxId
    index: (NSNumber*) index
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
        completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler;
```

Wait for or fetch the email with a given index in the inbox specified

If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Id of the inbox you are fetching emails from (optional)
NSNumber* index = @0; // Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1 (optional) (default to @0)
NSNumber* timeout = @56; // Max milliseconds to wait for the nth email if not already present (optional)
NSNumber* unreadOnly = @(NO); // Optional filter for unread only (optional) (default to @(NO))

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait for or fetch the email with a given index in the inbox specified
[apiInstance waitForNthEmailWithInboxId:inboxId
              index:index
              timeout:timeout
              unreadOnly:unreadOnly
          completionHandler: ^(OAIEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWaitForControllerApi->waitForNthEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| Id of the inbox you are fetching emails from | [optional] 
 **index** | **NSNumber***| Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] [default to @0]
 **timeout** | **NSNumber***| Max milliseconds to wait for the nth email if not already present | [optional] 
 **unreadOnly** | **NSNumber***| Optional filter for unread only | [optional] [default to @(NO)]

### Return type

[**OAIEmail***](OAIEmail.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

