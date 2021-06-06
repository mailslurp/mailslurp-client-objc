# OAIWebhookControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](OAIWebhookControllerApi#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**deleteWebhook**](OAIWebhookControllerApi#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**getAllWebhooks**](OAIWebhookControllerApi#getallwebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**getTestWebhookPayload**](OAIWebhookControllerApi#gettestwebhookpayload) | **GET** /webhooks/test | Get test webhook payload example. Response content depends on eventName passed. Uses &#x60;EMAIL_RECEIVED&#x60; as default.
[**getTestWebhookPayloadNewAttachment**](OAIWebhookControllerApi#gettestwebhookpayloadnewattachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**getTestWebhookPayloadNewContact**](OAIWebhookControllerApi#gettestwebhookpayloadnewcontact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**getTestWebhookPayloadNewEmail**](OAIWebhookControllerApi#gettestwebhookpayloadnewemail) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**getWebhook**](OAIWebhookControllerApi#getwebhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
[**getWebhooks**](OAIWebhookControllerApi#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**sendTestData**](OAIWebhookControllerApi#sendtestdata) | **POST** /webhooks/{webhookId}/test | Send webhook test data


# **createWebhook**
```objc
-(NSURLSessionTask*) createWebhookWithInboxId: (NSString*) inboxId
    webhookOptions: (OAICreateWebhookOptions*) webhookOptions
        completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler;
```

Attach a WebHook URL to an inbox

Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // inboxId
OAICreateWebhookOptions* webhookOptions = [[OAICreateWebhookOptions alloc] init]; // webhookOptions

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Attach a WebHook URL to an inbox
[apiInstance createWebhookWithInboxId:inboxId
              webhookOptions:webhookOptions
          completionHandler: ^(OAIWebhookDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->createWebhook: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| inboxId | 
 **webhookOptions** | [**OAICreateWebhookOptions***](OAICreateWebhookOptions)| webhookOptions | 

### Return type

[**OAIWebhookDto***](OAIWebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteWebhook**
```objc
-(NSURLSessionTask*) deleteWebhookWithInboxId: (NSString*) inboxId
    webhookId: (NSString*) webhookId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete and disable a Webhook for an Inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // inboxId
NSString* webhookId = @"webhookId_example"; // webhookId

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Delete and disable a Webhook for an Inbox
[apiInstance deleteWebhookWithInboxId:inboxId
              webhookId:webhookId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->deleteWebhook: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| inboxId | 
 **webhookId** | [**NSString***]()| webhookId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhooks**
```objc
-(NSURLSessionTask*) getAllWebhooksWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler;
```

List Webhooks Paginated

List webhooks in paginated form. Allows for page index, page size, and sort direction.

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

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// List Webhooks Paginated
[apiInstance getAllWebhooksWithPage:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageWebhookProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getAllWebhooks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageWebhookProjection***](OAIPageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayload**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadWithEventName: (NSString*) eventName
        completionHandler: (void (^)(OAIAbstractWebhookPayload* output, NSError* error)) handler;
```

Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* eventName = @"eventName_example"; // eventName (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
[apiInstance getTestWebhookPayloadWithEventName:eventName
          completionHandler: ^(OAIAbstractWebhookPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayload: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventName** | **NSString***| eventName | [optional] 

### Return type

[**OAIAbstractWebhookPayload***](OAIAbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewAttachment**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadNewAttachmentWithCompletionHandler: 
        (void (^)(OAIWebhookNewAttachmentPayload* output, NSError* error)) handler;
```

Get webhook test payload for new attachment event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get webhook test payload for new attachment event
[apiInstance getTestWebhookPayloadNewAttachmentWithCompletionHandler: 
          ^(OAIWebhookNewAttachmentPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadNewAttachment: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookNewAttachmentPayload***](OAIWebhookNewAttachmentPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewContact**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadNewContactWithCompletionHandler: 
        (void (^)(OAIWebhookNewContactPayload* output, NSError* error)) handler;
```

Get webhook test payload for new contact event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get webhook test payload for new contact event
[apiInstance getTestWebhookPayloadNewContactWithCompletionHandler: 
          ^(OAIWebhookNewContactPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadNewContact: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookNewContactPayload***](OAIWebhookNewContactPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewEmail**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadNewEmailWithCompletionHandler: 
        (void (^)(OAIWebhookNewEmailPayload* output, NSError* error)) handler;
```

Get webhook test payload for new email event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get webhook test payload for new email event
[apiInstance getTestWebhookPayloadNewEmailWithCompletionHandler: 
          ^(OAIWebhookNewEmailPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadNewEmail: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookNewEmailPayload***](OAIWebhookNewEmailPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhook**
```objc
-(NSURLSessionTask*) getWebhookWithWebhookId: (NSString*) webhookId
        completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler;
```

Get a webhook for an Inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // webhookId

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get a webhook for an Inbox
[apiInstance getWebhookWithWebhookId:webhookId
          completionHandler: ^(OAIWebhookDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getWebhook: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()| webhookId | 

### Return type

[**OAIWebhookDto***](OAIWebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhooks**
```objc
-(NSURLSessionTask*) getWebhooksWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSArray<OAIWebhookDto>* output, NSError* error)) handler;
```

Get all webhooks for an Inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // inboxId

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get all webhooks for an Inbox
[apiInstance getWebhooksWithInboxId:inboxId
          completionHandler: ^(NSArray<OAIWebhookDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getWebhooks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| inboxId | 

### Return type

[**NSArray<OAIWebhookDto>***](OAIWebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendTestData**
```objc
-(NSURLSessionTask*) sendTestDataWithWebhookId: (NSString*) webhookId
        completionHandler: (void (^)(OAIWebhookTestResult* output, NSError* error)) handler;
```

Send webhook test data

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // webhookId

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Send webhook test data
[apiInstance sendTestDataWithWebhookId:webhookId
          completionHandler: ^(OAIWebhookTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->sendTestData: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()| webhookId | 

### Return type

[**OAIWebhookTestResult***](OAIWebhookTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

