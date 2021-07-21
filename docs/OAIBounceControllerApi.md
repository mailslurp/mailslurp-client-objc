# OAIBounceControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBouncedEmail**](OAIBounceControllerApi#getbouncedemail) | **GET** /bounce/emails/{id} | Get a bounced email.
[**getBouncedEmails**](OAIBounceControllerApi#getbouncedemails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**getBouncedRecipient**](OAIBounceControllerApi#getbouncedrecipient) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**getBouncedRecipients**](OAIBounceControllerApi#getbouncedrecipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.


# **getBouncedEmail**
```objc
-(NSURLSessionTask*) getBouncedEmailWithId: (NSString*) _id
        completionHandler: (void (^)(OAIBounce* output, NSError* error)) handler;
```

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of the bounced email to fetch

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Get a bounced email.
[apiInstance getBouncedEmailWithId:_id
          completionHandler: ^(OAIBounce* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBounceControllerApi->getBouncedEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of the bounced email to fetch | 

### Return type

[**OAIBounce***](OAIBounce)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedEmails**
```objc
-(NSURLSessionTask*) getBouncedEmailsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageBouncedEmail* output, NSError* error)) handler;
```

Get paginated list of bounced emails.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index  (optional) (default to @0)
NSNumber* size = @20; // Optional page size  (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Get paginated list of bounced emails.
[apiInstance getBouncedEmailsWithPage:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageBouncedEmail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBounceControllerApi->getBouncedEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index  | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size  | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageBouncedEmail***](OAIPageBouncedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedRecipient**
```objc
-(NSURLSessionTask*) getBouncedRecipientWithId: (NSString*) _id
        completionHandler: (void (^)(OAIBounceRecipient* output, NSError* error)) handler;
```

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of the bounced recipient

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Get a bounced email.
[apiInstance getBouncedRecipientWithId:_id
          completionHandler: ^(OAIBounceRecipient* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBounceControllerApi->getBouncedRecipient: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of the bounced recipient | 

### Return type

[**OAIBounceRecipient***](OAIBounceRecipient)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedRecipients**
```objc
-(NSURLSessionTask*) getBouncedRecipientsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageBouncedRecipients* output, NSError* error)) handler;
```

Get paginated list of bounced recipients.

Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index  (optional) (default to @0)
NSNumber* size = @20; // Optional page size  (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Get paginated list of bounced recipients.
[apiInstance getBouncedRecipientsWithPage:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageBouncedRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBounceControllerApi->getBouncedRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index  | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size  | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageBouncedRecipients***](OAIPageBouncedRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

