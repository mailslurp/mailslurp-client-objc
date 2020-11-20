# OAIInboxControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInbox**](OAIInboxControllerApi.md#createinbox) | **POST** /inboxes | Create an Inbox (email address)
[**deleteAllInboxes**](OAIInboxControllerApi.md#deleteallinboxes) | **DELETE** /inboxes | Delete all inboxes
[**deleteInbox**](OAIInboxControllerApi.md#deleteinbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**getAllInboxes**](OAIInboxControllerApi.md#getallinboxes) | **GET** /inboxes/paginated | List Inboxes Paginated
[**getEmails**](OAIInboxControllerApi.md#getemails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox
[**getInbox**](OAIInboxControllerApi.md#getinbox) | **GET** /inboxes/{inboxId} | Get Inbox
[**getInboxEmailsPaginated**](OAIInboxControllerApi.md#getinboxemailspaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**getInboxSentEmails**](OAIInboxControllerApi.md#getinboxsentemails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**getInboxTags**](OAIInboxControllerApi.md#getinboxtags) | **GET** /inboxes/tags | Get inbox tags
[**getInboxes**](OAIInboxControllerApi.md#getinboxes) | **GET** /inboxes | List Inboxes / Email Addresses
[**sendEmail**](OAIInboxControllerApi.md#sendemail) | **POST** /inboxes/{inboxId} | Send Email
[**setInboxFavourited**](OAIInboxControllerApi.md#setinboxfavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**updateInbox**](OAIInboxControllerApi.md#updateinbox) | **PATCH** /inboxes/{inboxId} | Update Inbox


# **createInbox**
```objc
-(NSURLSessionTask*) createInboxWithDescription: (NSString*) _description
    emailAddress: (NSString*) emailAddress
    expiresAt: (NSDate*) expiresAt
    favourite: (NSNumber*) favourite
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
        completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler;
```

Create an Inbox (email address)

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _description = @"_description_example"; // Optional description for an inbox. (optional)
NSString* emailAddress = @"emailAddress_example"; // Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or `createDomain` method. (optional)
NSDate* expiresAt = @"2013-10-20T19:20:30+01:00"; // Optional expires at timestamp. If your plan supports this feature you can specify when an inbox should expire. If left empty inbox will exist permanently or expire when your plan dictates (optional)
NSNumber* favourite = @56; // Is inbox favourited. (optional)
NSString* name = @"name_example"; // Optional name for an inbox. (optional)
NSArray<NSString*>* tags = @[@"tags_example"]; // Optional tags for an inbox. Can be used for searching and filtering inboxes. (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Create an Inbox (email address)
[apiInstance createInboxWithDescription:_description
              emailAddress:emailAddress
              expiresAt:expiresAt
              favourite:favourite
              name:name
              tags:tags
          completionHandler: ^(OAIInbox* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->createInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_description** | **NSString***| Optional description for an inbox. | [optional] 
 **emailAddress** | **NSString***| Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or &#x60;createDomain&#x60; method. | [optional] 
 **expiresAt** | **NSDate***| Optional expires at timestamp. If your plan supports this feature you can specify when an inbox should expire. If left empty inbox will exist permanently or expire when your plan dictates | [optional] 
 **favourite** | **NSNumber***| Is inbox favourited. | [optional] 
 **name** | **NSString***| Optional name for an inbox. | [optional] 
 **tags** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| Optional tags for an inbox. Can be used for searching and filtering inboxes. | [optional] 

### Return type

[**OAIInbox***](OAIInbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAllInboxes**
```objc
-(NSURLSessionTask*) deleteAllInboxesWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Delete all inboxes
[apiInstance deleteAllInboxesWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->deleteAllInboxes: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInbox**
```objc
-(NSURLSessionTask*) deleteInboxWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete inbox

Permanently delete an inbox and associated email address aswell as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // inboxId

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Delete inbox
[apiInstance deleteInboxWithInboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->deleteInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| inboxId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllInboxes**
```objc
-(NSURLSessionTask*) getAllInboxesWithFavourite: (NSNumber*) favourite
    page: (NSNumber*) page
    search: (NSString*) search
    size: (NSNumber*) size
    sort: (NSString*) sort
    tag: (NSString*) tag
        completionHandler: (void (^)(OAIPageInboxProjection* output, NSError* error)) handler;
```

List Inboxes Paginated

List inboxes in paginated form. Allows for page index, page size, and sort direction. Can also filter by favourited or email address like pattern.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* favourite = @(NO); // Optionally filter results for favourites only (optional) (default to @(NO))
NSNumber* page = @0; // Optional page index in inbox list pagination (optional) (default to @0)
NSString* search = @"search_example"; // Optionally filter by search words partial matching ID, tags, name, and email address (optional)
NSNumber* size = @20; // Optional page size in inbox list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* tag = @"tag_example"; // Optionally filter by tags (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// List Inboxes Paginated
[apiInstance getAllInboxesWithFavourite:favourite
              page:page
              search:search
              size:size
              sort:sort
              tag:tag
          completionHandler: ^(OAIPageInboxProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getAllInboxes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **favourite** | **NSNumber***| Optionally filter results for favourites only | [optional] [default to @(NO)]
 **page** | **NSNumber***| Optional page index in inbox list pagination | [optional] [default to @0]
 **search** | **NSString***| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **size** | **NSNumber***| Optional page size in inbox list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **tag** | **NSString***| Optionally filter by tags | [optional] 

### Return type

[**OAIPageInboxProjection***](OAIPageInboxProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmails**
```objc
-(NSURLSessionTask*) getEmailsWithInboxId: (NSString*) inboxId
    limit: (NSNumber*) limit
    minCount: (NSNumber*) minCount
    retryTimeout: (NSNumber*) retryTimeout
    since: (NSDate*) since
    sort: (NSString*) sort
        completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler;
```

Get emails in an Inbox

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Id of inbox that emails belongs to
NSNumber* limit = @56; // Limit the result set, ordered by received date time sort direction (optional)
NSNumber* minCount = @56; // Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. (optional)
NSNumber* retryTimeout = @56; // Maximum milliseconds to spend retrying inbox database until minCount emails are returned (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Exclude emails received before this ISO 8601 date time (optional)
NSString* sort = @"sort_example"; // Sort the results by received date and direction ASC or DESC (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get emails in an Inbox
[apiInstance getEmailsWithInboxId:inboxId
              limit:limit
              minCount:minCount
              retryTimeout:retryTimeout
              since:since
              sort:sort
          completionHandler: ^(NSArray<OAIEmailPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| Id of inbox that emails belongs to | 
 **limit** | **NSNumber***| Limit the result set, ordered by received date time sort direction | [optional] 
 **minCount** | **NSNumber***| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **retryTimeout** | **NSNumber***| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **since** | **NSDate***| Exclude emails received before this ISO 8601 date time | [optional] 
 **sort** | **NSString***| Sort the results by received date and direction ASC or DESC | [optional] 

### Return type

[**NSArray<OAIEmailPreview>***](OAIEmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInbox**
```objc
-(NSURLSessionTask*) getInboxWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler;
```

Get Inbox

Returns an inbox's properties, including its email address and ID.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // inboxId

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get Inbox
[apiInstance getInboxWithInboxId:inboxId
          completionHandler: ^(OAIInbox* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| inboxId | 

### Return type

[**OAIInbox***](OAIInbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxEmailsPaginated**
```objc
-(NSURLSessionTask*) getInboxEmailsPaginatedWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageEmailPreview* output, NSError* error)) handler;
```

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Id of inbox that emails belongs to
NSNumber* page = @0; // Optional page index in inbox emails list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox emails list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get inbox emails paginated
[apiInstance getInboxEmailsPaginatedWithInboxId:inboxId
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageEmailPreview* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxEmailsPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| Id of inbox that emails belongs to | 
 **page** | **NSNumber***| Optional page index in inbox emails list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox emails list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageEmailPreview***](OAIPageEmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxSentEmails**
```objc
-(NSURLSessionTask*) getInboxSentEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler;
```

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // inboxId
NSNumber* page = @0; // Optional page index in inbox sent email list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox sent email list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get Inbox Sent Emails
[apiInstance getInboxSentEmailsWithInboxId:inboxId
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageSentEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxSentEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| inboxId | 
 **page** | **NSNumber***| Optional page index in inbox sent email list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox sent email list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageSentEmailProjection***](OAIPageSentEmailProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxTags**
```objc
-(NSURLSessionTask*) getInboxTagsWithCompletionHandler: 
        (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Get inbox tags

Get all inbox tags

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get inbox tags
[apiInstance getInboxTagsWithCompletionHandler: 
          ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxTags: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxes**
```objc
-(NSURLSessionTask*) getInboxesWithCompletionHandler: 
        (void (^)(NSArray<OAIInbox>* output, NSError* error)) handler;
```

List Inboxes / Email Addresses

List the inboxes you have created

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// List Inboxes / Email Addresses
[apiInstance getInboxesWithCompletionHandler: 
          ^(NSArray<OAIInbox>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxes: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIInbox>***](OAIInbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmail**
```objc
-(NSURLSessionTask*) sendEmailWithInboxId: (NSString*) inboxId
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
        completionHandler: (void (^)(NSError* error)) handler;
```

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // ID of the inbox you want to send the email from
OAISendEmailOptions* sendEmailOptions = [[OAISendEmailOptions alloc] init]; // Options for the email (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Send Email
[apiInstance sendEmailWithInboxId:inboxId
              sendEmailOptions:sendEmailOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->sendEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| ID of the inbox you want to send the email from | 
 **sendEmailOptions** | [**OAISendEmailOptions***](OAISendEmailOptions.md)| Options for the email | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setInboxFavourited**
```objc
-(NSURLSessionTask*) setInboxFavouritedWithInboxId: (NSString*) inboxId
    setInboxFavouritedOptions: (OAISetInboxFavouritedOptions*) setInboxFavouritedOptions
        completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler;
```

Set inbox favourited state

Set and return new favourite state for an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // inboxId
OAISetInboxFavouritedOptions* setInboxFavouritedOptions = [[OAISetInboxFavouritedOptions alloc] init]; // setInboxFavouritedOptions

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Set inbox favourited state
[apiInstance setInboxFavouritedWithInboxId:inboxId
              setInboxFavouritedOptions:setInboxFavouritedOptions
          completionHandler: ^(OAIInbox* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->setInboxFavourited: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| inboxId | 
 **setInboxFavouritedOptions** | [**OAISetInboxFavouritedOptions***](OAISetInboxFavouritedOptions.md)| setInboxFavouritedOptions | 

### Return type

[**OAIInbox***](OAIInbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInbox**
```objc
-(NSURLSessionTask*) updateInboxWithInboxId: (NSString*) inboxId
    updateInboxOptions: (OAIUpdateInboxOptions*) updateInboxOptions
        completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler;
```

Update Inbox

Update editable fields on an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // inboxId
OAIUpdateInboxOptions* updateInboxOptions = [[OAIUpdateInboxOptions alloc] init]; // updateInboxOptions

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Update Inbox
[apiInstance updateInboxWithInboxId:inboxId
              updateInboxOptions:updateInboxOptions
          completionHandler: ^(OAIInbox* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->updateInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***](.md)| inboxId | 
 **updateInboxOptions** | [**OAIUpdateInboxOptions***](OAIUpdateInboxOptions.md)| updateInboxOptions | 

### Return type

[**OAIInbox***](OAIInbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

