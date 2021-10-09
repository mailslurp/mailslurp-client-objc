# OAICommonActionsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewEmailAddress**](OAICommonActionsControllerApi#createnewemailaddress) | **POST** /createInbox | Create new random inbox
[**createNewEmailAddress1**](OAICommonActionsControllerApi#createnewemailaddress1) | **POST** /newEmailAddress | Create new random inbox
[**emptyInbox**](OAICommonActionsControllerApi#emptyinbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**sendEmailSimple**](OAICommonActionsControllerApi#sendemailsimple) | **POST** /sendEmail | Send an email


# **createNewEmailAddress**
```objc
-(NSURLSessionTask*) createNewEmailAddressWithAllowTeamAccess: (NSNumber*) allowTeamAccess
    _description: (NSString*) _description
    emailAddress: (NSString*) emailAddress
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    favourite: (NSNumber*) favourite
    inboxType: (NSString*) inboxType
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    useDomainPool: (NSNumber*) useDomainPool
        completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler;
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


NSNumber* allowTeamAccess = @56; // allowTeamAccess (optional)
NSString* _description = @"_description_example"; // description (optional)
NSString* emailAddress = @"emailAddress_example"; // emailAddress (optional)
NSDate* expiresAt = @"2013-10-20T19:20:30+01:00"; // expiresAt (optional)
NSNumber* expiresIn = @56; // expiresIn (optional)
NSNumber* favourite = @56; // favourite (optional)
NSString* inboxType = @"inboxType_example"; // inboxType (optional)
NSString* name = @"name_example"; // name (optional)
NSArray<NSString*>* tags = @[@"tags_example"]; // tags (optional)
NSNumber* useDomainPool = @56; // useDomainPool (optional)

OAICommonActionsControllerApi*apiInstance = [[OAICommonActionsControllerApi alloc] init];

// Create new random inbox
[apiInstance createNewEmailAddressWithAllowTeamAccess:allowTeamAccess
              _description:_description
              emailAddress:emailAddress
              expiresAt:expiresAt
              expiresIn:expiresIn
              favourite:favourite
              inboxType:inboxType
              name:name
              tags:tags
              useDomainPool:useDomainPool
          completionHandler: ^(OAIInbox* output, NSError* error) {
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
 **allowTeamAccess** | **NSNumber***| allowTeamAccess | [optional] 
 **_description** | **NSString***| description | [optional] 
 **emailAddress** | **NSString***| emailAddress | [optional] 
 **expiresAt** | **NSDate***| expiresAt | [optional] 
 **expiresIn** | **NSNumber***| expiresIn | [optional] 
 **favourite** | **NSNumber***| favourite | [optional] 
 **inboxType** | **NSString***| inboxType | [optional] 
 **name** | **NSString***| name | [optional] 
 **tags** | [**NSArray&lt;NSString*&gt;***](NSString*)| tags | [optional] 
 **useDomainPool** | **NSNumber***| useDomainPool | [optional] 

### Return type

[**OAIInbox***](OAIInbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createNewEmailAddress1**
```objc
-(NSURLSessionTask*) createNewEmailAddress1WithAllowTeamAccess: (NSNumber*) allowTeamAccess
    _description: (NSString*) _description
    emailAddress: (NSString*) emailAddress
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    favourite: (NSNumber*) favourite
    inboxType: (NSString*) inboxType
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    useDomainPool: (NSNumber*) useDomainPool
        completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler;
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


NSNumber* allowTeamAccess = @56; // allowTeamAccess (optional)
NSString* _description = @"_description_example"; // description (optional)
NSString* emailAddress = @"emailAddress_example"; // emailAddress (optional)
NSDate* expiresAt = @"2013-10-20T19:20:30+01:00"; // expiresAt (optional)
NSNumber* expiresIn = @56; // expiresIn (optional)
NSNumber* favourite = @56; // favourite (optional)
NSString* inboxType = @"inboxType_example"; // inboxType (optional)
NSString* name = @"name_example"; // name (optional)
NSArray<NSString*>* tags = @[@"tags_example"]; // tags (optional)
NSNumber* useDomainPool = @56; // useDomainPool (optional)

OAICommonActionsControllerApi*apiInstance = [[OAICommonActionsControllerApi alloc] init];

// Create new random inbox
[apiInstance createNewEmailAddress1WithAllowTeamAccess:allowTeamAccess
              _description:_description
              emailAddress:emailAddress
              expiresAt:expiresAt
              expiresIn:expiresIn
              favourite:favourite
              inboxType:inboxType
              name:name
              tags:tags
              useDomainPool:useDomainPool
          completionHandler: ^(OAIInbox* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICommonActionsControllerApi->createNewEmailAddress1: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowTeamAccess** | **NSNumber***| allowTeamAccess | [optional] 
 **_description** | **NSString***| description | [optional] 
 **emailAddress** | **NSString***| emailAddress | [optional] 
 **expiresAt** | **NSDate***| expiresAt | [optional] 
 **expiresIn** | **NSNumber***| expiresIn | [optional] 
 **favourite** | **NSNumber***| favourite | [optional] 
 **inboxType** | **NSString***| inboxType | [optional] 
 **name** | **NSString***| name | [optional] 
 **tags** | [**NSArray&lt;NSString*&gt;***](NSString*)| tags | [optional] 
 **useDomainPool** | **NSNumber***| useDomainPool | [optional] 

### Return type

[**OAIInbox***](OAIInbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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


NSString* inboxId = @"inboxId_example"; // inboxId

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
 **inboxId** | [**NSString***]()| inboxId | 

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
-(NSURLSessionTask*) sendEmailSimpleWithEmailOptions: (OAISimpleSendEmailOptions*) emailOptions
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


OAISimpleSendEmailOptions* emailOptions = [[OAISimpleSendEmailOptions alloc] init]; // emailOptions

OAICommonActionsControllerApi*apiInstance = [[OAICommonActionsControllerApi alloc] init];

// Send an email
[apiInstance sendEmailSimpleWithEmailOptions:emailOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICommonActionsControllerApi->sendEmailSimple: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailOptions** | [**OAISimpleSendEmailOptions***](OAISimpleSendEmailOptions)| emailOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

