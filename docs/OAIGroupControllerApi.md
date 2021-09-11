# OAIGroupControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addContactsToGroup**](OAIGroupControllerApi#addcontactstogroup) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
[**createGroup**](OAIGroupControllerApi#creategroup) | **POST** /groups | Create a group
[**deleteGroup**](OAIGroupControllerApi#deletegroup) | **DELETE** /groups/{groupId} | Delete group
[**getAllGroups**](OAIGroupControllerApi#getallgroups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
[**getGroup**](OAIGroupControllerApi#getgroup) | **GET** /groups/{groupId} | Get group
[**getGroupWithContacts**](OAIGroupControllerApi#getgroupwithcontacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
[**getGroupWithContactsPaginated**](OAIGroupControllerApi#getgroupwithcontactspaginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
[**getGroups**](OAIGroupControllerApi#getgroups) | **GET** /groups | Get all groups
[**removeContactsFromGroup**](OAIGroupControllerApi#removecontactsfromgroup) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group


# **addContactsToGroup**
```objc
-(NSURLSessionTask*) addContactsToGroupWithGroupId: (NSString*) groupId
    updateGroupContactsOption: (OAIUpdateGroupContacts*) updateGroupContactsOption
        completionHandler: (void (^)(OAIGroupContactsDto* output, NSError* error)) handler;
```

Add contacts to a group

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* groupId = @"groupId_example"; // groupId
OAIUpdateGroupContacts* updateGroupContactsOption = [[OAIUpdateGroupContacts alloc] init]; // updateGroupContactsOption

OAIGroupControllerApi*apiInstance = [[OAIGroupControllerApi alloc] init];

// Add contacts to a group
[apiInstance addContactsToGroupWithGroupId:groupId
              updateGroupContactsOption:updateGroupContactsOption
          completionHandler: ^(OAIGroupContactsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupControllerApi->addContactsToGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**NSString***]()| groupId | 
 **updateGroupContactsOption** | [**OAIUpdateGroupContacts***](OAIUpdateGroupContacts)| updateGroupContactsOption | 

### Return type

[**OAIGroupContactsDto***](OAIGroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createGroup**
```objc
-(NSURLSessionTask*) createGroupWithCreateGroupOptions: (OAICreateGroupOptions*) createGroupOptions
        completionHandler: (void (^)(OAIGroupDto* output, NSError* error)) handler;
```

Create a group

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateGroupOptions* createGroupOptions = [[OAICreateGroupOptions alloc] init]; // createGroupOptions

OAIGroupControllerApi*apiInstance = [[OAIGroupControllerApi alloc] init];

// Create a group
[apiInstance createGroupWithCreateGroupOptions:createGroupOptions
          completionHandler: ^(OAIGroupDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupControllerApi->createGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createGroupOptions** | [**OAICreateGroupOptions***](OAICreateGroupOptions)| createGroupOptions | 

### Return type

[**OAIGroupDto***](OAIGroupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteGroup**
```objc
-(NSURLSessionTask*) deleteGroupWithGroupId: (NSString*) groupId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete group

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* groupId = @"groupId_example"; // groupId

OAIGroupControllerApi*apiInstance = [[OAIGroupControllerApi alloc] init];

// Delete group
[apiInstance deleteGroupWithGroupId:groupId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIGroupControllerApi->deleteGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**NSString***]()| groupId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllGroups**
```objc
-(NSURLSessionTask*) getAllGroupsWithBefore: (NSDate*) before
    page: (NSNumber*) page
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageGroupProjection* output, NSError* error)) handler;
```

Get all Contact Groups in paginated format

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIGroupControllerApi*apiInstance = [[OAIGroupControllerApi alloc] init];

// Get all Contact Groups in paginated format
[apiInstance getAllGroupsWithBefore:before
              page:page
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageGroupProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupControllerApi->getAllGroups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageGroupProjection***](OAIPageGroupProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroup**
```objc
-(NSURLSessionTask*) getGroupWithGroupId: (NSString*) groupId
        completionHandler: (void (^)(OAIGroupDto* output, NSError* error)) handler;
```

Get group

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* groupId = @"groupId_example"; // groupId

OAIGroupControllerApi*apiInstance = [[OAIGroupControllerApi alloc] init];

// Get group
[apiInstance getGroupWithGroupId:groupId
          completionHandler: ^(OAIGroupDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupControllerApi->getGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**NSString***]()| groupId | 

### Return type

[**OAIGroupDto***](OAIGroupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroupWithContacts**
```objc
-(NSURLSessionTask*) getGroupWithContactsWithGroupId: (NSString*) groupId
        completionHandler: (void (^)(OAIGroupContactsDto* output, NSError* error)) handler;
```

Get group and contacts belonging to it

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* groupId = @"groupId_example"; // groupId

OAIGroupControllerApi*apiInstance = [[OAIGroupControllerApi alloc] init];

// Get group and contacts belonging to it
[apiInstance getGroupWithContactsWithGroupId:groupId
          completionHandler: ^(OAIGroupContactsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupControllerApi->getGroupWithContacts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**NSString***]()| groupId | 

### Return type

[**OAIGroupContactsDto***](OAIGroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroupWithContactsPaginated**
```objc
-(NSURLSessionTask*) getGroupWithContactsPaginatedWithGroupId: (NSString*) groupId
    before: (NSDate*) before
    page: (NSNumber*) page
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageContactProjection* output, NSError* error)) handler;
```

Get group and paginated contacts belonging to it

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* groupId = @"groupId_example"; // groupId
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSNumber* page = @0; // Optional page index in group contact pagination (optional) (default to @0)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSNumber* size = @20; // Optional page size in group contact pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIGroupControllerApi*apiInstance = [[OAIGroupControllerApi alloc] init];

// Get group and paginated contacts belonging to it
[apiInstance getGroupWithContactsPaginatedWithGroupId:groupId
              before:before
              page:page
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageContactProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupControllerApi->getGroupWithContactsPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**NSString***]()| groupId | 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **page** | **NSNumber***| Optional page index in group contact pagination | [optional] [default to @0]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **size** | **NSNumber***| Optional page size in group contact pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageContactProjection***](OAIPageContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroups**
```objc
-(NSURLSessionTask*) getGroupsWithCompletionHandler: 
        (void (^)(NSArray<OAIGroupProjection>* output, NSError* error)) handler;
```

Get all groups

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIGroupControllerApi*apiInstance = [[OAIGroupControllerApi alloc] init];

// Get all groups
[apiInstance getGroupsWithCompletionHandler: 
          ^(NSArray<OAIGroupProjection>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupControllerApi->getGroups: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIGroupProjection>***](OAIGroupProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **removeContactsFromGroup**
```objc
-(NSURLSessionTask*) removeContactsFromGroupWithGroupId: (NSString*) groupId
    updateGroupContactsOption: (OAIUpdateGroupContacts*) updateGroupContactsOption
        completionHandler: (void (^)(OAIGroupContactsDto* output, NSError* error)) handler;
```

Remove contacts from a group

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* groupId = @"groupId_example"; // groupId
OAIUpdateGroupContacts* updateGroupContactsOption = [[OAIUpdateGroupContacts alloc] init]; // updateGroupContactsOption

OAIGroupControllerApi*apiInstance = [[OAIGroupControllerApi alloc] init];

// Remove contacts from a group
[apiInstance removeContactsFromGroupWithGroupId:groupId
              updateGroupContactsOption:updateGroupContactsOption
          completionHandler: ^(OAIGroupContactsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupControllerApi->removeContactsFromGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**NSString***]()| groupId | 
 **updateGroupContactsOption** | [**OAIUpdateGroupContacts***](OAIUpdateGroupContacts)| updateGroupContactsOption | 

### Return type

[**OAIGroupContactsDto***](OAIGroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

