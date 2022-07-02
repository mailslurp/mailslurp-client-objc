# OAISmsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSmsMessage**](OAISmsControllerApi#deletesmsmessage) | **DELETE** /sms/{smsId} | Delete SMS message.
[**deleteSmsMessages**](OAISmsControllerApi#deletesmsmessages) | **DELETE** /sms | Delete all SMS messages
[**getSmsMessage**](OAISmsControllerApi#getsmsmessage) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**getSmsMessagesPaginated**](OAISmsControllerApi#getsmsmessagespaginated) | **GET** /sms | Get all SMS messages in all phone numbers in paginated form. .


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

# **getSmsMessage**
```objc
-(NSURLSessionTask*) getSmsMessageWithSmsId: (NSString*) smsId
        completionHandler: (void (^)(OAISmsMessage* output, NSError* error)) handler;
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
          completionHandler: ^(OAISmsMessage* output, NSError* error) {
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

[**OAISmsMessage***](OAISmsMessage)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsMessagesPaginated**
```objc
-(NSURLSessionTask*) getSmsMessagesPaginatedWithPhoneNumber: (NSString*) phoneNumber
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageSmsProjection* output, NSError* error)) handler;
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


NSString* phoneNumber = @"phoneNumber_example"; // Optional receiving phone number to filter SMS messages for (optional)
NSNumber* page = @0; // Optional page index in SMS list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSNumber* unreadOnly = @(NO); // Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly (optional) (default to @(NO))
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received before given date time (optional)

OAISmsControllerApi*apiInstance = [[OAISmsControllerApi alloc] init];

// Get all SMS messages in all phone numbers in paginated form. .
[apiInstance getSmsMessagesPaginatedWithPhoneNumber:phoneNumber
              page:page
              size:size
              sort:sort
              unreadOnly:unreadOnly
              since:since
              before:before
          completionHandler: ^(OAIPageSmsProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISmsControllerApi->getSmsMessagesPaginated: %@", error);
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
 **unreadOnly** | **NSNumber***| Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to @(NO)]
 **since** | **NSDate***| Optional filter SMSs received after given date time | [optional] 
 **before** | **NSDate***| Optional filter SMSs received before given date time | [optional] 

### Return type

[**OAIPageSmsProjection***](OAIPageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)
