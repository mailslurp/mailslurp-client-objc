# OAISmsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSentSmsMessage**](OAISmsControllerApi#deletesentsmsmessage) | **DELETE** /sms/sent/{sentSmsId} | Delete sent SMS message.
[**deleteSentSmsMessages**](OAISmsControllerApi#deletesentsmsmessages) | **DELETE** /sms/sent | Delete all sent SMS messages
[**deleteSmsMessage**](OAISmsControllerApi#deletesmsmessage) | **DELETE** /sms/{smsId} | Delete SMS message.
[**deleteSmsMessages**](OAISmsControllerApi#deletesmsmessages) | **DELETE** /sms | Delete all SMS messages
[**getAllSmsMessages**](OAISmsControllerApi#getallsmsmessages) | **GET** /sms | 
[**getReplyForSmsMessage**](OAISmsControllerApi#getreplyforsmsmessage) | **GET** /sms/{smsId}/reply | Get reply for an SMS message
[**getSentSmsCount**](OAISmsControllerApi#getsentsmscount) | **GET** /sms/sent/count | Get sent SMS count
[**getSentSmsMessage**](OAISmsControllerApi#getsentsmsmessage) | **GET** /sms/sent/{sentSmsId} | Get sent SMS content including body. Expects sent SMS to exist by ID.
[**getSentSmsMessagesPaginated**](OAISmsControllerApi#getsentsmsmessagespaginated) | **GET** /sms/sent | Get all SMS messages in all phone numbers in paginated form. .
[**getSmsCount**](OAISmsControllerApi#getsmscount) | **GET** /sms/count | Get SMS count
[**getSmsMessage**](OAISmsControllerApi#getsmsmessage) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**getUnreadSmsCount**](OAISmsControllerApi#getunreadsmscount) | **GET** /sms/unreadCount | Get unread SMS count
[**replyToSmsMessage**](OAISmsControllerApi#replytosmsmessage) | **POST** /sms/{smsId}/reply | Send a reply to a received SMS message. Replies are sent from the receiving number.
[**sendSms**](OAISmsControllerApi#sendsms) | **POST** /sms/send | 
[**setSmsFavourited**](OAISmsControllerApi#setsmsfavourited) | **PUT** /sms/{smsId}/favourite | 


# **deleteSentSmsMessage**
```objc
-(NSURLSessionTask*) deleteSentSmsMessageWithSentSmsId: (NSString*) sentSmsId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete sent SMS message.

Delete a sent SMS message

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* sentSmsId = @"sentSmsId_example"; // 

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Delete sent SMS message.
[apiInstance deleteSentSmsMessageWithSentSmsId:sentSmsId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->deleteSentSmsMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sentSmsId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSentSmsMessages**
```objc
-(NSURLSessionTask*) deleteSentSmsMessagesWithPhoneNumberId: (NSString*) phoneNumberId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete all sent SMS messages

Delete all sent SMS messages or all messages for a given phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; //  (optional)

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Delete all sent SMS messages
[apiInstance deleteSentSmsMessagesWithPhoneNumberId:phoneNumberId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->deleteSentSmsMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSmsMessage**
```objc
-(NSURLSessionTask*) deleteSmsMessageWithSmsId: (NSString*) smsId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete SMS message.

Delete an SMS message

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* smsId = @"smsId_example"; // 

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Delete SMS message.
[apiInstance deleteSmsMessageWithSmsId:smsId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->deleteSmsMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSmsMessages**
```objc
-(NSURLSessionTask*) deleteSmsMessagesWithPhoneNumberId: (NSString*) phoneNumberId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete all SMS messages

Delete all SMS messages or all messages for a given phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; //  (optional)

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Delete all SMS messages
[apiInstance deleteSmsMessagesWithPhoneNumberId:phoneNumberId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->deleteSmsMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllSmsMessages**
```objc
-(NSURLSessionTask*) getAllSmsMessagesWithPhoneNumber: (NSString*) phoneNumber
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    search: (NSString*) search
    favourite: (NSNumber*) favourite
        completionHandler: (void (^)(OAIPageSmsProjection* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumber = @"phoneNumber_example"; // Optional receiving phone number to filter SMS messages for (optional)
NSNumber* page = @0; // Optional page index in SMS list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received before given date time (optional)
NSString* search = @"search_example"; // Optional search filter (optional)
NSNumber* favourite = @(NO); // Optionally filter results for favourites only (optional) (default to @(NO))

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

[apiInstance getAllSmsMessagesWithPhoneNumber:phoneNumber
              page:page
              size:size
              sort:sort
              since:since
              before:before
              search:search
              favourite:favourite
          completionHandler: ^(OAIPageSmsProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->getAllSmsMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | [**NSString***]()| Optional receiving phone number to filter SMS messages for | [optional] 
 **page** | **NSNumber***| Optional page index in SMS list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Optional filter SMSs received after given date time | [optional] 
 **before** | **NSDate***| Optional filter SMSs received before given date time | [optional] 
 **search** | **NSString***| Optional search filter | [optional] 
 **favourite** | **NSNumber***| Optionally filter results for favourites only | [optional] [default to @(NO)]

### Return type

[**OAIPageSmsProjection***](OAIPageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getReplyForSmsMessage**
```objc
-(NSURLSessionTask*) getReplyForSmsMessageWithSmsId: (NSString*) smsId
        completionHandler: (void (^)(OAIReplyForSms* output, NSError* error)) handler;
```

Get reply for an SMS message

Get reply for an SMS message.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* smsId = @"smsId_example"; // 

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Get reply for an SMS message
[apiInstance getReplyForSmsMessageWithSmsId:smsId
          completionHandler: ^(OAIReplyForSms* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->getReplyForSmsMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | [**NSString***]()|  | 

### Return type

[**OAIReplyForSms***](OAIReplyForSms)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsCount**
```objc
-(NSURLSessionTask*) getSentSmsCountWithCompletionHandler: 
        (void (^)(OAICountDto* output, NSError* error)) handler;
```

Get sent SMS count

Get number of sent SMS

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Get sent SMS count
[apiInstance getSentSmsCountWithCompletionHandler: 
          ^(OAICountDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->getSentSmsCount: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAICountDto***](OAICountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsMessage**
```objc
-(NSURLSessionTask*) getSentSmsMessageWithSentSmsId: (NSString*) sentSmsId
        completionHandler: (void (^)(OAISentSmsDto* output, NSError* error)) handler;
```

Get sent SMS content including body. Expects sent SMS to exist by ID.

Returns an SMS summary object with content.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* sentSmsId = @"sentSmsId_example"; // 

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Get sent SMS content including body. Expects sent SMS to exist by ID.
[apiInstance getSentSmsMessageWithSentSmsId:sentSmsId
          completionHandler: ^(OAISentSmsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->getSentSmsMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sentSmsId** | [**NSString***]()|  | 

### Return type

[**OAISentSmsDto***](OAISentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsMessagesPaginated**
```objc
-(NSURLSessionTask*) getSentSmsMessagesPaginatedWithPhoneNumber: (NSString*) phoneNumber
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    search: (NSString*) search
        completionHandler: (void (^)(OAIPageSentSmsProjection* output, NSError* error)) handler;
```

Get all SMS messages in all phone numbers in paginated form. .

By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumber = @"phoneNumber_example"; // Optional phone number to filter sent SMS messages for (optional)
NSNumber* page = @0; // Optional page index in SMS list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received before given date time (optional)
NSString* search = @"search_example"; // Optional search filter (optional)

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Get all SMS messages in all phone numbers in paginated form. .
[apiInstance getSentSmsMessagesPaginatedWithPhoneNumber:phoneNumber
              page:page
              size:size
              sort:sort
              since:since
              before:before
              search:search
          completionHandler: ^(OAIPageSentSmsProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->getSentSmsMessagesPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | [**NSString***]()| Optional phone number to filter sent SMS messages for | [optional] 
 **page** | **NSNumber***| Optional page index in SMS list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Optional filter SMSs received after given date time | [optional] 
 **before** | **NSDate***| Optional filter SMSs received before given date time | [optional] 
 **search** | **NSString***| Optional search filter | [optional] 

### Return type

[**OAIPageSentSmsProjection***](OAIPageSentSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsCount**
```objc
-(NSURLSessionTask*) getSmsCountWithCompletionHandler: 
        (void (^)(OAICountDto* output, NSError* error)) handler;
```

Get SMS count

Get number of SMS

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Get SMS count
[apiInstance getSmsCountWithCompletionHandler: 
          ^(OAICountDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->getSmsCount: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAICountDto***](OAICountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsMessage**
```objc
-(NSURLSessionTask*) getSmsMessageWithSmsId: (NSString*) smsId
        completionHandler: (void (^)(OAISmsDto* output, NSError* error)) handler;
```

Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.

Returns a SMS summary object with content.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* smsId = @"smsId_example"; // 

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[apiInstance getSmsMessageWithSmsId:smsId
          completionHandler: ^(OAISmsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->getSmsMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | [**NSString***]()|  | 

### Return type

[**OAISmsDto***](OAISmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUnreadSmsCount**
```objc
-(NSURLSessionTask*) getUnreadSmsCountWithCompletionHandler: 
        (void (^)(OAIUnreadCount* output, NSError* error)) handler;
```

Get unread SMS count

Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Get unread SMS count
[apiInstance getUnreadSmsCountWithCompletionHandler: 
          ^(OAIUnreadCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->getUnreadSmsCount: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIUnreadCount***](OAIUnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToSmsMessage**
```objc
-(NSURLSessionTask*) replyToSmsMessageWithSmsId: (NSString*) smsId
    smsReplyOptions: (OAISmsReplyOptions*) smsReplyOptions
        completionHandler: (void (^)(OAISentSmsDto* output, NSError* error)) handler;
```

Send a reply to a received SMS message. Replies are sent from the receiving number.

Reply to an SMS message.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* smsId = @"smsId_example"; // 
OAISmsReplyOptions* smsReplyOptions = [[OAISmsReplyOptions alloc] init]; // 

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Send a reply to a received SMS message. Replies are sent from the receiving number.
[apiInstance replyToSmsMessageWithSmsId:smsId
              smsReplyOptions:smsReplyOptions
          completionHandler: ^(OAISentSmsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->replyToSmsMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | [**NSString***]()|  | 
 **smsReplyOptions** | [**OAISmsReplyOptions***](OAISmsReplyOptions)|  | 

### Return type

[**OAISentSmsDto***](OAISentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendSms**
```objc
-(NSURLSessionTask*) sendSmsWithSmsSendOptions: (OAISmsSendOptions*) smsSendOptions
    fromPhoneNumber: (NSString*) fromPhoneNumber
    fromPhoneId: (NSString*) fromPhoneId
        completionHandler: (void (^)(OAISentSmsDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAISmsSendOptions* smsSendOptions = [[OAISmsSendOptions alloc] init]; // 
NSString* fromPhoneNumber = @"fromPhoneNumber_example"; // Phone number to send from in E.164 format (optional)
NSString* fromPhoneId = @"fromPhoneId_example"; // Phone number ID to send from in UUID form (optional)

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

[apiInstance sendSmsWithSmsSendOptions:smsSendOptions
              fromPhoneNumber:fromPhoneNumber
              fromPhoneId:fromPhoneId
          completionHandler: ^(OAISentSmsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->sendSms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsSendOptions** | [**OAISmsSendOptions***](OAISmsSendOptions)|  | 
 **fromPhoneNumber** | **NSString***| Phone number to send from in E.164 format | [optional] 
 **fromPhoneId** | [**NSString***]()| Phone number ID to send from in UUID form | [optional] 

### Return type

[**OAISentSmsDto***](OAISentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setSmsFavourited**
```objc
-(NSURLSessionTask*) setSmsFavouritedWithSmsId: (NSString*) smsId
    favourited: (NSNumber*) favourited
        completionHandler: (void (^)(OAISmsDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* smsId = @"smsId_example"; // ID of SMS to set favourite state
NSNumber* favourited = @56; // 

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

[apiInstance setSmsFavouritedWithSmsId:smsId
              favourited:favourited
          completionHandler: ^(OAISmsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->setSmsFavourited: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | [**NSString***]()| ID of SMS to set favourite state | 
 **favourited** | **NSNumber***|  | 

### Return type

[**OAISmsDto***](OAISmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

