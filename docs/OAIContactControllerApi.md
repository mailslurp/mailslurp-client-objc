# OAIContactControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContact**](OAIContactControllerApi#createcontact) | **POST** /contacts | Create a contact
[**deleteContact**](OAIContactControllerApi#deletecontact) | **DELETE** /contacts/{contactId} | Delete contact
[**getAllContacts**](OAIContactControllerApi#getallcontacts) | **GET** /contacts/paginated | Get all contacts
[**getContact**](OAIContactControllerApi#getcontact) | **GET** /contacts/{contactId} | Get contact
[**getContactVCard**](OAIContactControllerApi#getcontactvcard) | **GET** /contacts/{contactId}/download | Get contact vCard vcf file
[**getContacts**](OAIContactControllerApi#getcontacts) | **GET** /contacts | Get all contacts


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


OAICreateContactOptions* createContactOptions = [[OAICreateContactOptions alloc] init]; // 

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
 **createContactOptions** | [**OAICreateContactOptions***](OAICreateContactOptions)|  | 

### Return type

[**OAIContactDto***](OAIContactDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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


NSString* contactId = @"contactId_example"; // 

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
 **contactId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllContacts**
```objc
-(NSURLSessionTask*) getAllContactsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    search: (NSString*) search
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


NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* search = @"search_example"; // Search terms (optional)

OAIContactControllerApi*apiInstance = [[OAIContactControllerApi alloc] init];

// Get all contacts
[apiInstance getAllContactsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
              search:search
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
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **search** | **NSString***| Search terms | [optional] 

### Return type

[**OAIPageContactProjection***](OAIPageContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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


NSString* contactId = @"contactId_example"; // 

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
 **contactId** | [**NSString***]()|  | 

### Return type

[**OAIContactDto***](OAIContactDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getContactVCard**
```objc
-(NSURLSessionTask*) getContactVCardWithContactId: (NSString*) contactId
        completionHandler: (void (^)(NSError* error)) handler;
```

Get contact vCard vcf file

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* contactId = @"contactId_example"; // 

OAIContactControllerApi*apiInstance = [[OAIContactControllerApi alloc] init];

// Get contact vCard vcf file
[apiInstance getContactVCardWithContactId:contactId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIContactControllerApi->getContactVCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

[**NSArray<OAIContactProjection>***](OAIContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

