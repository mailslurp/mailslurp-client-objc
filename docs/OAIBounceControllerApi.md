# OAIBounceControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filterBouncedRecipient**](OAIBounceControllerApi#filterbouncedrecipient) | **POST** /bounce/filter-recipients | Filter a list of email recipients and remove those who have bounced
[**getAccountBounceBlockStatus**](OAIBounceControllerApi#getaccountbounceblockstatus) | **GET** /bounce/account-block | Can account send email
[**getBouncedEmail**](OAIBounceControllerApi#getbouncedemail) | **GET** /bounce/emails/{id} | Get a bounced email.
[**getBouncedEmails**](OAIBounceControllerApi#getbouncedemails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**getBouncedRecipient**](OAIBounceControllerApi#getbouncedrecipient) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**getBouncedRecipients**](OAIBounceControllerApi#getbouncedrecipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.
[**getComplaint**](OAIBounceControllerApi#getcomplaint) | **GET** /bounce/complaints/{id} | Get complaint
[**getComplaints**](OAIBounceControllerApi#getcomplaints) | **GET** /bounce/complaints | Get paginated list of complaints.
[**getListUnsubscribeRecipients**](OAIBounceControllerApi#getlistunsubscriberecipients) | **GET** /bounce/list-unsubscribe-recipients | Get paginated list of unsubscribed recipients.


# **filterBouncedRecipient**
```objc
-(NSURLSessionTask*) filterBouncedRecipientWithFilterBouncedRecipientsOptions: (OAIFilterBouncedRecipientsOptions*) filterBouncedRecipientsOptions
        completionHandler: (void (^)(OAIFilterBouncedRecipientsResult* output, NSError* error)) handler;
```

Filter a list of email recipients and remove those who have bounced

Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIFilterBouncedRecipientsOptions* filterBouncedRecipientsOptions = [[OAIFilterBouncedRecipientsOptions alloc] init]; // 

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Filter a list of email recipients and remove those who have bounced
[apiInstance filterBouncedRecipientWithFilterBouncedRecipientsOptions:filterBouncedRecipientsOptions
          completionHandler: ^(OAIFilterBouncedRecipientsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBounceControllerApi->filterBouncedRecipient: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterBouncedRecipientsOptions** | [**OAIFilterBouncedRecipientsOptions***](OAIFilterBouncedRecipientsOptions)|  | 

### Return type

[**OAIFilterBouncedRecipientsResult***](OAIFilterBouncedRecipientsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAccountBounceBlockStatus**
```objc
-(NSURLSessionTask*) getAccountBounceBlockStatusWithCompletionHandler: 
        (void (^)(OAIAccountBounceBlockDto* output, NSError* error)) handler;
```

Can account send email

Check if account block status prevents sending

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Can account send email
[apiInstance getAccountBounceBlockStatusWithCompletionHandler: 
          ^(OAIAccountBounceBlockDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBounceControllerApi->getAccountBounceBlockStatus: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIAccountBounceBlockDto***](OAIAccountBounceBlockDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedEmail**
```objc
-(NSURLSessionTask*) getBouncedEmailWithId: (NSString*) _id
        completionHandler: (void (^)(OAIBouncedEmailDto* output, NSError* error)) handler;
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
          completionHandler: ^(OAIBouncedEmailDto* output, NSError* error) {
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

[**OAIBouncedEmailDto***](OAIBouncedEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedEmails**
```objc
-(NSURLSessionTask*) getBouncedEmailsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
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


NSNumber* page = @0; // Optional page index (optional) (default to @0)
NSNumber* size = @20; // Optional page size  (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Get paginated list of bounced emails.
[apiInstance getBouncedEmailsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
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
 **page** | **NSNumber***| Optional page index | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size  | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageBouncedEmail***](OAIPageBouncedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedRecipient**
```objc
-(NSURLSessionTask*) getBouncedRecipientWithId: (NSString*) _id
        completionHandler: (void (^)(OAIBouncedRecipientDto* output, NSError* error)) handler;
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
          completionHandler: ^(OAIBouncedRecipientDto* output, NSError* error) {
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

[**OAIBouncedRecipientDto***](OAIBouncedRecipientDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedRecipients**
```objc
-(NSURLSessionTask*) getBouncedRecipientsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
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
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Get paginated list of bounced recipients.
[apiInstance getBouncedRecipientsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
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
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageBouncedRecipients***](OAIPageBouncedRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getComplaint**
```objc
-(NSURLSessionTask*) getComplaintWithId: (NSString*) _id
        completionHandler: (void (^)(OAIComplaint* output, NSError* error)) handler;
```

Get complaint

Get complaint

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of the complaint

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Get complaint
[apiInstance getComplaintWithId:_id
          completionHandler: ^(OAIComplaint* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBounceControllerApi->getComplaint: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of the complaint | 

### Return type

[**OAIComplaint***](OAIComplaint)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getComplaints**
```objc
-(NSURLSessionTask*) getComplaintsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageComplaint* output, NSError* error)) handler;
```

Get paginated list of complaints.

SMTP complaints made against your account

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
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Get paginated list of complaints.
[apiInstance getComplaintsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageComplaint* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBounceControllerApi->getComplaints: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index  | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size  | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageComplaint***](OAIPageComplaint)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getListUnsubscribeRecipients**
```objc
-(NSURLSessionTask*) getListUnsubscribeRecipientsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    domainId: (NSString*) domainId
        completionHandler: (void (^)(OAIPageListUnsubscribeRecipients* output, NSError* error)) handler;
```

Get paginated list of unsubscribed recipients.

Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index (optional) (default to @0)
NSNumber* size = @20; // Optional page size  (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* domainId = @"domainId_example"; // Filter by domainId (optional)

OAIBounceControllerApi*apiInstance = [[OAIBounceControllerApi alloc] init];

// Get paginated list of unsubscribed recipients.
[apiInstance getListUnsubscribeRecipientsWithPage:page
              size:size
              sort:sort
              domainId:domainId
          completionHandler: ^(OAIPageListUnsubscribeRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBounceControllerApi->getListUnsubscribeRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size  | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **domainId** | [**NSString***]()| Filter by domainId | [optional] 

### Return type

[**OAIPageListUnsubscribeRecipients***](OAIPageListUnsubscribeRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

