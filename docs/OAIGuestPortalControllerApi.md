# OAIGuestPortalControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGuestPortal**](OAIGuestPortalControllerApi#createguestportal) | **POST** /guest-portal | Create a portal page for your customers or clients to log into email accounts and view emails.
[**createGuestPortalUser**](OAIGuestPortalControllerApi#createguestportaluser) | **POST** /guest-portal/{portalId}/user | Create a portal guest user
[**getAllGuestPortalUsers**](OAIGuestPortalControllerApi#getallguestportalusers) | **GET** /guest-portal/user | Get all guest users for portal
[**getGuestPortal**](OAIGuestPortalControllerApi#getguestportal) | **GET** /guest-portal/{portalId} | Get a client email portal
[**getGuestPortalUser**](OAIGuestPortalControllerApi#getguestportaluser) | **GET** /guest-portal/{portalId}/user/{guestId} | Get guest user for portal
[**getGuestPortalUserById**](OAIGuestPortalControllerApi#getguestportaluserbyid) | **GET** /guest-portal/user/{guestId} | Get guest user
[**getGuestPortalUsers**](OAIGuestPortalControllerApi#getguestportalusers) | **GET** /guest-portal/{portalId}/user | Get all guest users for portal
[**getGuestPortals**](OAIGuestPortalControllerApi#getguestportals) | **GET** /guest-portal | Get guest portals


# **createGuestPortal**
```objc
-(NSURLSessionTask*) createGuestPortalWithCreatePortalOptions: (OAICreatePortalOptions*) createPortalOptions
        completionHandler: (void (^)(OAIGuestPortalDto* output, NSError* error)) handler;
```

Create a portal page for your customers or clients to log into email accounts and view emails.

Create a guest login page for customers or clients to access assigned email addresses

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreatePortalOptions* createPortalOptions = [[OAICreatePortalOptions alloc] init]; // 

OAIGuestPortalControllerApi*apiInstance = [[OAIGuestPortalControllerApi alloc] init];

// Create a portal page for your customers or clients to log into email accounts and view emails.
[apiInstance createGuestPortalWithCreatePortalOptions:createPortalOptions
          completionHandler: ^(OAIGuestPortalDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGuestPortalControllerApi->createGuestPortal: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPortalOptions** | [**OAICreatePortalOptions***](OAICreatePortalOptions)|  | 

### Return type

[**OAIGuestPortalDto***](OAIGuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createGuestPortalUser**
```objc
-(NSURLSessionTask*) createGuestPortalUserWithPortalId: (NSString*) portalId
    createPortalUserOptions: (OAICreatePortalUserOptions*) createPortalUserOptions
        completionHandler: (void (^)(OAIGuestPortalUserCreateDto* output, NSError* error)) handler;
```

Create a portal guest user

Add customer to portal

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* portalId = @"portalId_example"; // 
OAICreatePortalUserOptions* createPortalUserOptions = [[OAICreatePortalUserOptions alloc] init]; // 

OAIGuestPortalControllerApi*apiInstance = [[OAIGuestPortalControllerApi alloc] init];

// Create a portal guest user
[apiInstance createGuestPortalUserWithPortalId:portalId
              createPortalUserOptions:createPortalUserOptions
          completionHandler: ^(OAIGuestPortalUserCreateDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGuestPortalControllerApi->createGuestPortalUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | [**NSString***]()|  | 
 **createPortalUserOptions** | [**OAICreatePortalUserOptions***](OAICreatePortalUserOptions)|  | 

### Return type

[**OAIGuestPortalUserCreateDto***](OAIGuestPortalUserCreateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllGuestPortalUsers**
```objc
-(NSURLSessionTask*) getAllGuestPortalUsersWithPortalId: (NSString*) portalId
    search: (NSString*) search
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageGuestPortalUsers* output, NSError* error)) handler;
```

Get all guest users for portal

Get all customers for a portal

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* portalId = @"portalId_example"; // Optional portal ID (optional)
NSString* search = @"search_example"; // Optional search term (optional)
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIGuestPortalControllerApi*apiInstance = [[OAIGuestPortalControllerApi alloc] init];

// Get all guest users for portal
[apiInstance getAllGuestPortalUsersWithPortalId:portalId
              search:search
              page:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageGuestPortalUsers* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGuestPortalControllerApi->getAllGuestPortalUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | [**NSString***]()| Optional portal ID | [optional] 
 **search** | **NSString***| Optional search term | [optional] 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageGuestPortalUsers***](OAIPageGuestPortalUsers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortal**
```objc
-(NSURLSessionTask*) getGuestPortalWithPortalId: (NSString*) portalId
        completionHandler: (void (^)(OAIGuestPortalDto* output, NSError* error)) handler;
```

Get a client email portal

Fetch a customer guest portal

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* portalId = @"portalId_example"; // 

OAIGuestPortalControllerApi*apiInstance = [[OAIGuestPortalControllerApi alloc] init];

// Get a client email portal
[apiInstance getGuestPortalWithPortalId:portalId
          completionHandler: ^(OAIGuestPortalDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGuestPortalControllerApi->getGuestPortal: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | [**NSString***]()|  | 

### Return type

[**OAIGuestPortalDto***](OAIGuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortalUser**
```objc
-(NSURLSessionTask*) getGuestPortalUserWithPortalId: (NSString*) portalId
    guestId: (NSString*) guestId
        completionHandler: (void (^)(OAIGuestPortalUserDto* output, NSError* error)) handler;
```

Get guest user for portal

Get customer for portal

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* portalId = @"portalId_example"; // 
NSString* guestId = @"guestId_example"; // 

OAIGuestPortalControllerApi*apiInstance = [[OAIGuestPortalControllerApi alloc] init];

// Get guest user for portal
[apiInstance getGuestPortalUserWithPortalId:portalId
              guestId:guestId
          completionHandler: ^(OAIGuestPortalUserDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGuestPortalControllerApi->getGuestPortalUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | [**NSString***]()|  | 
 **guestId** | [**NSString***]()|  | 

### Return type

[**OAIGuestPortalUserDto***](OAIGuestPortalUserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortalUserById**
```objc
-(NSURLSessionTask*) getGuestPortalUserByIdWithGuestId: (NSString*) guestId
        completionHandler: (void (^)(OAIGuestPortalUserDto* output, NSError* error)) handler;
```

Get guest user

Get customer by ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* guestId = @"guestId_example"; // 

OAIGuestPortalControllerApi*apiInstance = [[OAIGuestPortalControllerApi alloc] init];

// Get guest user
[apiInstance getGuestPortalUserByIdWithGuestId:guestId
          completionHandler: ^(OAIGuestPortalUserDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGuestPortalControllerApi->getGuestPortalUserById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guestId** | [**NSString***]()|  | 

### Return type

[**OAIGuestPortalUserDto***](OAIGuestPortalUserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortalUsers**
```objc
-(NSURLSessionTask*) getGuestPortalUsersWithPortalId: (NSString*) portalId
    search: (NSString*) search
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageGuestPortalUsers* output, NSError* error)) handler;
```

Get all guest users for portal

Get customers for a portal

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* portalId = @"portalId_example"; // 
NSString* search = @"search_example"; // Optional search term (optional)
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIGuestPortalControllerApi*apiInstance = [[OAIGuestPortalControllerApi alloc] init];

// Get all guest users for portal
[apiInstance getGuestPortalUsersWithPortalId:portalId
              search:search
              page:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageGuestPortalUsers* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGuestPortalControllerApi->getGuestPortalUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | [**NSString***]()|  | 
 **search** | **NSString***| Optional search term | [optional] 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageGuestPortalUsers***](OAIPageGuestPortalUsers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortals**
```objc
-(NSURLSessionTask*) getGuestPortalsWithCompletionHandler: 
        (void (^)(NSArray<OAIGuestPortalDto>* output, NSError* error)) handler;
```

Get guest portals

Get portals

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIGuestPortalControllerApi*apiInstance = [[OAIGuestPortalControllerApi alloc] init];

// Get guest portals
[apiInstance getGuestPortalsWithCompletionHandler: 
          ^(NSArray<OAIGuestPortalDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGuestPortalControllerApi->getGuestPortals: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIGuestPortalDto>***](OAIGuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

