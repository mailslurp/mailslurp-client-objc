# OAIWebhookControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountWebhook**](OAIWebhookControllerApi#createaccountwebhook) | **POST** /webhooks | Attach a WebHook URL to an inbox
[**createWebhook**](OAIWebhookControllerApi#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**createWebhookForPhoneNumber**](OAIWebhookControllerApi#createwebhookforphonenumber) | **POST** /phone/numbers/{phoneNumberId}/webhooks | Attach a WebHook URL to a phone number
[**deleteAllWebhooks**](OAIWebhookControllerApi#deleteallwebhooks) | **DELETE** /webhooks | Delete all webhooks
[**deleteWebhook**](OAIWebhookControllerApi#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**deleteWebhookById**](OAIWebhookControllerApi#deletewebhookbyid) | **DELETE** /webhooks/{webhookId} | Delete a webhook
[**getAllAccountWebhooks**](OAIWebhookControllerApi#getallaccountwebhooks) | **GET** /webhooks/account/paginated | List account webhooks Paginated
[**getAllWebhookEndpoints**](OAIWebhookControllerApi#getallwebhookendpoints) | **GET** /webhooks/endpoints | List Webhooks endpoints Paginated
[**getAllWebhookResults**](OAIWebhookControllerApi#getallwebhookresults) | **GET** /webhooks/results | Get results for all webhooks
[**getAllWebhooks**](OAIWebhookControllerApi#getallwebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**getInboxWebhooksPaginated**](OAIWebhookControllerApi#getinboxwebhookspaginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**getJsonSchemaForWebhookEvent**](OAIWebhookControllerApi#getjsonschemaforwebhookevent) | **POST** /webhooks/schema | 
[**getJsonSchemaForWebhookPayload**](OAIWebhookControllerApi#getjsonschemaforwebhookpayload) | **POST** /webhooks/{webhookId}/schema | 
[**getPhoneNumberWebhooksPaginated**](OAIWebhookControllerApi#getphonenumberwebhookspaginated) | **GET** /phone/numbers/{phoneId}/webhooks/paginated | Get paginated webhooks for a phone number
[**getTestWebhookPayload**](OAIWebhookControllerApi#gettestwebhookpayload) | **GET** /webhooks/test | 
[**getTestWebhookPayloadBounce**](OAIWebhookControllerApi#gettestwebhookpayloadbounce) | **GET** /webhooks/test/email-bounce-payload | 
[**getTestWebhookPayloadBounceRecipient**](OAIWebhookControllerApi#gettestwebhookpayloadbouncerecipient) | **GET** /webhooks/test/email-bounce-recipient-payload | 
[**getTestWebhookPayloadDeliveryStatus**](OAIWebhookControllerApi#gettestwebhookpayloaddeliverystatus) | **GET** /webhooks/test/delivery-status-payload | Get webhook test payload for delivery status event
[**getTestWebhookPayloadEmailOpened**](OAIWebhookControllerApi#gettestwebhookpayloademailopened) | **GET** /webhooks/test/email-opened-payload | 
[**getTestWebhookPayloadEmailRead**](OAIWebhookControllerApi#gettestwebhookpayloademailread) | **GET** /webhooks/test/email-read-payload | 
[**getTestWebhookPayloadForWebhook**](OAIWebhookControllerApi#gettestwebhookpayloadforwebhook) | **POST** /webhooks/{webhookId}/example | 
[**getTestWebhookPayloadNewAITransformResult**](OAIWebhookControllerApi#gettestwebhookpayloadnewaitransformresult) | **GET** /webhooks/test/new-ai-transform-result-payload | Get webhook test payload for new ai transform result event
[**getTestWebhookPayloadNewAttachment**](OAIWebhookControllerApi#gettestwebhookpayloadnewattachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**getTestWebhookPayloadNewContact**](OAIWebhookControllerApi#gettestwebhookpayloadnewcontact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**getTestWebhookPayloadNewEmail**](OAIWebhookControllerApi#gettestwebhookpayloadnewemail) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**getTestWebhookPayloadNewSms**](OAIWebhookControllerApi#gettestwebhookpayloadnewsms) | **GET** /webhooks/test/new-sms-payload | Get webhook test payload for new sms event
[**getWebhook**](OAIWebhookControllerApi#getwebhook) | **GET** /webhooks/{webhookId} | Get a webhook
[**getWebhookResult**](OAIWebhookControllerApi#getwebhookresult) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**getWebhookResults**](OAIWebhookControllerApi#getwebhookresults) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**getWebhookResultsCount**](OAIWebhookControllerApi#getwebhookresultscount) | **GET** /webhooks/{webhookId}/results/count | Get a webhook results count for a webhook
[**getWebhookResultsUnseenErrorCount**](OAIWebhookControllerApi#getwebhookresultsunseenerrorcount) | **GET** /webhooks/results/unseen-count | Get count of unseen webhook results with error status
[**getWebhooks**](OAIWebhookControllerApi#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**redriveAllWebhookResults**](OAIWebhookControllerApi#redriveallwebhookresults) | **POST** /webhooks/results/redrive | Redrive all webhook results that have failed status
[**redriveWebhookResult**](OAIWebhookControllerApi#redrivewebhookresult) | **POST** /webhooks/results/{webhookResultId}/redrive | Get a webhook result and try to resend the original webhook payload
[**sendTestData**](OAIWebhookControllerApi#sendtestdata) | **POST** /webhooks/{webhookId}/test | Send webhook test data
[**updateWebhook**](OAIWebhookControllerApi#updatewebhook) | **PATCH** /webhooks/{webhookId} | Update a webhook
[**updateWebhookHeaders**](OAIWebhookControllerApi#updatewebhookheaders) | **PUT** /webhooks/{webhookId}/headers | Update a webhook request headers
[**verifyWebhookSignature**](OAIWebhookControllerApi#verifywebhooksignature) | **POST** /webhooks/verify | Verify a webhook payload signature
[**waitForWebhookResults**](OAIWebhookControllerApi#waitforwebhookresults) | **GET** /webhooks/{webhookId}/wait | Wait for webhook results for a webhook


# **createAccountWebhook**
```objc
-(NSURLSessionTask*) createAccountWebhookWithCreateWebhookOptions: (OAICreateWebhookOptions*) createWebhookOptions
        completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler;
```

Attach a WebHook URL to an inbox

Get notified of account level events such as bounce and bounce recipient.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateWebhookOptions* createWebhookOptions = [[OAICreateWebhookOptions alloc] init]; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Attach a WebHook URL to an inbox
[apiInstance createAccountWebhookWithCreateWebhookOptions:createWebhookOptions
          completionHandler: ^(OAIWebhookDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->createAccountWebhook: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWebhookOptions** | [**OAICreateWebhookOptions***](OAICreateWebhookOptions)|  | 

### Return type

[**OAIWebhookDto***](OAIWebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createWebhook**
```objc
-(NSURLSessionTask*) createWebhookWithInboxId: (NSString*) inboxId
    createWebhookOptions: (OAICreateWebhookOptions*) createWebhookOptions
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


NSString* inboxId = @"inboxId_example"; // 
OAICreateWebhookOptions* createWebhookOptions = [[OAICreateWebhookOptions alloc] init]; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Attach a WebHook URL to an inbox
[apiInstance createWebhookWithInboxId:inboxId
              createWebhookOptions:createWebhookOptions
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
 **inboxId** | [**NSString***]()|  | 
 **createWebhookOptions** | [**OAICreateWebhookOptions***](OAICreateWebhookOptions)|  | 

### Return type

[**OAIWebhookDto***](OAIWebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createWebhookForPhoneNumber**
```objc
-(NSURLSessionTask*) createWebhookForPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    createWebhookOptions: (OAICreateWebhookOptions*) createWebhookOptions
        completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler;
```

Attach a WebHook URL to a phone number

Get notified whenever a phone number receives an SMS via a WebHook URL.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 
OAICreateWebhookOptions* createWebhookOptions = [[OAICreateWebhookOptions alloc] init]; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Attach a WebHook URL to a phone number
[apiInstance createWebhookForPhoneNumberWithPhoneNumberId:phoneNumberId
              createWebhookOptions:createWebhookOptions
          completionHandler: ^(OAIWebhookDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->createWebhookForPhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 
 **createWebhookOptions** | [**OAICreateWebhookOptions***](OAICreateWebhookOptions)|  | 

### Return type

[**OAIWebhookDto***](OAIWebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllWebhooks**
```objc
-(NSURLSessionTask*) deleteAllWebhooksWithBefore: (NSDate*) before
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete all webhooks

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* before = @"2013-10-20T19:20:30+01:00"; // before (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Delete all webhooks
[apiInstance deleteAllWebhooksWithBefore:before
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->deleteAllWebhooks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **NSDate***| before | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

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


NSString* inboxId = @"inboxId_example"; // 
NSString* webhookId = @"webhookId_example"; // 

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
 **inboxId** | [**NSString***]()|  | 
 **webhookId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteWebhookById**
```objc
-(NSURLSessionTask*) deleteWebhookByIdWithWebhookId: (NSString*) webhookId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a webhook

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Delete a webhook
[apiInstance deleteWebhookByIdWithWebhookId:webhookId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->deleteWebhookById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllAccountWebhooks**
```objc
-(NSURLSessionTask*) getAllAccountWebhooksWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    eventType: (NSString*) eventType
    health: (NSString*) health
    searchFilter: (NSString*) searchFilter
        completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler;
```

List account webhooks Paginated

List account webhooks in paginated form. Allows for page index, page size, and sort direction.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size for paginated result list. (optional) (default to @20)
NSString* sort = @"DESC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* eventType = @"eventType_example"; // Optional event type (optional)
NSString* health = @"health_example"; // Filter by webhook health (optional)
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// List account webhooks Paginated
[apiInstance getAllAccountWebhooksWithPage:page
              size:size
              sort:sort
              since:since
              before:before
              eventType:eventType
              health:health
              searchFilter:searchFilter
          completionHandler: ^(OAIPageWebhookProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getAllAccountWebhooks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size for paginated result list. | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;DESC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **eventType** | **NSString***| Optional event type | [optional] 
 **health** | **NSString***| Filter by webhook health | [optional] 
 **searchFilter** | **NSString***| Optional search filter | [optional] 

### Return type

[**OAIPageWebhookProjection***](OAIPageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhookEndpoints**
```objc
-(NSURLSessionTask*) getAllWebhookEndpointsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    inboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
    before: (NSDate*) before
    health: (NSString*) health
    eventType: (NSString*) eventType
        completionHandler: (void (^)(OAIPageWebhookEndpointProjection* output, NSError* error)) handler;
```

List Webhooks endpoints Paginated

List webhooks URL in paginated form. Allows for page index, page size, and sort direction.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size for paginated result list. (optional) (default to @20)
NSString* sort = @"DESC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSString* inboxId = @"inboxId_example"; // Filter by inboxId (optional)
NSString* phoneId = @"phoneId_example"; // Filter by phoneId (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* health = @"health_example"; // Filter by webhook health (optional)
NSString* eventType = @"eventType_example"; // Optional event type (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// List Webhooks endpoints Paginated
[apiInstance getAllWebhookEndpointsWithPage:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              inboxId:inboxId
              phoneId:phoneId
              before:before
              health:health
              eventType:eventType
          completionHandler: ^(OAIPageWebhookEndpointProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getAllWebhookEndpoints: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size for paginated result list. | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;DESC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **inboxId** | [**NSString***]()| Filter by inboxId | [optional] 
 **phoneId** | [**NSString***]()| Filter by phoneId | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **health** | **NSString***| Filter by webhook health | [optional] 
 **eventType** | **NSString***| Optional event type | [optional] 

### Return type

[**OAIPageWebhookEndpointProjection***](OAIPageWebhookEndpointProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhookResults**
```objc
-(NSURLSessionTask*) getAllWebhookResultsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    unseenOnly: (NSNumber*) unseenOnly
    resultType: (NSString*) resultType
    eventName: (NSString*) eventName
    minStatusCode: (NSNumber*) minStatusCode
    maxStatusCode: (NSNumber*) maxStatusCode
    inboxId: (NSString*) inboxId
    smsId: (NSString*) smsId
    attachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
    phoneId: (NSString*) phoneId
        completionHandler: (void (^)(OAIPageWebhookResult* output, NSError* error)) handler;
```

Get results for all webhooks

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
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSNumber* unseenOnly = @56; // Filter for unseen exceptions only (optional)
NSString* resultType = @"resultType_example"; // Filter by result type (optional)
NSString* eventName = @"eventName_example"; // Filter by event name (optional)
NSNumber* minStatusCode = @56; // Minimum response status (optional)
NSNumber* maxStatusCode = @56; // Maximum response status (optional)
NSString* inboxId = @"inboxId_example"; // Inbox ID (optional)
NSString* smsId = @"smsId_example"; // Sms ID (optional)
NSString* attachmentId = @"attachmentId_example"; // Attachment ID (optional)
NSString* emailId = @"emailId_example"; // Email ID (optional)
NSString* phoneId = @"phoneId_example"; // Phone ID (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get results for all webhooks
[apiInstance getAllWebhookResultsWithPage:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
              unseenOnly:unseenOnly
              resultType:resultType
              eventName:eventName
              minStatusCode:minStatusCode
              maxStatusCode:maxStatusCode
              inboxId:inboxId
              smsId:smsId
              attachmentId:attachmentId
              emailId:emailId
              phoneId:phoneId
          completionHandler: ^(OAIPageWebhookResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getAllWebhookResults: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **unseenOnly** | **NSNumber***| Filter for unseen exceptions only | [optional] 
 **resultType** | **NSString***| Filter by result type | [optional] 
 **eventName** | **NSString***| Filter by event name | [optional] 
 **minStatusCode** | **NSNumber***| Minimum response status | [optional] 
 **maxStatusCode** | **NSNumber***| Maximum response status | [optional] 
 **inboxId** | [**NSString***]()| Inbox ID | [optional] 
 **smsId** | [**NSString***]()| Sms ID | [optional] 
 **attachmentId** | [**NSString***]()| Attachment ID | [optional] 
 **emailId** | [**NSString***]()| Email ID | [optional] 
 **phoneId** | [**NSString***]()| Phone ID | [optional] 

### Return type

[**OAIPageWebhookResult***](OAIPageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhooks**
```objc
-(NSURLSessionTask*) getAllWebhooksWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    inboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
    before: (NSDate*) before
    health: (NSString*) health
    eventType: (NSString*) eventType
    url: (NSString*) url
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
NSNumber* size = @20; // Optional page size for paginated result list. (optional) (default to @20)
NSString* sort = @"DESC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSString* inboxId = @"inboxId_example"; // Filter by inboxId (optional)
NSString* phoneId = @"phoneId_example"; // Filter by phoneId (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* health = @"health_example"; // Filter by webhook health (optional)
NSString* eventType = @"eventType_example"; // Optional event type (optional)
NSString* url = @"url_example"; // Optional url endpoint filter (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// List Webhooks Paginated
[apiInstance getAllWebhooksWithPage:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              inboxId:inboxId
              phoneId:phoneId
              before:before
              health:health
              eventType:eventType
              url:url
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
 **size** | **NSNumber***| Optional page size for paginated result list. | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;DESC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **inboxId** | [**NSString***]()| Filter by inboxId | [optional] 
 **phoneId** | [**NSString***]()| Filter by phoneId | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **health** | **NSString***| Filter by webhook health | [optional] 
 **eventType** | **NSString***| Optional event type | [optional] 
 **url** | **NSString***| Optional url endpoint filter | [optional] 

### Return type

[**OAIPageWebhookProjection***](OAIPageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxWebhooksPaginated**
```objc
-(NSURLSessionTask*) getInboxWebhooksPaginatedWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    health: (NSString*) health
    eventType: (NSString*) eventType
        completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler;
```

Get paginated webhooks for an Inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* health = @"health_example"; // Filter by webhook health (optional)
NSString* eventType = @"eventType_example"; // Optional event type (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get paginated webhooks for an Inbox
[apiInstance getInboxWebhooksPaginatedWithInboxId:inboxId
              page:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
              health:health
              eventType:eventType
          completionHandler: ^(OAIPageWebhookProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getInboxWebhooksPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **health** | **NSString***| Filter by webhook health | [optional] 
 **eventType** | **NSString***| Optional event type | [optional] 

### Return type

[**OAIPageWebhookProjection***](OAIPageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonSchemaForWebhookEvent**
```objc
-(NSURLSessionTask*) getJsonSchemaForWebhookEventWithEvent: (NSString*) event
        completionHandler: (void (^)(OAIJSONSchemaDto* output, NSError* error)) handler;
```



Get JSON Schema definition for webhook payload by event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* event = @"event_example"; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

[apiInstance getJsonSchemaForWebhookEventWithEvent:event
          completionHandler: ^(OAIJSONSchemaDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getJsonSchemaForWebhookEvent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event** | **NSString***|  | 

### Return type

[**OAIJSONSchemaDto***](OAIJSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonSchemaForWebhookPayload**
```objc
-(NSURLSessionTask*) getJsonSchemaForWebhookPayloadWithWebhookId: (NSString*) webhookId
        completionHandler: (void (^)(OAIJSONSchemaDto* output, NSError* error)) handler;
```



Get JSON Schema definition for webhook payload

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

[apiInstance getJsonSchemaForWebhookPayloadWithWebhookId:webhookId
          completionHandler: ^(OAIJSONSchemaDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getJsonSchemaForWebhookPayload: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()|  | 

### Return type

[**OAIJSONSchemaDto***](OAIJSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberWebhooksPaginated**
```objc
-(NSURLSessionTask*) getPhoneNumberWebhooksPaginatedWithPhoneId: (NSString*) phoneId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    eventType: (NSString*) eventType
    searchFilter: (NSString*) searchFilter
    health: (NSString*) health
        completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler;
```

Get paginated webhooks for a phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneId = @"phoneId_example"; // 
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* eventType = @"eventType_example"; // Optional event type (optional)
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSString* health = @"health_example"; // Filter by webhook health (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get paginated webhooks for a phone number
[apiInstance getPhoneNumberWebhooksPaginatedWithPhoneId:phoneId
              page:page
              size:size
              sort:sort
              since:since
              before:before
              eventType:eventType
              searchFilter:searchFilter
              health:health
          completionHandler: ^(OAIPageWebhookProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getPhoneNumberWebhooksPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneId** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **eventType** | **NSString***| Optional event type | [optional] 
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **health** | **NSString***| Filter by webhook health | [optional] 

### Return type

[**OAIPageWebhookProjection***](OAIPageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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


NSString* eventName = @"eventName_example"; //  (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

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
 **eventName** | **NSString***|  | [optional] 

### Return type

[**OAIAbstractWebhookPayload***](OAIAbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadBounce**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadBounceWithCompletionHandler: 
        (void (^)(OAIWebhookBouncePayload* output, NSError* error)) handler;
```



Get webhook test payload for bounce

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

[apiInstance getTestWebhookPayloadBounceWithCompletionHandler: 
          ^(OAIWebhookBouncePayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadBounce: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookBouncePayload***](OAIWebhookBouncePayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadBounceRecipient**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadBounceRecipientWithCompletionHandler: 
        (void (^)(OAIWebhookBounceRecipientPayload* output, NSError* error)) handler;
```



Get webhook test payload for bounce recipient

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

[apiInstance getTestWebhookPayloadBounceRecipientWithCompletionHandler: 
          ^(OAIWebhookBounceRecipientPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadBounceRecipient: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookBounceRecipientPayload***](OAIWebhookBounceRecipientPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadDeliveryStatus**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadDeliveryStatusWithCompletionHandler: 
        (void (^)(OAIWebhookDeliveryStatusPayload* output, NSError* error)) handler;
```

Get webhook test payload for delivery status event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get webhook test payload for delivery status event
[apiInstance getTestWebhookPayloadDeliveryStatusWithCompletionHandler: 
          ^(OAIWebhookDeliveryStatusPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadDeliveryStatus: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookDeliveryStatusPayload***](OAIWebhookDeliveryStatusPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadEmailOpened**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadEmailOpenedWithCompletionHandler: 
        (void (^)(OAIWebhookEmailOpenedPayload* output, NSError* error)) handler;
```



Get webhook test payload for email opened event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

[apiInstance getTestWebhookPayloadEmailOpenedWithCompletionHandler: 
          ^(OAIWebhookEmailOpenedPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadEmailOpened: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookEmailOpenedPayload***](OAIWebhookEmailOpenedPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadEmailRead**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadEmailReadWithCompletionHandler: 
        (void (^)(OAIWebhookEmailReadPayload* output, NSError* error)) handler;
```



Get webhook test payload for email opened event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

[apiInstance getTestWebhookPayloadEmailReadWithCompletionHandler: 
          ^(OAIWebhookEmailReadPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadEmailRead: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookEmailReadPayload***](OAIWebhookEmailReadPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadForWebhook**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadForWebhookWithWebhookId: (NSString*) webhookId
        completionHandler: (void (^)(OAIAbstractWebhookPayload* output, NSError* error)) handler;
```



Get example payload for webhook

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

[apiInstance getTestWebhookPayloadForWebhookWithWebhookId:webhookId
          completionHandler: ^(OAIAbstractWebhookPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadForWebhook: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()|  | 

### Return type

[**OAIAbstractWebhookPayload***](OAIAbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewAITransformResult**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadNewAITransformResultWithCompletionHandler: 
        (void (^)(OAIWebhookNewAITransformResultPayload* output, NSError* error)) handler;
```

Get webhook test payload for new ai transform result event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get webhook test payload for new ai transform result event
[apiInstance getTestWebhookPayloadNewAITransformResultWithCompletionHandler: 
          ^(OAIWebhookNewAITransformResultPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadNewAITransformResult: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookNewAITransformResultPayload***](OAIWebhookNewAITransformResultPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
 - **Accept**: */*

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
 - **Accept**: */*

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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewSms**
```objc
-(NSURLSessionTask*) getTestWebhookPayloadNewSmsWithCompletionHandler: 
        (void (^)(OAIWebhookNewSmsPayload* output, NSError* error)) handler;
```

Get webhook test payload for new sms event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get webhook test payload for new sms event
[apiInstance getTestWebhookPayloadNewSmsWithCompletionHandler: 
          ^(OAIWebhookNewSmsPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getTestWebhookPayloadNewSms: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookNewSmsPayload***](OAIWebhookNewSmsPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhook**
```objc
-(NSURLSessionTask*) getWebhookWithWebhookId: (NSString*) webhookId
        completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler;
```

Get a webhook

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get a webhook
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
 **webhookId** | [**NSString***]()|  | 

### Return type

[**OAIWebhookDto***](OAIWebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResult**
```objc
-(NSURLSessionTask*) getWebhookResultWithWebhookResultId: (NSString*) webhookResultId
        completionHandler: (void (^)(OAIWebhookResultDto* output, NSError* error)) handler;
```

Get a webhook result for a webhook

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookResultId = @"webhookResultId_example"; // Webhook Result ID

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get a webhook result for a webhook
[apiInstance getWebhookResultWithWebhookResultId:webhookResultId
          completionHandler: ^(OAIWebhookResultDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getWebhookResult: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookResultId** | [**NSString***]()| Webhook Result ID | 

### Return type

[**OAIWebhookResultDto***](OAIWebhookResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResults**
```objc
-(NSURLSessionTask*) getWebhookResultsWithWebhookId: (NSString*) webhookId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    unseenOnly: (NSNumber*) unseenOnly
    resultType: (NSString*) resultType
    eventName: (NSString*) eventName
    minStatusCode: (NSNumber*) minStatusCode
    maxStatusCode: (NSNumber*) maxStatusCode
    inboxId: (NSString*) inboxId
    smsId: (NSString*) smsId
    attachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
    phoneId: (NSString*) phoneId
        completionHandler: (void (^)(OAIPageWebhookResult* output, NSError* error)) handler;
```

Get a webhook results for a webhook

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // ID of webhook to get results for
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSNumber* unseenOnly = @56; // Filter for unseen exceptions only (optional)
NSString* resultType = @"resultType_example"; // Filter by result type (optional)
NSString* eventName = @"eventName_example"; // Filter by event name (optional)
NSNumber* minStatusCode = @56; // Minimum response status (optional)
NSNumber* maxStatusCode = @56; // Maximum response status (optional)
NSString* inboxId = @"inboxId_example"; // Inbox ID (optional)
NSString* smsId = @"smsId_example"; // Sms ID (optional)
NSString* attachmentId = @"attachmentId_example"; // Attachment ID (optional)
NSString* emailId = @"emailId_example"; // Email ID (optional)
NSString* phoneId = @"phoneId_example"; // Phone ID (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get a webhook results for a webhook
[apiInstance getWebhookResultsWithWebhookId:webhookId
              page:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
              unseenOnly:unseenOnly
              resultType:resultType
              eventName:eventName
              minStatusCode:minStatusCode
              maxStatusCode:maxStatusCode
              inboxId:inboxId
              smsId:smsId
              attachmentId:attachmentId
              emailId:emailId
              phoneId:phoneId
          completionHandler: ^(OAIPageWebhookResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getWebhookResults: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()| ID of webhook to get results for | 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **unseenOnly** | **NSNumber***| Filter for unseen exceptions only | [optional] 
 **resultType** | **NSString***| Filter by result type | [optional] 
 **eventName** | **NSString***| Filter by event name | [optional] 
 **minStatusCode** | **NSNumber***| Minimum response status | [optional] 
 **maxStatusCode** | **NSNumber***| Maximum response status | [optional] 
 **inboxId** | [**NSString***]()| Inbox ID | [optional] 
 **smsId** | [**NSString***]()| Sms ID | [optional] 
 **attachmentId** | [**NSString***]()| Attachment ID | [optional] 
 **emailId** | [**NSString***]()| Email ID | [optional] 
 **phoneId** | [**NSString***]()| Phone ID | [optional] 

### Return type

[**OAIPageWebhookResult***](OAIPageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResultsCount**
```objc
-(NSURLSessionTask*) getWebhookResultsCountWithWebhookId: (NSString*) webhookId
        completionHandler: (void (^)(OAICountDto* output, NSError* error)) handler;
```

Get a webhook results count for a webhook

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // ID of webhook to get results for

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get a webhook results count for a webhook
[apiInstance getWebhookResultsCountWithWebhookId:webhookId
          completionHandler: ^(OAICountDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getWebhookResultsCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()| ID of webhook to get results for | 

### Return type

[**OAICountDto***](OAICountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResultsUnseenErrorCount**
```objc
-(NSURLSessionTask*) getWebhookResultsUnseenErrorCountWithCompletionHandler: 
        (void (^)(OAIUnseenErrorCountDto* output, NSError* error)) handler;
```

Get count of unseen webhook results with error status

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get count of unseen webhook results with error status
[apiInstance getWebhookResultsUnseenErrorCountWithCompletionHandler: 
          ^(OAIUnseenErrorCountDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->getWebhookResultsUnseenErrorCount: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIUnseenErrorCountDto***](OAIUnseenErrorCountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhooks**
```objc
-(NSURLSessionTask*) getWebhooksWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(NSArray<OAIWebhookProjection>* output, NSError* error)) handler;
```

Get all webhooks for an Inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get all webhooks for an Inbox
[apiInstance getWebhooksWithInboxId:inboxId
              page:page
              size:size
              sort:sort
          completionHandler: ^(NSArray<OAIWebhookProjection>* output, NSError* error) {
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
 **inboxId** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**NSArray<OAIWebhookProjection>***](OAIWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **redriveAllWebhookResults**
```objc
-(NSURLSessionTask*) redriveAllWebhookResultsWithCompletionHandler: 
        (void (^)(OAIWebhookRedriveAllResult* output, NSError* error)) handler;
```

Redrive all webhook results that have failed status

Allows you to resend webhook payloads for any recorded webhook result that failed to deliver the payload.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Redrive all webhook results that have failed status
[apiInstance redriveAllWebhookResultsWithCompletionHandler: 
          ^(OAIWebhookRedriveAllResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->redriveAllWebhookResults: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIWebhookRedriveAllResult***](OAIWebhookRedriveAllResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **redriveWebhookResult**
```objc
-(NSURLSessionTask*) redriveWebhookResultWithWebhookResultId: (NSString*) webhookResultId
        completionHandler: (void (^)(OAIWebhookRedriveResult* output, NSError* error)) handler;
```

Get a webhook result and try to resend the original webhook payload

Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookResultId = @"webhookResultId_example"; // Webhook Result ID

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Get a webhook result and try to resend the original webhook payload
[apiInstance redriveWebhookResultWithWebhookResultId:webhookResultId
          completionHandler: ^(OAIWebhookRedriveResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->redriveWebhookResult: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookResultId** | [**NSString***]()| Webhook Result ID | 

### Return type

[**OAIWebhookRedriveResult***](OAIWebhookRedriveResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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


NSString* webhookId = @"webhookId_example"; // 

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
 **webhookId** | [**NSString***]()|  | 

### Return type

[**OAIWebhookTestResult***](OAIWebhookTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateWebhook**
```objc
-(NSURLSessionTask*) updateWebhookWithWebhookId: (NSString*) webhookId
    createWebhookOptions: (OAICreateWebhookOptions*) createWebhookOptions
    inboxId: (NSString*) inboxId
    phoneNumberId: (NSString*) phoneNumberId
    overrideAuth: (NSNumber*) overrideAuth
        completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler;
```

Update a webhook

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // 
OAICreateWebhookOptions* createWebhookOptions = [[OAICreateWebhookOptions alloc] init]; // 
NSString* inboxId = @"inboxId_example"; //  (optional)
NSString* phoneNumberId = @"phoneNumberId_example"; //  (optional)
NSNumber* overrideAuth = @56; //  (optional)

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Update a webhook
[apiInstance updateWebhookWithWebhookId:webhookId
              createWebhookOptions:createWebhookOptions
              inboxId:inboxId
              phoneNumberId:phoneNumberId
              overrideAuth:overrideAuth
          completionHandler: ^(OAIWebhookDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->updateWebhook: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()|  | 
 **createWebhookOptions** | [**OAICreateWebhookOptions***](OAICreateWebhookOptions)|  | 
 **inboxId** | [**NSString***]()|  | [optional] 
 **phoneNumberId** | [**NSString***]()|  | [optional] 
 **overrideAuth** | **NSNumber***|  | [optional] 

### Return type

[**OAIWebhookDto***](OAIWebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateWebhookHeaders**
```objc
-(NSURLSessionTask*) updateWebhookHeadersWithWebhookId: (NSString*) webhookId
    webhookHeaders: (OAIWebhookHeaders*) webhookHeaders
        completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler;
```

Update a webhook request headers

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // 
OAIWebhookHeaders* webhookHeaders = [[OAIWebhookHeaders alloc] init]; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Update a webhook request headers
[apiInstance updateWebhookHeadersWithWebhookId:webhookId
              webhookHeaders:webhookHeaders
          completionHandler: ^(OAIWebhookDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->updateWebhookHeaders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()|  | 
 **webhookHeaders** | [**OAIWebhookHeaders***](OAIWebhookHeaders)|  | 

### Return type

[**OAIWebhookDto***](OAIWebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verifyWebhookSignature**
```objc
-(NSURLSessionTask*) verifyWebhookSignatureWithVerifyWebhookSignatureOptions: (OAIVerifyWebhookSignatureOptions*) verifyWebhookSignatureOptions
        completionHandler: (void (^)(OAIVerifyWebhookSignatureResults* output, NSError* error)) handler;
```

Verify a webhook payload signature

Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIVerifyWebhookSignatureOptions* verifyWebhookSignatureOptions = [[OAIVerifyWebhookSignatureOptions alloc] init]; // 

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Verify a webhook payload signature
[apiInstance verifyWebhookSignatureWithVerifyWebhookSignatureOptions:verifyWebhookSignatureOptions
          completionHandler: ^(OAIVerifyWebhookSignatureResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->verifyWebhookSignature: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyWebhookSignatureOptions** | [**OAIVerifyWebhookSignatureOptions***](OAIVerifyWebhookSignatureOptions)|  | 

### Return type

[**OAIVerifyWebhookSignatureResults***](OAIVerifyWebhookSignatureResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForWebhookResults**
```objc
-(NSURLSessionTask*) waitForWebhookResultsWithWebhookId: (NSString*) webhookId
    expectedCount: (NSNumber*) expectedCount
    timeout: (NSNumber*) timeout
        completionHandler: (void (^)(NSArray<OAIWebhookResultDto>* output, NSError* error)) handler;
```

Wait for webhook results for a webhook

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* webhookId = @"webhookId_example"; // ID of webhook to get results for
NSNumber* expectedCount = @56; // Expected result count
NSNumber* timeout = @56; // Max time to wait in milliseconds

OAIWebhookControllerApi*apiInstance = [[OAIWebhookControllerApi alloc] init];

// Wait for webhook results for a webhook
[apiInstance waitForWebhookResultsWithWebhookId:webhookId
              expectedCount:expectedCount
              timeout:timeout
          completionHandler: ^(NSArray<OAIWebhookResultDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhookControllerApi->waitForWebhookResults: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**NSString***]()| ID of webhook to get results for | 
 **expectedCount** | **NSNumber***| Expected result count | 
 **timeout** | **NSNumber***| Max time to wait in milliseconds | 

### Return type

[**NSArray<OAIWebhookResultDto>***](OAIWebhookResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

