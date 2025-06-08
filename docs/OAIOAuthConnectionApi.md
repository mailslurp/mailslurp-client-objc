# OAIOAuthConnectionApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOAuthConnection**](OAIOAuthConnectionApi#createoauthconnection) | **POST** /oauth-connection | Create an OAuth connection
[**exchangeAuthorizationTokenAndCreateOrUpdateInbox**](OAIOAuthConnectionApi#exchangeauthorizationtokenandcreateorupdateinbox) | **POST** /oauth-connection/oauth-exchange/google | Exchange authorization code for access token and create inbox


# **createOAuthConnection**
```objc
-(NSURLSessionTask*) createOAuthConnectionWithRedirectBase: (NSString*) redirectBase
    oAuthConnectionType: (NSString*) oAuthConnectionType
    emailAddress: (NSString*) emailAddress
        completionHandler: (void (^)(OAICreateOAuthConnectionResult* output, NSError* error)) handler;
```

Create an OAuth connection

Configure an inbox for OAuth sync with MailSlurp

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* redirectBase = @"redirectBase_example"; // 
NSString* oAuthConnectionType = @"oAuthConnectionType_example"; // 
NSString* emailAddress = @"emailAddress_example"; //  (optional)

OAIOAuthConnectionApi*apiInstance = [[OAIOAuthConnectionApi alloc] init];

// Create an OAuth connection
[apiInstance createOAuthConnectionWithRedirectBase:redirectBase
              oAuthConnectionType:oAuthConnectionType
              emailAddress:emailAddress
          completionHandler: ^(OAICreateOAuthConnectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOAuthConnectionApi->createOAuthConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redirectBase** | **NSString***|  | 
 **oAuthConnectionType** | **NSString***|  | 
 **emailAddress** | **NSString***|  | [optional] 

### Return type

[**OAICreateOAuthConnectionResult***](OAICreateOAuthConnectionResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exchangeAuthorizationTokenAndCreateOrUpdateInbox**
```objc
-(NSURLSessionTask*) exchangeAuthorizationTokenAndCreateOrUpdateInboxWithAuthorizationCode: (NSString*) authorizationCode
    redirectUri: (NSString*) redirectUri
        completionHandler: (void (^)(OAICreateOAuthExchangeResult* output, NSError* error)) handler;
```

Exchange authorization code for access token and create inbox

Exchange an OAuth code for an access token and create an inbox connection in MailSlurp

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* authorizationCode = @"authorizationCode_example"; // 
NSString* redirectUri = @"redirectUri_example"; // 

OAIOAuthConnectionApi*apiInstance = [[OAIOAuthConnectionApi alloc] init];

// Exchange authorization code for access token and create inbox
[apiInstance exchangeAuthorizationTokenAndCreateOrUpdateInboxWithAuthorizationCode:authorizationCode
              redirectUri:redirectUri
          completionHandler: ^(OAICreateOAuthExchangeResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOAuthConnectionApi->exchangeAuthorizationTokenAndCreateOrUpdateInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationCode** | **NSString***|  | 
 **redirectUri** | **NSString***|  | 

### Return type

[**OAICreateOAuthExchangeResult***](OAICreateOAuthExchangeResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

