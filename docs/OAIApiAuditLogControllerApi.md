# OAIApiAuditLogControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditLogByEventId**](OAIApiAuditLogControllerApi#getauditlogbyeventid) | **GET** /audit-logs/{eventId} | 
[**getAuditLogs**](OAIApiAuditLogControllerApi#getauditlogs) | **GET** /audit-logs | 
[**searchAuditLogs**](OAIApiAuditLogControllerApi#searchauditlogs) | **POST** /audit-logs/search | 


# **getAuditLogByEventId**
```objc
-(NSURLSessionTask*) getAuditLogByEventIdWithEventId: (NSString*) eventId
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIAuditLogEventDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* eventId = @"eventId_example"; // 
NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)

OAIApiAuditLogControllerApi*apiInstance = [[OAIApiAuditLogControllerApi alloc] init];

[apiInstance getAuditLogByEventIdWithEventId:eventId
              since:since
              before:before
          completionHandler: ^(OAIAuditLogEventDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIApiAuditLogControllerApi->getAuditLogByEventId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **NSString***|  | 
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 

### Return type

[**OAIAuditLogEventDto***](OAIAuditLogEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAuditLogs**
```objc
-(NSURLSessionTask*) getAuditLogsWithSince: (NSDate*) since
    before: (NSDate*) before
    action: (NSString*) action
    userId: (NSString*) userId
    actorUserId: (NSString*) actorUserId
    targetUserId: (NSString*) targetUserId
    resourceType: (NSString*) resourceType
    resourceId: (NSString*) resourceId
    outcome: (NSString*) outcome
    requestId: (NSString*) requestId
    ipAddress: (NSString*) ipAddress
    pageSize: (NSNumber*) pageSize
    cursor: (NSString*) cursor
        completionHandler: (void (^)(OAIAuditLogPageDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSString* action = @"action_example"; //  (optional)
NSString* userId = @"userId_example"; //  (optional)
NSString* actorUserId = @"actorUserId_example"; //  (optional)
NSString* targetUserId = @"targetUserId_example"; //  (optional)
NSString* resourceType = @"resourceType_example"; //  (optional)
NSString* resourceId = @"resourceId_example"; //  (optional)
NSString* outcome = @"outcome_example"; //  (optional)
NSString* requestId = @"requestId_example"; //  (optional)
NSString* ipAddress = @"ipAddress_example"; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* cursor = @"cursor_example"; //  (optional)

OAIApiAuditLogControllerApi*apiInstance = [[OAIApiAuditLogControllerApi alloc] init];

[apiInstance getAuditLogsWithSince:since
              before:before
              action:action
              userId:userId
              actorUserId:actorUserId
              targetUserId:targetUserId
              resourceType:resourceType
              resourceId:resourceId
              outcome:outcome
              requestId:requestId
              ipAddress:ipAddress
              pageSize:pageSize
              cursor:cursor
          completionHandler: ^(OAIAuditLogPageDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIApiAuditLogControllerApi->getAuditLogs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 
 **action** | **NSString***|  | [optional] 
 **userId** | [**NSString***]()|  | [optional] 
 **actorUserId** | [**NSString***]()|  | [optional] 
 **targetUserId** | [**NSString***]()|  | [optional] 
 **resourceType** | **NSString***|  | [optional] 
 **resourceId** | **NSString***|  | [optional] 
 **outcome** | **NSString***|  | [optional] 
 **requestId** | **NSString***|  | [optional] 
 **ipAddress** | **NSString***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **cursor** | **NSString***|  | [optional] 

### Return type

[**OAIAuditLogPageDto***](OAIAuditLogPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **searchAuditLogs**
```objc
-(NSURLSessionTask*) searchAuditLogsWithAuditLogSearchOptions: (OAIAuditLogSearchOptions*) auditLogSearchOptions
        completionHandler: (void (^)(OAIAuditLogPageDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIAuditLogSearchOptions* auditLogSearchOptions = [[OAIAuditLogSearchOptions alloc] init]; // 

OAIApiAuditLogControllerApi*apiInstance = [[OAIApiAuditLogControllerApi alloc] init];

[apiInstance searchAuditLogsWithAuditLogSearchOptions:auditLogSearchOptions
          completionHandler: ^(OAIAuditLogPageDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIApiAuditLogControllerApi->searchAuditLogs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditLogSearchOptions** | [**OAIAuditLogSearchOptions***](OAIAuditLogSearchOptions)|  | 

### Return type

[**OAIAuditLogPageDto***](OAIAuditLogPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

