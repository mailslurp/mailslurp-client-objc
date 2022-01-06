# OAIExpiredControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExpirationDefaults**](OAIExpiredControllerApi#getexpirationdefaults) | **GET** /expired/defaults | Get default expiration settings
[**getExpiredInboxByInboxId**](OAIExpiredControllerApi#getexpiredinboxbyinboxid) | **GET** /expired/inbox/{inboxId} | Get expired inbox record for a previously existing inbox
[**getExpiredInboxRecord**](OAIExpiredControllerApi#getexpiredinboxrecord) | **GET** /expired/{expiredId} | Get an expired inbox record
[**getExpiredInboxes**](OAIExpiredControllerApi#getexpiredinboxes) | **GET** /expired | List records of expired inboxes


# **getExpirationDefaults**
```objc
-(NSURLSessionTask*) getExpirationDefaultsWithCompletionHandler: 
        (void (^)(OAIExpirationDefaults* output, NSError* error)) handler;
```

Get default expiration settings

Return default times used for inbox expiration

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIExpiredControllerApi*apiInstance = [[OAIExpiredControllerApi alloc] init];

// Get default expiration settings
[apiInstance getExpirationDefaultsWithCompletionHandler: 
          ^(OAIExpirationDefaults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIExpiredControllerApi->getExpirationDefaults: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIExpirationDefaults***](OAIExpirationDefaults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExpiredInboxByInboxId**
```objc
-(NSURLSessionTask*) getExpiredInboxByInboxIdWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIExpiredInboxDto* output, NSError* error)) handler;
```

Get expired inbox record for a previously existing inbox

Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // ID of inbox you want to retrieve (not the inbox ID)

OAIExpiredControllerApi*apiInstance = [[OAIExpiredControllerApi alloc] init];

// Get expired inbox record for a previously existing inbox
[apiInstance getExpiredInboxByInboxIdWithInboxId:inboxId
          completionHandler: ^(OAIExpiredInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIExpiredControllerApi->getExpiredInboxByInboxId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| ID of inbox you want to retrieve (not the inbox ID) | 

### Return type

[**OAIExpiredInboxDto***](OAIExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExpiredInboxRecord**
```objc
-(NSURLSessionTask*) getExpiredInboxRecordWithIDOfTheExpiredInboxRecordYouWantToRetrieveThisIsDifferentFromTheIDOfTheInboxYouAreInterestedInSeeOtherMethodsForGettingExpiredInboxRecordForAnInboxInboxId: (NSString*) iDOfTheExpiredInboxRecordYouWantToRetrieveThisIsDifferentFromTheIDOfTheInboxYouAreInterestedInSeeOtherMethodsForGettingExpiredInboxRecordForAnInboxInboxId
        completionHandler: (void (^)(OAIExpiredInboxDto* output, NSError* error)) handler;
```

Get an expired inbox record

Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* iDOfTheExpiredInboxRecordYouWantToRetrieveThisIsDifferentFromTheIDOfTheInboxYouAreInterestedInSeeOtherMethodsForGettingExpiredInboxRecordForAnInboxInboxId = @"iDOfTheExpiredInboxRecordYouWantToRetrieveThisIsDifferentFromTheIDOfTheInboxYouAreInterestedInSeeOtherMethodsForGettingExpiredInboxRecordForAnInboxInboxId_example"; // 

OAIExpiredControllerApi*apiInstance = [[OAIExpiredControllerApi alloc] init];

// Get an expired inbox record
[apiInstance getExpiredInboxRecordWithIDOfTheExpiredInboxRecordYouWantToRetrieveThisIsDifferentFromTheIDOfTheInboxYouAreInterestedInSeeOtherMethodsForGettingExpiredInboxRecordForAnInboxInboxId:iDOfTheExpiredInboxRecordYouWantToRetrieveThisIsDifferentFromTheIDOfTheInboxYouAreInterestedInSeeOtherMethodsForGettingExpiredInboxRecordForAnInboxInboxId
          completionHandler: ^(OAIExpiredInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIExpiredControllerApi->getExpiredInboxRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iDOfTheExpiredInboxRecordYouWantToRetrieveThisIsDifferentFromTheIDOfTheInboxYouAreInterestedInSeeOtherMethodsForGettingExpiredInboxRecordForAnInboxInboxId** | [**NSString***]()|  | 

### Return type

[**OAIExpiredInboxDto***](OAIExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExpiredInboxes**
```objc
-(NSURLSessionTask*) getExpiredInboxesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageExpiredInboxRecordProjection* output, NSError* error)) handler;
```

List records of expired inboxes

Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in inbox sent email list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox sent email list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIExpiredControllerApi*apiInstance = [[OAIExpiredControllerApi alloc] init];

// List records of expired inboxes
[apiInstance getExpiredInboxesWithPage:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageExpiredInboxRecordProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIExpiredControllerApi->getExpiredInboxes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in inbox sent email list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox sent email list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageExpiredInboxRecordProjection***](OAIPageExpiredInboxRecordProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

