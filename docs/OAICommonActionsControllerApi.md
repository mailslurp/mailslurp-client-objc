# OAICommonActionsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewEmailAddress**](OAICommonActionsControllerApi#createnewemailaddress) | **POST** /newEmailAddress | Create new random inbox
[**createRandomInbox**](OAICommonActionsControllerApi#createrandominbox) | **POST** /createInbox | Create new random inbox
[**deleteEmailAddress**](OAICommonActionsControllerApi#deleteemailaddress) | **DELETE** /deleteEmailAddress | Delete inbox email address by inbox id
[**emptyInbox**](OAICommonActionsControllerApi#emptyinbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**sendEmailSimple**](OAICommonActionsControllerApi#sendemailsimple) | **POST** /sendEmail | Send an email


# **createNewEmailAddress**
```objc
-(NSURLSessionTask*) createNewEmailAddressWithAllowTeamAccess: (NSNumber*) allowTeamAccess
    useDomainPool: (NSNumber*) useDomainPool
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    emailAddress: (NSString*) emailAddress
    inboxType: (NSString*) inboxType
    _description: (NSString*) _description
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    favourite: (NSNumber*) favourite
    virtualInbox: (NSNumber*) virtualInbox
    useShortAddress: (NSNumber*) useShortAddress
    domainName: (NSString*) domainName
    domainId: (NSString*) domainId
        completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;
```

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* allowTeamAccess = @56; //  (optional)
NSNumber* useDomainPool = @56; //  (optional)
NSDate* expiresAt = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSNumber* expiresIn = @56; //  (optional)
NSString* emailAddress = @"emailAddress_example"; //  (optional)
NSString* inboxType = @"inboxType_example"; //  (optional)
NSString* _description = @"_description_example"; //  (optional)
NSString* name = @"name_example"; //  (optional)
NSArray<NSString*>* tags = @[@"tags_example"]; //  (optional)
NSNumber* favourite = @56; //  (optional)
NSNumber* virtualInbox = @56; //  (optional)
NSNumber* useShortAddress = @56; //  (optional)
NSString* domainName = @"domainName_example"; //  (optional)
NSString* domainId = @"domainId_example"; //  (optional)

OAICommonActionsControllerApi*apiInstance = [[OAICommonActionsControllerApi alloc] init];

// Create new random inbox
[apiInstance createNewEmailAddressWithAllowTeamAccess:allowTeamAccess
              useDomainPool:useDomainPool
              expiresAt:expiresAt
              expiresIn:expiresIn
              emailAddress:emailAddress
              inboxType:inboxType
              _description:_description
              name:name
              tags:tags
              favourite:favourite
              virtualInbox:virtualInbox
              useShortAddress:useShortAddress
              domainName:domainName
              domainId:domainId
          completionHandler: ^(OAIInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICommonActionsControllerApi->createNewEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowTeamAccess** | **NSNumber***|  | [optional] 
 **useDomainPool** | **NSNumber***|  | [optional] 
 **expiresAt** | **NSDate***|  | [optional] 
 **expiresIn** | **NSNumber***|  | [optional] 
 **emailAddress** | **NSString***|  | [optional] 
 **inboxType** | **NSString***|  | [optional] 
 **_description** | **NSString***|  | [optional] 
 **name** | **NSString***|  | [optional] 
 **tags** | [**NSArray&lt;NSString*&gt;***](NSString*)|  | [optional] 
 **favourite** | **NSNumber***|  | [optional] 
 **virtualInbox** | **NSNumber***|  | [optional] 
 **useShortAddress** | **NSNumber***|  | [optional] 
 **domainName** | **NSString***|  | [optional] 
 **domainId** | [**NSString***]()|  | [optional] 

### Return type

[**OAIInboxDto***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createRandomInbox**
```objc
-(NSURLSessionTask*) createRandomInboxWithAllowTeamAccess: (NSNumber*) allowTeamAccess
    useDomainPool: (NSNumber*) useDomainPool
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    emailAddress: (NSString*) emailAddress
    inboxType: (NSString*) inboxType
    _description: (NSString*) _description
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    favourite: (NSNumber*) favourite
    virtualInbox: (NSNumber*) virtualInbox
    useShortAddress: (NSNumber*) useShortAddress
    domainName: (NSString*) domainName
    domainId: (NSString*) domainId
        completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;
```

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* allowTeamAccess = @56; //  (optional)
NSNumber* useDomainPool = @56; //  (optional)
NSDate* expiresAt = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSNumber* expiresIn = @56; //  (optional)
NSString* emailAddress = @"emailAddress_example"; //  (optional)
NSString* inboxType = @"inboxType_example"; //  (optional)
NSString* _description = @"_description_example"; //  (optional)
NSString* name = @"name_example"; //  (optional)
NSArray<NSString*>* tags = @[@"tags_example"]; //  (optional)
NSNumber* favourite = @56; //  (optional)
NSNumber* virtualInbox = @56; //  (optional)
NSNumber* useShortAddress = @56; //  (optional)
NSString* domainName = @"domainName_example"; //  (optional)
NSString* domainId = @"domainId_example"; //  (optional)

OAICommonActionsControllerApi*apiInstance = [[OAICommonActionsControllerApi alloc] init];

// Create new random inbox
[apiInstance createRandomInboxWithAllowTeamAccess:allowTeamAccess
              useDomainPool:useDomainPool
              expiresAt:expiresAt
              expiresIn:expiresIn
              emailAddress:emailAddress
              inboxType:inboxType
              _description:_description
              name:name
              tags:tags
              favourite:favourite
              virtualInbox:virtualInbox
              useShortAddress:useShortAddress
              domainName:domainName
              domainId:domainId
          completionHandler: ^(OAIInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICommonActionsControllerApi->createRandomInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowTeamAccess** | **NSNumber***|  | [optional] 
 **useDomainPool** | **NSNumber***|  | [optional] 
 **expiresAt** | **NSDate***|  | [optional] 
 **expiresIn** | **NSNumber***|  | [optional] 
 **emailAddress** | **NSString***|  | [optional] 
 **inboxType** | **NSString***|  | [optional] 
 **_description** | **NSString***|  | [optional] 
 **name** | **NSString***|  | [optional] 
 **tags** | [**NSArray&lt;NSString*&gt;***](NSString*)|  | [optional] 
 **favourite** | **NSNumber***|  | [optional] 
 **virtualInbox** | **NSNumber***|  | [optional] 
 **useShortAddress** | **NSNumber***|  | [optional] 
 **domainName** | **NSString***|  | [optional] 
 **domainId** | [**NSString***]()|  | [optional] 

### Return type

[**OAIInboxDto***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmailAddress**
```objc
-(NSURLSessionTask*) deleteEmailAddressWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete inbox email address by inbox id

Deletes inbox email address

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 

OAICommonActionsControllerApi*apiInstance = [[OAICommonActionsControllerApi alloc] init];

// Delete inbox email address by inbox id
[apiInstance deleteEmailAddressWithInboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICommonActionsControllerApi->deleteEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **emptyInbox**
```objc
-(NSURLSessionTask*) emptyInboxWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete all emails in an inbox

Deletes all emails

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 

OAICommonActionsControllerApi*apiInstance = [[OAICommonActionsControllerApi alloc] init];

// Delete all emails in an inbox
[apiInstance emptyInboxWithInboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICommonActionsControllerApi->emptyInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailSimple**
```objc
-(NSURLSessionTask*) sendEmailSimpleWithSimpleSendEmailOptions: (OAISimpleSendEmailOptions*) simpleSendEmailOptions
        completionHandler: (void (^)(NSError* error)) handler;
```

Send an email

If no senderId or inboxId provided a random email address will be used to send from.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAISimpleSendEmailOptions* simpleSendEmailOptions = [[OAISimpleSendEmailOptions alloc] init]; // 

OAICommonActionsControllerApi*apiInstance = [[OAICommonActionsControllerApi alloc] init];

// Send an email
[apiInstance sendEmailSimpleWithSimpleSendEmailOptions:simpleSendEmailOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICommonActionsControllerApi->sendEmailSimple: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **simpleSendEmailOptions** | [**OAISimpleSendEmailOptions***](OAISimpleSendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

