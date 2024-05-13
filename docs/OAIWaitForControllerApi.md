# OAIWaitForControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**waitFor**](OAIWaitForControllerApi#waitfor) | **POST** /waitFor | Wait for an email to match the provided filter conditions such as subject contains keyword.
[**waitForEmailCount**](OAIWaitForControllerApi#waitforemailcount) | **GET** /waitForEmailCount | Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
[**waitForLatestEmail**](OAIWaitForControllerApi#waitforlatestemail) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
[**waitForLatestSms**](OAIWaitForControllerApi#waitforlatestsms) | **POST** /waitForLatestSms | Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
[**waitForMatchingEmails**](OAIWaitForControllerApi#waitformatchingemails) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**waitForMatchingFirstEmail**](OAIWaitForControllerApi#waitformatchingfirstemail) | **POST** /waitForMatchingFirstEmail | Wait for or return the first email that matches provided MatchOptions array
[**waitForNthEmail**](OAIWaitForControllerApi#waitfornthemail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified. If index doesn&#39;t exist waits for it to exist or timeout to occur.
[**waitForSms**](OAIWaitForControllerApi#waitforsms) | **POST** /waitForSms | Wait for an SMS message to match the provided filter conditions such as body contains keyword.


# **waitFor**
```objc
-(NSURLSessionTask*) waitForWithWaitForConditions: (OAIWaitForConditions*) waitForConditions
        completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler;
```

Wait for an email to match the provided filter conditions such as subject contains keyword.

Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIWaitForConditions* waitForConditions = [[OAIWaitForConditions alloc] init]; // 

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait for an email to match the provided filter conditions such as subject contains keyword.
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
 **waitForConditions** | [**OAIWaitForConditions***](OAIWaitForConditions)|  | 

### Return type

[**NSArray<OAIEmailPreview>***](OAIEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForEmailCount**
```objc
-(NSURLSessionTask*) waitForEmailCountWithInboxId: (NSString*) inboxId
    count: (NSNumber*) count
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    before: (NSDate*) before
    since: (NSDate*) since
    sort: (NSString*) sort
    delay: (NSNumber*) delay
        completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler;
```

Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs

If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Id of the inbox we are fetching emails from
NSNumber* count = @56; // Number of emails to wait for. Must be greater that 1
NSNumber* timeout = @56; // Max milliseconds to wait (optional)
NSNumber* unreadOnly = @(NO); // Optional filter for unread only (optional) (default to @(NO))
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were received before the given timestamp (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were received after the given timestamp (optional)
NSString* sort = @"sort_example"; // Sort direction (optional)
NSNumber* delay = @56; // Max milliseconds delay between calls (optional)

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
[apiInstance waitForEmailCountWithInboxId:inboxId
              count:count
              timeout:timeout
              unreadOnly:unreadOnly
              before:before
              since:since
              sort:sort
              delay:delay
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
 **inboxId** | [**NSString***]()| Id of the inbox we are fetching emails from | 
 **count** | **NSNumber***| Number of emails to wait for. Must be greater that 1 | 
 **timeout** | **NSNumber***| Max milliseconds to wait | [optional] 
 **unreadOnly** | **NSNumber***| Optional filter for unread only | [optional] [default to @(NO)]
 **before** | **NSDate***| Filter for emails that were received before the given timestamp | [optional] 
 **since** | **NSDate***| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **NSString***| Sort direction | [optional] 
 **delay** | **NSNumber***| Max milliseconds delay between calls | [optional] 

### Return type

[**NSArray<OAIEmailPreview>***](OAIEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForLatestEmail**
```objc
-(NSURLSessionTask*) waitForLatestEmailWithInboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    before: (NSDate*) before
    since: (NSDate*) since
    sort: (NSString*) sort
    delay: (NSNumber*) delay
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
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were before after the given timestamp (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were received after the given timestamp (optional)
NSString* sort = @"sort_example"; // Sort direction (optional)
NSNumber* delay = @56; // Max milliseconds delay between calls (optional)

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Fetch inbox's latest email or if empty wait for an email to arrive
[apiInstance waitForLatestEmailWithInboxId:inboxId
              timeout:timeout
              unreadOnly:unreadOnly
              before:before
              since:since
              sort:sort
              delay:delay
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
 **inboxId** | [**NSString***]()| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **NSNumber***| Max milliseconds to wait | [optional] 
 **unreadOnly** | **NSNumber***| Optional filter for unread only. | [optional] [default to @(NO)]
 **before** | **NSDate***| Filter for emails that were before after the given timestamp | [optional] 
 **since** | **NSDate***| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **NSString***| Sort direction | [optional] 
 **delay** | **NSNumber***| Max milliseconds delay between calls | [optional] 

### Return type

[**OAIEmail***](OAIEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForLatestSms**
```objc
-(NSURLSessionTask*) waitForLatestSmsWithWaitForSingleSmsOptions: (OAIWaitForSingleSmsOptions*) waitForSingleSmsOptions
        completionHandler: (void (^)(OAISmsDto* output, NSError* error)) handler;
```

Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.

Wait until a phone number meets given conditions or return immediately if already met

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIWaitForSingleSmsOptions* waitForSingleSmsOptions = [[OAIWaitForSingleSmsOptions alloc] init]; // 

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
[apiInstance waitForLatestSmsWithWaitForSingleSmsOptions:waitForSingleSmsOptions
          completionHandler: ^(OAISmsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWaitForControllerApi->waitForLatestSms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waitForSingleSmsOptions** | [**OAIWaitForSingleSmsOptions***](OAIWaitForSingleSmsOptions)|  | 

### Return type

[**OAISmsDto***](OAISmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForMatchingEmails**
```objc
-(NSURLSessionTask*) waitForMatchingEmailsWithInboxId: (NSString*) inboxId
    count: (NSNumber*) count
    matchOptions: (OAIMatchOptions*) matchOptions
    before: (NSDate*) before
    since: (NSDate*) since
    sort: (NSString*) sort
    delay: (NSNumber*) delay
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
        completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler;
```

Wait or return list of emails that match simple matching patterns

Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Id of the inbox we are fetching emails from
NSNumber* count = @56; // Number of emails to wait for. Must be greater or equal to 1
OAIMatchOptions* matchOptions = [[OAIMatchOptions alloc] init]; // 
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were received before the given timestamp (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were received after the given timestamp (optional)
NSString* sort = @"sort_example"; // Sort direction (optional)
NSNumber* delay = @56; // Max milliseconds delay between calls (optional)
NSNumber* timeout = @56; // Max milliseconds to wait (optional)
NSNumber* unreadOnly = @(NO); // Optional filter for unread only (optional) (default to @(NO))

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait or return list of emails that match simple matching patterns
[apiInstance waitForMatchingEmailsWithInboxId:inboxId
              count:count
              matchOptions:matchOptions
              before:before
              since:since
              sort:sort
              delay:delay
              timeout:timeout
              unreadOnly:unreadOnly
          completionHandler: ^(NSArray<OAIEmailPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWaitForControllerApi->waitForMatchingEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Id of the inbox we are fetching emails from | 
 **count** | **NSNumber***| Number of emails to wait for. Must be greater or equal to 1 | 
 **matchOptions** | [**OAIMatchOptions***](OAIMatchOptions)|  | 
 **before** | **NSDate***| Filter for emails that were received before the given timestamp | [optional] 
 **since** | **NSDate***| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **NSString***| Sort direction | [optional] 
 **delay** | **NSNumber***| Max milliseconds delay between calls | [optional] 
 **timeout** | **NSNumber***| Max milliseconds to wait | [optional] 
 **unreadOnly** | **NSNumber***| Optional filter for unread only | [optional] [default to @(NO)]

### Return type

[**NSArray<OAIEmailPreview>***](OAIEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForMatchingFirstEmail**
```objc
-(NSURLSessionTask*) waitForMatchingFirstEmailWithInboxId: (NSString*) inboxId
    matchOptions: (OAIMatchOptions*) matchOptions
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    since: (NSDate*) since
    before: (NSDate*) before
    sort: (NSString*) sort
    delay: (NSNumber*) delay
        completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler;
```

Wait for or return the first email that matches provided MatchOptions array

Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Id of the inbox we are matching an email for
OAIMatchOptions* matchOptions = [[OAIMatchOptions alloc] init]; // 
NSNumber* timeout = @56; // Max milliseconds to wait (optional)
NSNumber* unreadOnly = @(NO); // Optional filter for unread only (optional) (default to @(NO))
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were received after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were received before the given timestamp (optional)
NSString* sort = @"sort_example"; // Sort direction (optional)
NSNumber* delay = @56; // Max milliseconds delay between calls (optional)

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait for or return the first email that matches provided MatchOptions array
[apiInstance waitForMatchingFirstEmailWithInboxId:inboxId
              matchOptions:matchOptions
              timeout:timeout
              unreadOnly:unreadOnly
              since:since
              before:before
              sort:sort
              delay:delay
          completionHandler: ^(OAIEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWaitForControllerApi->waitForMatchingFirstEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Id of the inbox we are matching an email for | 
 **matchOptions** | [**OAIMatchOptions***](OAIMatchOptions)|  | 
 **timeout** | **NSNumber***| Max milliseconds to wait | [optional] 
 **unreadOnly** | **NSNumber***| Optional filter for unread only | [optional] [default to @(NO)]
 **since** | **NSDate***| Filter for emails that were received after the given timestamp | [optional] 
 **before** | **NSDate***| Filter for emails that were received before the given timestamp | [optional] 
 **sort** | **NSString***| Sort direction | [optional] 
 **delay** | **NSNumber***| Max milliseconds delay between calls | [optional] 

### Return type

[**OAIEmail***](OAIEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForNthEmail**
```objc
-(NSURLSessionTask*) waitForNthEmailWithInboxId: (NSString*) inboxId
    index: (NSNumber*) index
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    since: (NSDate*) since
    before: (NSDate*) before
    sort: (NSString*) sort
    delay: (NSNumber*) delay
        completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler;
```

Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.

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
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were received after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter for emails that were received before the given timestamp (optional)
NSString* sort = @"sort_example"; // Sort direction (optional)
NSNumber* delay = @56; // Max milliseconds delay between calls (optional)

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
[apiInstance waitForNthEmailWithInboxId:inboxId
              index:index
              timeout:timeout
              unreadOnly:unreadOnly
              since:since
              before:before
              sort:sort
              delay:delay
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
 **inboxId** | [**NSString***]()| Id of the inbox you are fetching emails from | [optional] 
 **index** | **NSNumber***| Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] [default to @0]
 **timeout** | **NSNumber***| Max milliseconds to wait for the nth email if not already present | [optional] 
 **unreadOnly** | **NSNumber***| Optional filter for unread only | [optional] [default to @(NO)]
 **since** | **NSDate***| Filter for emails that were received after the given timestamp | [optional] 
 **before** | **NSDate***| Filter for emails that were received before the given timestamp | [optional] 
 **sort** | **NSString***| Sort direction | [optional] 
 **delay** | **NSNumber***| Max milliseconds delay between calls | [optional] 

### Return type

[**OAIEmail***](OAIEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForSms**
```objc
-(NSURLSessionTask*) waitForSmsWithWaitForSmsConditions: (OAIWaitForSmsConditions*) waitForSmsConditions
        completionHandler: (void (^)(NSArray<OAISmsPreview>* output, NSError* error)) handler;
```

Wait for an SMS message to match the provided filter conditions such as body contains keyword.

Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIWaitForSmsConditions* waitForSmsConditions = [[OAIWaitForSmsConditions alloc] init]; // 

OAIWaitForControllerApi*apiInstance = [[OAIWaitForControllerApi alloc] init];

// Wait for an SMS message to match the provided filter conditions such as body contains keyword.
[apiInstance waitForSmsWithWaitForSmsConditions:waitForSmsConditions
          completionHandler: ^(NSArray<OAISmsPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWaitForControllerApi->waitForSms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waitForSmsConditions** | [**OAIWaitForSmsConditions***](OAIWaitForSmsConditions)|  | 

### Return type

[**NSArray<OAISmsPreview>***](OAISmsPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

