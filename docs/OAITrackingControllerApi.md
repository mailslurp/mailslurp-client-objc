# OAITrackingControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrackingPixel**](OAITrackingControllerApi#createtrackingpixel) | **POST** /tracking/pixels | Create tracking pixel
[**getAllTrackingPixels**](OAITrackingControllerApi#getalltrackingpixels) | **GET** /tracking/pixels | Get tracking pixels
[**getTrackingPixel**](OAITrackingControllerApi#gettrackingpixel) | **GET** /tracking/pixels/{id} | Get pixel


# **createTrackingPixel**
```objc
-(NSURLSessionTask*) createTrackingPixelWithCreateTrackingPixelOptions: (OAICreateTrackingPixelOptions*) createTrackingPixelOptions
        completionHandler: (void (^)(OAITrackingPixelDto* output, NSError* error)) handler;
```

Create tracking pixel

Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateTrackingPixelOptions* createTrackingPixelOptions = [[OAICreateTrackingPixelOptions alloc] init]; // createTrackingPixelOptions

OAITrackingControllerApi*apiInstance = [[OAITrackingControllerApi alloc] init];

// Create tracking pixel
[apiInstance createTrackingPixelWithCreateTrackingPixelOptions:createTrackingPixelOptions
          completionHandler: ^(OAITrackingPixelDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrackingControllerApi->createTrackingPixel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTrackingPixelOptions** | [**OAICreateTrackingPixelOptions***](OAICreateTrackingPixelOptions)| createTrackingPixelOptions | 

### Return type

[**OAITrackingPixelDto***](OAITrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllTrackingPixels**
```objc
-(NSURLSessionTask*) getAllTrackingPixelsWithPage: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler;
```

Get tracking pixels

List tracking pixels in paginated form

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAITrackingControllerApi*apiInstance = [[OAITrackingControllerApi alloc] init];

// Get tracking pixels
[apiInstance getAllTrackingPixelsWithPage:page
              searchFilter:searchFilter
              size:size
              sort:sort
          completionHandler: ^(OAIPageTrackingPixelProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrackingControllerApi->getAllTrackingPixels: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageTrackingPixelProjection***](OAIPageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTrackingPixel**
```objc
-(NSURLSessionTask*) getTrackingPixelWithId: (NSString*) _id
        completionHandler: (void (^)(OAITrackingPixelDto* output, NSError* error)) handler;
```

Get pixel

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // id

OAITrackingControllerApi*apiInstance = [[OAITrackingControllerApi alloc] init];

// Get pixel
[apiInstance getTrackingPixelWithId:_id
          completionHandler: ^(OAITrackingPixelDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrackingControllerApi->getTrackingPixel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| id | 

### Return type

[**OAITrackingPixelDto***](OAITrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

