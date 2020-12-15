# OAIContactControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContact**](OAIContactControllerApi.md#createcontact) | **POST** /contacts | Create a contact
[**deleteContact**](OAIContactControllerApi.md#deletecontact) | **DELETE** /contacts/{contactId} | Delete contact
[**getAllContacts**](OAIContactControllerApi.md#getallcontacts) | **GET** /contacts/paginated | Get all contacts
[**getContact**](OAIContactControllerApi.md#getcontact) | **GET** /contacts/{contactId} | Get contact
[**getContacts**](OAIContactControllerApi.md#getcontacts) | **GET** /contacts | Get all contacts


# **createContact**
```objc
-(NSURLSessionTask*) createContactWithCreateContactOptions: (OAICreateContactOptions*) createContactOptions
        completionHandler: (void (^)(OAIContactDto* output, NSError* error)) handler;
```

Create a contact

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateContactOptions* createContactOptions = [[OAICreateContactOptions alloc] init]; // createContactOptions

OAIContactControllerApi*apiInstance = [[OAIContactControllerApi alloc] init];

// Create a contact
[apiInstance createContactWithCreateContactOptions:createContactOptions
          completionHandler: ^(OAIContactDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactControllerApi->createContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createContactOptions** | [**OAICreateContactOptions***](OAICreateContactOptions.md)| createContactOptions | 

### Return type

[**OAIContactDto***](OAIContactDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContact**
```objc
-(NSURLSessionTask*) deleteContactWithContactId: (NSString*) contactId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete contact

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* contactId = @"contactId_example"; // contactId

OAIContactControllerApi*apiInstance = [[OAIContactControllerApi alloc] init];

// Delete contact
[apiInstance deleteContactWithContactId:contactId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIContactControllerApi->deleteContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | [**NSString***](.md)| contactId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllContacts**
```objc
-(NSURLSessionTask*) getAllContactsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageContactProjection* output, NSError* error)) handler;
```

Get all contacts

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

OAIContactControllerApi*apiInstance = [[OAIContactControllerApi alloc] init];

// Get all contacts
[apiInstance getAllContactsWithPage:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageContactProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactControllerApi->getAllContacts: %@", error);
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

[**OAIPageContactProjection***](OAIPageContactProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContact**
```objc
-(NSURLSessionTask*) getContactWithContactId: (NSString*) contactId
        completionHandler: (void (^)(OAIContactDto* output, NSError* error)) handler;
```

Get contact

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* contactId = @"contactId_example"; // contactId

OAIContactControllerApi*apiInstance = [[OAIContactControllerApi alloc] init];

// Get contact
[apiInstance getContactWithContactId:contactId
          completionHandler: ^(OAIContactDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactControllerApi->getContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | [**NSString***](.md)| contactId | 

### Return type

[**OAIContactDto***](OAIContactDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContacts**
```objc
-(NSURLSessionTask*) getContactsWithCompletionHandler: 
        (void (^)(NSArray<OAIContactProjection>* output, NSError* error)) handler;
```

Get all contacts

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIContactControllerApi*apiInstance = [[OAIContactControllerApi alloc] init];

// Get all contacts
[apiInstance getContactsWithCompletionHandler: 
          ^(NSArray<OAIContactProjection>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactControllerApi->getContacts: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIContactProjection>***](OAIContactProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

