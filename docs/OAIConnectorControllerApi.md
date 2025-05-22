# OAIConnectorControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConnector**](OAIConnectorControllerApi#createconnector) | **POST** /connectors | Create an inbox connector
[**createConnectorImapConnection**](OAIConnectorControllerApi#createconnectorimapconnection) | **POST** /connectors/{id}/imap | Create an inbox connector IMAP connection
[**createConnectorSmtpConnection**](OAIConnectorControllerApi#createconnectorsmtpconnection) | **POST** /connectors/{id}/smtp | Create an inbox connector SMTP connection
[**createConnectorSyncSettings**](OAIConnectorControllerApi#createconnectorsyncsettings) | **POST** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**createConnectorWithOptions**](OAIConnectorControllerApi#createconnectorwithoptions) | **POST** /connectors/withOptions | Create an inbox connector with options
[**deleteAllConnector**](OAIConnectorControllerApi#deleteallconnector) | **DELETE** /connectors | Delete all inbox connectors
[**deleteConnector**](OAIConnectorControllerApi#deleteconnector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**deleteConnectorImapConnection**](OAIConnectorControllerApi#deleteconnectorimapconnection) | **DELETE** /connectors/{id}/imap | Delete an inbox connector IMAP connection
[**deleteConnectorSmtpConnection**](OAIConnectorControllerApi#deleteconnectorsmtpconnection) | **DELETE** /connectors/{id}/smtp | Delete an inbox connector SMTP connection
[**deleteConnectorSyncSettings**](OAIConnectorControllerApi#deleteconnectorsyncsettings) | **DELETE** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**getAllConnectorEvents**](OAIConnectorControllerApi#getallconnectorevents) | **GET** /connectors/events | Get all inbox connector events
[**getConnector**](OAIConnectorControllerApi#getconnector) | **GET** /connectors/{id} | Get an inbox connector
[**getConnectorByEmailAddress**](OAIConnectorControllerApi#getconnectorbyemailaddress) | **GET** /connectors/by-email-address | Get connector by email address
[**getConnectorByInboxId**](OAIConnectorControllerApi#getconnectorbyinboxid) | **GET** /connectors/by-inbox-id | Get connector by inbox ID
[**getConnectorByName**](OAIConnectorControllerApi#getconnectorbyname) | **GET** /connectors/by-name | Get connector by name
[**getConnectorEvent**](OAIConnectorControllerApi#getconnectorevent) | **GET** /connectors/events/{id} | Get an inbox connector event
[**getConnectorEvents**](OAIConnectorControllerApi#getconnectorevents) | **GET** /connectors/{id}/events | Get an inbox connector events
[**getConnectorImapConnection**](OAIConnectorControllerApi#getconnectorimapconnection) | **GET** /connectors/{id}/imap | Get an inbox connector IMAP connection
[**getConnectorProviderSettings**](OAIConnectorControllerApi#getconnectorprovidersettings) | **GET** /connectors/provider-settings | Get SMTP and IMAP connection settings for common mail providers
[**getConnectorSmtpConnection**](OAIConnectorControllerApi#getconnectorsmtpconnection) | **GET** /connectors/{id}/smtp | Get an inbox connector SMTP connection
[**getConnectorSyncSettings**](OAIConnectorControllerApi#getconnectorsyncsettings) | **GET** /connectors/{id}/sync-settings | Get an inbox connector sync settings
[**getConnectors**](OAIConnectorControllerApi#getconnectors) | **GET** /connectors | Get inbox connectors
[**sendEmailFromConnector**](OAIConnectorControllerApi#sendemailfromconnector) | **POST** /connectors/{id}/send | Send from an inbox connector
[**syncConnector**](OAIConnectorControllerApi#syncconnector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**testConnectorImapConnection**](OAIConnectorControllerApi#testconnectorimapconnection) | **POST** /connectors/{id}/imap/test | Test an inbox connector IMAP connection
[**testConnectorImapConnectionOptions**](OAIConnectorControllerApi#testconnectorimapconnectionoptions) | **POST** /connectors/connections/imap/test | Test an inbox connector IMAP connection options
[**testConnectorSmtpConnection**](OAIConnectorControllerApi#testconnectorsmtpconnection) | **POST** /connectors/{id}/smtp/test | Test an inbox connector SMTP connection
[**testConnectorSmtpConnectionOptions**](OAIConnectorControllerApi#testconnectorsmtpconnectionoptions) | **POST** /connectors/connections/smtp/test | Test an inbox connector SMTP connection options
[**updateConnector**](OAIConnectorControllerApi#updateconnector) | **PUT** /connectors/{id} | Update an inbox connector
[**updateConnectorImapConnection**](OAIConnectorControllerApi#updateconnectorimapconnection) | **PATCH** /connectors/{id}/imap | Update an inbox connector IMAP connection
[**updateConnectorSmtpConnection**](OAIConnectorControllerApi#updateconnectorsmtpconnection) | **PATCH** /connectors/{id}/smtp | Update an inbox connector SMTP connection


# **createConnector**
```objc
-(NSURLSessionTask*) createConnectorWithCreateConnectorOptions: (OAICreateConnectorOptions*) createConnectorOptions
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIConnectorDto* output, NSError* error)) handler;
```

Create an inbox connector

Sync emails between external mailboxes and MailSlurp inboxes

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateConnectorOptions* createConnectorOptions = [[OAICreateConnectorOptions alloc] init]; // 
NSString* inboxId = @"inboxId_example"; // Optional inbox ID to associate with the connector (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Create an inbox connector
[apiInstance createConnectorWithCreateConnectorOptions:createConnectorOptions
              inboxId:inboxId
          completionHandler: ^(OAIConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->createConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorOptions** | [**OAICreateConnectorOptions***](OAICreateConnectorOptions)|  | 
 **inboxId** | [**NSString***]()| Optional inbox ID to associate with the connector | [optional] 

### Return type

[**OAIConnectorDto***](OAIConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorImapConnection**
```objc
-(NSURLSessionTask*) createConnectorImapConnectionWithId: (NSString*) _id
    createConnectorImapConnectionOptions: (OAICreateConnectorImapConnectionOptions*) createConnectorImapConnectionOptions
        completionHandler: (void (^)(OAIConnectorImapConnectionDto* output, NSError* error)) handler;
```

Create an inbox connector IMAP connection

Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAICreateConnectorImapConnectionOptions* createConnectorImapConnectionOptions = [[OAICreateConnectorImapConnectionOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Create an inbox connector IMAP connection
[apiInstance createConnectorImapConnectionWithId:_id
              createConnectorImapConnectionOptions:createConnectorImapConnectionOptions
          completionHandler: ^(OAIConnectorImapConnectionDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->createConnectorImapConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **createConnectorImapConnectionOptions** | [**OAICreateConnectorImapConnectionOptions***](OAICreateConnectorImapConnectionOptions)|  | 

### Return type

[**OAIConnectorImapConnectionDto***](OAIConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorSmtpConnection**
```objc
-(NSURLSessionTask*) createConnectorSmtpConnectionWithId: (NSString*) _id
    createConnectorSmtpConnectionOptions: (OAICreateConnectorSmtpConnectionOptions*) createConnectorSmtpConnectionOptions
        completionHandler: (void (^)(OAIConnectorSmtpConnectionDto* output, NSError* error)) handler;
```

Create an inbox connector SMTP connection

Allows sending via connector and email is routed to connected inbox and sent via SMTP

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAICreateConnectorSmtpConnectionOptions* createConnectorSmtpConnectionOptions = [[OAICreateConnectorSmtpConnectionOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Create an inbox connector SMTP connection
[apiInstance createConnectorSmtpConnectionWithId:_id
              createConnectorSmtpConnectionOptions:createConnectorSmtpConnectionOptions
          completionHandler: ^(OAIConnectorSmtpConnectionDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->createConnectorSmtpConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **createConnectorSmtpConnectionOptions** | [**OAICreateConnectorSmtpConnectionOptions***](OAICreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**OAIConnectorSmtpConnectionDto***](OAIConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorSyncSettings**
```objc
-(NSURLSessionTask*) createConnectorSyncSettingsWithId: (NSString*) _id
    createConnectorSyncSettingsOptions: (OAICreateConnectorSyncSettingsOptions*) createConnectorSyncSettingsOptions
        completionHandler: (void (^)(OAIConnectorSyncSettingsDto* output, NSError* error)) handler;
```

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAICreateConnectorSyncSettingsOptions* createConnectorSyncSettingsOptions = [[OAICreateConnectorSyncSettingsOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Create an inbox connector sync settings
[apiInstance createConnectorSyncSettingsWithId:_id
              createConnectorSyncSettingsOptions:createConnectorSyncSettingsOptions
          completionHandler: ^(OAIConnectorSyncSettingsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->createConnectorSyncSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **createConnectorSyncSettingsOptions** | [**OAICreateConnectorSyncSettingsOptions***](OAICreateConnectorSyncSettingsOptions)|  | 

### Return type

[**OAIConnectorSyncSettingsDto***](OAIConnectorSyncSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorWithOptions**
```objc
-(NSURLSessionTask*) createConnectorWithOptionsWithCreateConnectorWithOptions: (OAICreateConnectorWithOptions*) createConnectorWithOptions
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIConnectorDto* output, NSError* error)) handler;
```

Create an inbox connector with options

Sync emails between external mailboxes and MailSlurp inboxes

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateConnectorWithOptions* createConnectorWithOptions = [[OAICreateConnectorWithOptions alloc] init]; // 
NSString* inboxId = @"inboxId_example"; // Optional inbox ID to associate with the connector (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Create an inbox connector with options
[apiInstance createConnectorWithOptionsWithCreateConnectorWithOptions:createConnectorWithOptions
              inboxId:inboxId
          completionHandler: ^(OAIConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->createConnectorWithOptions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorWithOptions** | [**OAICreateConnectorWithOptions***](OAICreateConnectorWithOptions)|  | 
 **inboxId** | [**NSString***]()| Optional inbox ID to associate with the connector | [optional] 

### Return type

[**OAIConnectorDto***](OAIConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllConnector**
```objc
-(NSURLSessionTask*) deleteAllConnectorWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all inbox connectors

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Delete all inbox connectors
[apiInstance deleteAllConnectorWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->deleteAllConnector: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnector**
```objc
-(NSURLSessionTask*) deleteConnectorWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an inbox connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Delete an inbox connector
[apiInstance deleteConnectorWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->deleteConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnectorImapConnection**
```objc
-(NSURLSessionTask*) deleteConnectorImapConnectionWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an inbox connector IMAP connection

Delete IMAP connection for external inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Delete an inbox connector IMAP connection
[apiInstance deleteConnectorImapConnectionWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->deleteConnectorImapConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnectorSmtpConnection**
```objc
-(NSURLSessionTask*) deleteConnectorSmtpConnectionWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an inbox connector SMTP connection

Delete SMTP connection for external inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Delete an inbox connector SMTP connection
[apiInstance deleteConnectorSmtpConnectionWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->deleteConnectorSmtpConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnectorSyncSettings**
```objc
-(NSURLSessionTask*) deleteConnectorSyncSettingsWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Create an inbox connector sync settings
[apiInstance deleteConnectorSyncSettingsWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->deleteConnectorSyncSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllConnectorEvents**
```objc
-(NSURLSessionTask*) getAllConnectorEventsWithId: (NSString*) _id
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    eventType: (NSString*) eventType
        completionHandler: (void (^)(OAIPageConnectorEvents* output, NSError* error)) handler;
```

Get all inbox connector events

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // Optional connector ID (optional)
NSNumber* page = @0; // Optional page index in connector list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in connector list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* eventType = @"eventType_example"; // Filter by event type (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get all inbox connector events
[apiInstance getAllConnectorEventsWithId:_id
              page:page
              size:size
              sort:sort
              since:since
              before:before
              eventType:eventType
          completionHandler: ^(OAIPageConnectorEvents* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getAllConnectorEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| Optional connector ID | [optional] 
 **page** | **NSNumber***| Optional page index in connector list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in connector list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **eventType** | **NSString***| Filter by event type | [optional] 

### Return type

[**OAIPageConnectorEvents***](OAIPageConnectorEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnector**
```objc
-(NSURLSessionTask*) getConnectorWithId: (NSString*) _id
        completionHandler: (void (^)(OAIConnectorDto* output, NSError* error)) handler;
```

Get an inbox connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get an inbox connector
[apiInstance getConnectorWithId:_id
          completionHandler: ^(OAIConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIConnectorDto***](OAIConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorByEmailAddress**
```objc
-(NSURLSessionTask*) getConnectorByEmailAddressWithEmailAddress: (NSString*) emailAddress
        completionHandler: (void (^)(OAIOptionalConnectorDto* output, NSError* error)) handler;
```

Get connector by email address

Find an inbox connector by email address

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailAddress = @"emailAddress_example"; // Email address to search for connector by

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get connector by email address
[apiInstance getConnectorByEmailAddressWithEmailAddress:emailAddress
          completionHandler: ^(OAIOptionalConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorByEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **NSString***| Email address to search for connector by | 

### Return type

[**OAIOptionalConnectorDto***](OAIOptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorByInboxId**
```objc
-(NSURLSessionTask*) getConnectorByInboxIdWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIOptionalConnectorDto* output, NSError* error)) handler;
```

Get connector by inbox ID

Find an inbox connector by inbox ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Inbox ID to search for connector by

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get connector by inbox ID
[apiInstance getConnectorByInboxIdWithInboxId:inboxId
          completionHandler: ^(OAIOptionalConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorByInboxId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Inbox ID to search for connector by | 

### Return type

[**OAIOptionalConnectorDto***](OAIOptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorByName**
```objc
-(NSURLSessionTask*) getConnectorByNameWithName: (NSString*) name
        completionHandler: (void (^)(OAIOptionalConnectorDto* output, NSError* error)) handler;
```

Get connector by name

Find an inbox connector by name

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* name = @"name_example"; // Name to search for connector by

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get connector by name
[apiInstance getConnectorByNameWithName:name
          completionHandler: ^(OAIOptionalConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorByName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name to search for connector by | 

### Return type

[**OAIOptionalConnectorDto***](OAIOptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorEvent**
```objc
-(NSURLSessionTask*) getConnectorEventWithId: (NSString*) _id
        completionHandler: (void (^)(OAIConnectorEventDto* output, NSError* error)) handler;
```

Get an inbox connector event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get an inbox connector event
[apiInstance getConnectorEventWithId:_id
          completionHandler: ^(OAIConnectorEventDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorEvent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIConnectorEventDto***](OAIConnectorEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorEvents**
```objc
-(NSURLSessionTask*) getConnectorEventsWithId: (NSString*) _id
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    eventType: (NSString*) eventType
        completionHandler: (void (^)(OAIPageConnectorEvents* output, NSError* error)) handler;
```

Get an inbox connector events

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
NSNumber* page = @0; // Optional page index in connector list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in connector list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* eventType = @"eventType_example"; // Filter by event type (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get an inbox connector events
[apiInstance getConnectorEventsWithId:_id
              page:page
              size:size
              sort:sort
              since:since
              before:before
              eventType:eventType
          completionHandler: ^(OAIPageConnectorEvents* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in connector list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in connector list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **eventType** | **NSString***| Filter by event type | [optional] 

### Return type

[**OAIPageConnectorEvents***](OAIPageConnectorEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorImapConnection**
```objc
-(NSURLSessionTask*) getConnectorImapConnectionWithId: (NSString*) _id
        completionHandler: (void (^)(OAIOptionalConnectorImapConnectionDto* output, NSError* error)) handler;
```

Get an inbox connector IMAP connection

Get IMAP connection for external inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get an inbox connector IMAP connection
[apiInstance getConnectorImapConnectionWithId:_id
          completionHandler: ^(OAIOptionalConnectorImapConnectionDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorImapConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIOptionalConnectorImapConnectionDto***](OAIOptionalConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorProviderSettings**
```objc
-(NSURLSessionTask*) getConnectorProviderSettingsWithCompletionHandler: 
        (void (^)(OAIConnectorProviderSettingsDto* output, NSError* error)) handler;
```

Get SMTP and IMAP connection settings for common mail providers

Get common mail provider SMTP and IMAP connection settings

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get SMTP and IMAP connection settings for common mail providers
[apiInstance getConnectorProviderSettingsWithCompletionHandler: 
          ^(OAIConnectorProviderSettingsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorProviderSettings: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIConnectorProviderSettingsDto***](OAIConnectorProviderSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSmtpConnection**
```objc
-(NSURLSessionTask*) getConnectorSmtpConnectionWithId: (NSString*) _id
        completionHandler: (void (^)(OAIOptionalConnectorSmtpConnectionDto* output, NSError* error)) handler;
```

Get an inbox connector SMTP connection

Get SMTP connection for external inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get an inbox connector SMTP connection
[apiInstance getConnectorSmtpConnectionWithId:_id
          completionHandler: ^(OAIOptionalConnectorSmtpConnectionDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorSmtpConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIOptionalConnectorSmtpConnectionDto***](OAIOptionalConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSyncSettings**
```objc
-(NSURLSessionTask*) getConnectorSyncSettingsWithId: (NSString*) _id
        completionHandler: (void (^)(OAIOptionalConnectorSyncSettingsDto* output, NSError* error)) handler;
```

Get an inbox connector sync settings

Get sync settings for connection with external inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get an inbox connector sync settings
[apiInstance getConnectorSyncSettingsWithId:_id
          completionHandler: ^(OAIOptionalConnectorSyncSettingsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorSyncSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIOptionalConnectorSyncSettingsDto***](OAIOptionalConnectorSyncSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectors**
```objc
-(NSURLSessionTask*) getConnectorsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageConnector* output, NSError* error)) handler;
```

Get inbox connectors

List inbox connectors that sync external emails to MailSlurp inboxes

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in connector list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in connector list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get inbox connectors
[apiInstance getConnectorsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageConnector* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in connector list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in connector list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageConnector***](OAIPageConnector)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailFromConnector**
```objc
-(NSURLSessionTask*) sendEmailFromConnectorWithId: (NSString*) _id
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
    useFallback: (NSNumber*) useFallback
        completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler;
```

Send from an inbox connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAISendEmailOptions* sendEmailOptions = [[OAISendEmailOptions alloc] init]; // 
NSNumber* useFallback = @56; //  (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Send from an inbox connector
[apiInstance sendEmailFromConnectorWithId:_id
              sendEmailOptions:sendEmailOptions
              useFallback:useFallback
          completionHandler: ^(OAISentEmailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->sendEmailFromConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **sendEmailOptions** | [**OAISendEmailOptions***](OAISendEmailOptions)|  | 
 **useFallback** | **NSNumber***|  | [optional] 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **syncConnector**
```objc
-(NSURLSessionTask*) syncConnectorWithId: (NSString*) _id
    since: (NSDate*) since
    folder: (NSString*) folder
    logging: (NSNumber*) logging
        completionHandler: (void (^)(OAIConnectorSyncRequestResult* output, NSError* error)) handler;
```

Sync an inbox connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Date to request emails since (optional)
NSString* folder = @"folder_example"; // Which folder to sync emails with (optional)
NSNumber* logging = @56; // Enable or disable logging for the sync operation (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Sync an inbox connector
[apiInstance syncConnectorWithId:_id
              since:since
              folder:folder
              logging:logging
          completionHandler: ^(OAIConnectorSyncRequestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->syncConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **since** | **NSDate***| Date to request emails since | [optional] 
 **folder** | **NSString***| Which folder to sync emails with | [optional] 
 **logging** | **NSNumber***| Enable or disable logging for the sync operation | [optional] 

### Return type

[**OAIConnectorSyncRequestResult***](OAIConnectorSyncRequestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorImapConnection**
```objc
-(NSURLSessionTask*) testConnectorImapConnectionWithId: (NSString*) _id
    createConnectorImapConnectionOptions: (OAICreateConnectorImapConnectionOptions*) createConnectorImapConnectionOptions
        completionHandler: (void (^)(OAIConnectorImapConnectionTestResult* output, NSError* error)) handler;
```

Test an inbox connector IMAP connection

Test the IMAP connection for a connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAICreateConnectorImapConnectionOptions* createConnectorImapConnectionOptions = [[OAICreateConnectorImapConnectionOptions alloc] init]; //  (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Test an inbox connector IMAP connection
[apiInstance testConnectorImapConnectionWithId:_id
              createConnectorImapConnectionOptions:createConnectorImapConnectionOptions
          completionHandler: ^(OAIConnectorImapConnectionTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->testConnectorImapConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **createConnectorImapConnectionOptions** | [**OAICreateConnectorImapConnectionOptions***](OAICreateConnectorImapConnectionOptions)|  | [optional] 

### Return type

[**OAIConnectorImapConnectionTestResult***](OAIConnectorImapConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorImapConnectionOptions**
```objc
-(NSURLSessionTask*) testConnectorImapConnectionOptionsWithCreateConnectorImapConnectionOptions: (OAICreateConnectorImapConnectionOptions*) createConnectorImapConnectionOptions
        completionHandler: (void (^)(OAIConnectorImapConnectionTestResult* output, NSError* error)) handler;
```

Test an inbox connector IMAP connection options

Test the IMAP connection options for a connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateConnectorImapConnectionOptions* createConnectorImapConnectionOptions = [[OAICreateConnectorImapConnectionOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Test an inbox connector IMAP connection options
[apiInstance testConnectorImapConnectionOptionsWithCreateConnectorImapConnectionOptions:createConnectorImapConnectionOptions
          completionHandler: ^(OAIConnectorImapConnectionTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->testConnectorImapConnectionOptions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorImapConnectionOptions** | [**OAICreateConnectorImapConnectionOptions***](OAICreateConnectorImapConnectionOptions)|  | 

### Return type

[**OAIConnectorImapConnectionTestResult***](OAIConnectorImapConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorSmtpConnection**
```objc
-(NSURLSessionTask*) testConnectorSmtpConnectionWithId: (NSString*) _id
    createConnectorSmtpConnectionOptions: (OAICreateConnectorSmtpConnectionOptions*) createConnectorSmtpConnectionOptions
        completionHandler: (void (^)(OAIConnectorSmtpConnectionTestResult* output, NSError* error)) handler;
```

Test an inbox connector SMTP connection

Test the SMTP connection for a connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAICreateConnectorSmtpConnectionOptions* createConnectorSmtpConnectionOptions = [[OAICreateConnectorSmtpConnectionOptions alloc] init]; //  (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Test an inbox connector SMTP connection
[apiInstance testConnectorSmtpConnectionWithId:_id
              createConnectorSmtpConnectionOptions:createConnectorSmtpConnectionOptions
          completionHandler: ^(OAIConnectorSmtpConnectionTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->testConnectorSmtpConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **createConnectorSmtpConnectionOptions** | [**OAICreateConnectorSmtpConnectionOptions***](OAICreateConnectorSmtpConnectionOptions)|  | [optional] 

### Return type

[**OAIConnectorSmtpConnectionTestResult***](OAIConnectorSmtpConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorSmtpConnectionOptions**
```objc
-(NSURLSessionTask*) testConnectorSmtpConnectionOptionsWithCreateConnectorSmtpConnectionOptions: (OAICreateConnectorSmtpConnectionOptions*) createConnectorSmtpConnectionOptions
        completionHandler: (void (^)(OAIConnectorSmtpConnectionTestResult* output, NSError* error)) handler;
```

Test an inbox connector SMTP connection options

Test the SMTP connection options for a connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateConnectorSmtpConnectionOptions* createConnectorSmtpConnectionOptions = [[OAICreateConnectorSmtpConnectionOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Test an inbox connector SMTP connection options
[apiInstance testConnectorSmtpConnectionOptionsWithCreateConnectorSmtpConnectionOptions:createConnectorSmtpConnectionOptions
          completionHandler: ^(OAIConnectorSmtpConnectionTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->testConnectorSmtpConnectionOptions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorSmtpConnectionOptions** | [**OAICreateConnectorSmtpConnectionOptions***](OAICreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**OAIConnectorSmtpConnectionTestResult***](OAIConnectorSmtpConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnector**
```objc
-(NSURLSessionTask*) updateConnectorWithId: (NSString*) _id
    createConnectorOptions: (OAICreateConnectorOptions*) createConnectorOptions
        completionHandler: (void (^)(OAIConnectorDto* output, NSError* error)) handler;
```

Update an inbox connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAICreateConnectorOptions* createConnectorOptions = [[OAICreateConnectorOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Update an inbox connector
[apiInstance updateConnectorWithId:_id
              createConnectorOptions:createConnectorOptions
          completionHandler: ^(OAIConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->updateConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **createConnectorOptions** | [**OAICreateConnectorOptions***](OAICreateConnectorOptions)|  | 

### Return type

[**OAIConnectorDto***](OAIConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnectorImapConnection**
```objc
-(NSURLSessionTask*) updateConnectorImapConnectionWithId: (NSString*) _id
    createConnectorImapConnectionOptions: (OAICreateConnectorImapConnectionOptions*) createConnectorImapConnectionOptions
        completionHandler: (void (^)(OAIConnectorImapConnectionDto* output, NSError* error)) handler;
```

Update an inbox connector IMAP connection

Update IMAP connection for external inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAICreateConnectorImapConnectionOptions* createConnectorImapConnectionOptions = [[OAICreateConnectorImapConnectionOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Update an inbox connector IMAP connection
[apiInstance updateConnectorImapConnectionWithId:_id
              createConnectorImapConnectionOptions:createConnectorImapConnectionOptions
          completionHandler: ^(OAIConnectorImapConnectionDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->updateConnectorImapConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **createConnectorImapConnectionOptions** | [**OAICreateConnectorImapConnectionOptions***](OAICreateConnectorImapConnectionOptions)|  | 

### Return type

[**OAIConnectorImapConnectionDto***](OAIConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnectorSmtpConnection**
```objc
-(NSURLSessionTask*) updateConnectorSmtpConnectionWithId: (NSString*) _id
    createConnectorSmtpConnectionOptions: (OAICreateConnectorSmtpConnectionOptions*) createConnectorSmtpConnectionOptions
        completionHandler: (void (^)(OAIConnectorSmtpConnectionDto* output, NSError* error)) handler;
```

Update an inbox connector SMTP connection

Update SMTP connection for external inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAICreateConnectorSmtpConnectionOptions* createConnectorSmtpConnectionOptions = [[OAICreateConnectorSmtpConnectionOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Update an inbox connector SMTP connection
[apiInstance updateConnectorSmtpConnectionWithId:_id
              createConnectorSmtpConnectionOptions:createConnectorSmtpConnectionOptions
          completionHandler: ^(OAIConnectorSmtpConnectionDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->updateConnectorSmtpConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **createConnectorSmtpConnectionOptions** | [**OAICreateConnectorSmtpConnectionOptions***](OAICreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**OAIConnectorSmtpConnectionDto***](OAIConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

