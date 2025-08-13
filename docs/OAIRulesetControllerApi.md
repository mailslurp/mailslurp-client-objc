# OAIRulesetControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewRuleset**](OAIRulesetControllerApi#createnewruleset) | **POST** /rulesets | Create a ruleset
[**deleteRuleset**](OAIRulesetControllerApi#deleteruleset) | **DELETE** /rulesets/{id} | Delete a ruleset
[**deleteRulesets**](OAIRulesetControllerApi#deleterulesets) | **DELETE** /rulesets | Delete rulesets
[**getRuleset**](OAIRulesetControllerApi#getruleset) | **GET** /rulesets/{id} | Get a ruleset
[**getRulesets**](OAIRulesetControllerApi#getrulesets) | **GET** /rulesets | List rulesets block and allow lists
[**testInboxRulesetsForInbox**](OAIRulesetControllerApi#testinboxrulesetsforinbox) | **PUT** /rulesets | Test inbox rulesets for inbox
[**testNewRuleset**](OAIRulesetControllerApi#testnewruleset) | **PATCH** /rulesets | Test new ruleset
[**testRuleset**](OAIRulesetControllerApi#testruleset) | **POST** /rulesets/{id}/test | Test a ruleset
[**testRulesetReceiving**](OAIRulesetControllerApi#testrulesetreceiving) | **POST** /rulesets/test-receiving | Test receiving with rulesets
[**testRulesetSending**](OAIRulesetControllerApi#testrulesetsending) | **POST** /rulesets/test-sending | Test sending with rulesets


# **createNewRuleset**
```objc
-(NSURLSessionTask*) createNewRulesetWithCreateRulesetOptions: (OAICreateRulesetOptions*) createRulesetOptions
    inboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
        completionHandler: (void (^)(OAIRulesetDto* output, NSError* error)) handler;
```

Create a ruleset

Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateRulesetOptions* createRulesetOptions = [[OAICreateRulesetOptions alloc] init]; // 
NSString* inboxId = @"inboxId_example"; // Inbox id to attach ruleset to (optional)
NSString* phoneId = @"phoneId_example"; // Phone id to attach ruleset to (optional)

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// Create a ruleset
[apiInstance createNewRulesetWithCreateRulesetOptions:createRulesetOptions
              inboxId:inboxId
              phoneId:phoneId
          completionHandler: ^(OAIRulesetDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->createNewRuleset: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRulesetOptions** | [**OAICreateRulesetOptions***](OAICreateRulesetOptions)|  | 
 **inboxId** | [**NSString***]()| Inbox id to attach ruleset to | [optional] 
 **phoneId** | [**NSString***]()| Phone id to attach ruleset to | [optional] 

### Return type

[**OAIRulesetDto***](OAIRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteRuleset**
```objc
-(NSURLSessionTask*) deleteRulesetWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a ruleset

Delete ruleset

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of ruleset

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// Delete a ruleset
[apiInstance deleteRulesetWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->deleteRuleset: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of ruleset | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteRulesets**
```objc
-(NSURLSessionTask*) deleteRulesetsWithInboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete rulesets

Delete rulesets. Accepts optional inboxId or phoneId filters.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Optional inbox id to attach ruleset to (optional)
NSString* phoneId = @"phoneId_example"; //  (optional)

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// Delete rulesets
[apiInstance deleteRulesetsWithInboxId:inboxId
              phoneId:phoneId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->deleteRulesets: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Optional inbox id to attach ruleset to | [optional] 
 **phoneId** | [**NSString***]()|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRuleset**
```objc
-(NSURLSessionTask*) getRulesetWithId: (NSString*) _id
        completionHandler: (void (^)(OAIRulesetDto* output, NSError* error)) handler;
```

Get a ruleset

Get ruleset

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of ruleset

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// Get a ruleset
[apiInstance getRulesetWithId:_id
          completionHandler: ^(OAIRulesetDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->getRuleset: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of ruleset | 

### Return type

[**OAIRulesetDto***](OAIRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRulesets**
```objc
-(NSURLSessionTask*) getRulesetsWithInboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageRulesetDto* output, NSError* error)) handler;
```

List rulesets block and allow lists

List all rulesets attached to an inbox or phone or account

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Optional inbox id to get rulesets from (optional)
NSString* phoneId = @"phoneId_example"; // Optional phone id to get rulesets from (optional)
NSNumber* page = @0; // Optional page index in inbox ruleset list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox ruleset list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// List rulesets block and allow lists
[apiInstance getRulesetsWithInboxId:inboxId
              phoneId:phoneId
              page:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
          completionHandler: ^(OAIPageRulesetDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->getRulesets: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Optional inbox id to get rulesets from | [optional] 
 **phoneId** | [**NSString***]()| Optional phone id to get rulesets from | [optional] 
 **page** | **NSNumber***| Optional page index in inbox ruleset list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox ruleset list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageRulesetDto***](OAIPageRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxRulesetsForInbox**
```objc
-(NSURLSessionTask*) testInboxRulesetsForInboxWithInboxId: (NSString*) inboxId
    rulesetTestOptions: (OAIRulesetTestOptions*) rulesetTestOptions
        completionHandler: (void (^)(OAIInboxRulesetTestResult* output, NSError* error)) handler;
```

Test inbox rulesets for inbox

Test inbox rulesets for inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // ID of inbox
OAIRulesetTestOptions* rulesetTestOptions = [[OAIRulesetTestOptions alloc] init]; // 

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// Test inbox rulesets for inbox
[apiInstance testInboxRulesetsForInboxWithInboxId:inboxId
              rulesetTestOptions:rulesetTestOptions
          completionHandler: ^(OAIInboxRulesetTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->testInboxRulesetsForInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| ID of inbox | 
 **rulesetTestOptions** | [**OAIRulesetTestOptions***](OAIRulesetTestOptions)|  | 

### Return type

[**OAIInboxRulesetTestResult***](OAIInboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testNewRuleset**
```objc
-(NSURLSessionTask*) testNewRulesetWithTestNewInboxRulesetOptions: (OAITestNewInboxRulesetOptions*) testNewInboxRulesetOptions
        completionHandler: (void (^)(OAIInboxRulesetTestResult* output, NSError* error)) handler;
```

Test new ruleset

Test new ruleset

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAITestNewInboxRulesetOptions* testNewInboxRulesetOptions = [[OAITestNewInboxRulesetOptions alloc] init]; // 

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// Test new ruleset
[apiInstance testNewRulesetWithTestNewInboxRulesetOptions:testNewInboxRulesetOptions
          completionHandler: ^(OAIInboxRulesetTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->testNewRuleset: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testNewInboxRulesetOptions** | [**OAITestNewInboxRulesetOptions***](OAITestNewInboxRulesetOptions)|  | 

### Return type

[**OAIInboxRulesetTestResult***](OAIInboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testRuleset**
```objc
-(NSURLSessionTask*) testRulesetWithId: (NSString*) _id
    rulesetTestOptions: (OAIRulesetTestOptions*) rulesetTestOptions
        completionHandler: (void (^)(OAIInboxRulesetTestResult* output, NSError* error)) handler;
```

Test a ruleset

Test an inbox or phone ruleset

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of ruleset
OAIRulesetTestOptions* rulesetTestOptions = [[OAIRulesetTestOptions alloc] init]; // 

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// Test a ruleset
[apiInstance testRulesetWithId:_id
              rulesetTestOptions:rulesetTestOptions
          completionHandler: ^(OAIInboxRulesetTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->testRuleset: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of ruleset | 
 **rulesetTestOptions** | [**OAIRulesetTestOptions***](OAIRulesetTestOptions)|  | 

### Return type

[**OAIInboxRulesetTestResult***](OAIInboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testRulesetReceiving**
```objc
-(NSURLSessionTask*) testRulesetReceivingWithTestRulesetReceivingOptions: (OAITestRulesetReceivingOptions*) testRulesetReceivingOptions
        completionHandler: (void (^)(OAITestRulesetReceivingResult* output, NSError* error)) handler;
```

Test receiving with rulesets

Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAITestRulesetReceivingOptions* testRulesetReceivingOptions = [[OAITestRulesetReceivingOptions alloc] init]; // 

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// Test receiving with rulesets
[apiInstance testRulesetReceivingWithTestRulesetReceivingOptions:testRulesetReceivingOptions
          completionHandler: ^(OAITestRulesetReceivingResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->testRulesetReceiving: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testRulesetReceivingOptions** | [**OAITestRulesetReceivingOptions***](OAITestRulesetReceivingOptions)|  | 

### Return type

[**OAITestRulesetReceivingResult***](OAITestRulesetReceivingResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testRulesetSending**
```objc
-(NSURLSessionTask*) testRulesetSendingWithTestInboxRulesetSendingOptions: (OAITestInboxRulesetSendingOptions*) testInboxRulesetSendingOptions
        completionHandler: (void (^)(OAITestRulesetSendingResult* output, NSError* error)) handler;
```

Test sending with rulesets

Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAITestInboxRulesetSendingOptions* testInboxRulesetSendingOptions = [[OAITestInboxRulesetSendingOptions alloc] init]; // 

OAIRulesetControllerApi*apiInstance = [[OAIRulesetControllerApi alloc] init];

// Test sending with rulesets
[apiInstance testRulesetSendingWithTestInboxRulesetSendingOptions:testInboxRulesetSendingOptions
          completionHandler: ^(OAITestRulesetSendingResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRulesetControllerApi->testRulesetSending: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testInboxRulesetSendingOptions** | [**OAITestInboxRulesetSendingOptions***](OAITestInboxRulesetSendingOptions)|  | 

### Return type

[**OAITestRulesetSendingResult***](OAITestRulesetSendingResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

