# OAIInboxRulesetControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxRuleset**](OAIInboxRulesetControllerApi#createnewinboxruleset) | **POST** /rulesets | Create an inbox ruleset
[**deleteInboxRuleset**](OAIInboxRulesetControllerApi#deleteinboxruleset) | **DELETE** /rulesets/{id} | Delete an inbox ruleset
[**deleteInboxRulesets**](OAIInboxRulesetControllerApi#deleteinboxrulesets) | **DELETE** /rulesets | Delete inbox rulesets
[**getInboxRuleset**](OAIInboxRulesetControllerApi#getinboxruleset) | **GET** /rulesets/{id} | Get an inbox ruleset
[**getInboxRulesets**](OAIInboxRulesetControllerApi#getinboxrulesets) | **GET** /rulesets | List inbox rulesets


# **createNewInboxRuleset**
```objc
-(NSURLSessionTask*) createNewInboxRulesetWithCreateInboxRulesetOptions: (OAICreateInboxRulesetOptions*) createInboxRulesetOptions
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIInboxRulesetDto* output, NSError* error)) handler;
```

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateInboxRulesetOptions* createInboxRulesetOptions = [[OAICreateInboxRulesetOptions alloc] init]; // createInboxRulesetOptions
NSString* inboxId = @"inboxId_example"; // Inbox id to attach ruleset to (optional)

OAIInboxRulesetControllerApi*apiInstance = [[OAIInboxRulesetControllerApi alloc] init];

// Create an inbox ruleset
[apiInstance createNewInboxRulesetWithCreateInboxRulesetOptions:createInboxRulesetOptions
              inboxId:inboxId
          completionHandler: ^(OAIInboxRulesetDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxRulesetControllerApi->createNewInboxRuleset: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxRulesetOptions** | [**OAICreateInboxRulesetOptions***](OAICreateInboxRulesetOptions)| createInboxRulesetOptions | 
 **inboxId** | [**NSString***]()| Inbox id to attach ruleset to | [optional] 

### Return type

[**OAIInboxRulesetDto***](OAIInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRuleset**
```objc
-(NSURLSessionTask*) deleteInboxRulesetWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an inbox ruleset

Delete inbox ruleset

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox ruleset

OAIInboxRulesetControllerApi*apiInstance = [[OAIInboxRulesetControllerApi alloc] init];

// Delete an inbox ruleset
[apiInstance deleteInboxRulesetWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxRulesetControllerApi->deleteInboxRuleset: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox ruleset | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRulesets**
```objc
-(NSURLSessionTask*) deleteInboxRulesetsWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete inbox rulesets

Delete inbox rulesets. Accepts optional inboxId filter.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Optional inbox id to attach ruleset to (optional)

OAIInboxRulesetControllerApi*apiInstance = [[OAIInboxRulesetControllerApi alloc] init];

// Delete inbox rulesets
[apiInstance deleteInboxRulesetsWithInboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxRulesetControllerApi->deleteInboxRulesets: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Optional inbox id to attach ruleset to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRuleset**
```objc
-(NSURLSessionTask*) getInboxRulesetWithId: (NSString*) _id
        completionHandler: (void (^)(OAIInboxRulesetDto* output, NSError* error)) handler;
```

Get an inbox ruleset

Get inbox ruleset

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox ruleset

OAIInboxRulesetControllerApi*apiInstance = [[OAIInboxRulesetControllerApi alloc] init];

// Get an inbox ruleset
[apiInstance getInboxRulesetWithId:_id
          completionHandler: ^(OAIInboxRulesetDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxRulesetControllerApi->getInboxRuleset: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox ruleset | 

### Return type

[**OAIInboxRulesetDto***](OAIInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRulesets**
```objc
-(NSURLSessionTask*) getInboxRulesetsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageInboxRulesetProjection* output, NSError* error)) handler;
```

List inbox rulesets

List all rulesets attached to an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Optional inbox id to get rulesets from (optional)
NSNumber* page = @0; // Optional page index in inbox ruleset list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox ruleset list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIInboxRulesetControllerApi*apiInstance = [[OAIInboxRulesetControllerApi alloc] init];

// List inbox rulesets
[apiInstance getInboxRulesetsWithInboxId:inboxId
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageInboxRulesetProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxRulesetControllerApi->getInboxRulesets: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Optional inbox id to get rulesets from | [optional] 
 **page** | **NSNumber***| Optional page index in inbox ruleset list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox ruleset list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageInboxRulesetProjection***](OAIPageInboxRulesetProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

