# OAIFormControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submitForm**](OAIFormControllerApi#submitform) | **POST** /forms | Submit a form to be parsed and sent as an email to an address determined by the form fields


# **submitForm**
```objc
-(NSURLSessionTask*) submitFormWithTo: (NSString*) to
    subject: (NSString*) subject
    redirectTo: (NSString*) redirectTo
    emailAddress: (NSString*) emailAddress
    successMessage: (NSString*) successMessage
    spamCheck: (NSString*) spamCheck
    otherParameters: (NSString*) otherParameters
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Submit a form to be parsed and sent as an email to an address determined by the form fields

This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a `_to` email address to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding `name` attributes or as URL query parameters such as `?_to=test@example.com`  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts `application/x-www-form-urlencoded`, and `multipart/form-data` content-types.  #### HTML Example ```html <form    action=\"https://api.mailslurp.com/forms\"   method=\"post\" >   <input name=\"_to\" type=\"hidden\" value=\"test@example.com\"/>   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```  #### URL Example ```html <form    action=\"https://api.mailslurp.com/forms?_to=test@example.com\"   method=\"post\" >   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```    The email address is specified by a `_to` field OR is extracted from an email alias specified by a `_toAlias` field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the `enctype` attribute, for instance: `<form enctype=\"multipart/form-data\">`.  

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* to = test@example.com; // The email address that submitted form should be sent to. (optional)
NSString* subject = My form submission; // Optional subject of the email that will be sent. (optional)
NSString* redirectTo = https://mysite.com/form-success; // Optional URL to redirect form submitter to after submission. If not present user will see a success message. (optional)
NSString* emailAddress = test@example.com; // Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. (optional)
NSString* successMessage = Thanks for submitting; // Optional success message to display if no _redirectTo present. (optional)
NSString* spamCheck = @"spamCheck_example"; // Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. (optional)
NSString* otherParameters = @"otherParameters_example"; // All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. (optional)

OAIFormControllerApi*apiInstance = [[OAIFormControllerApi alloc] init];

// Submit a form to be parsed and sent as an email to an address determined by the form fields
[apiInstance submitFormWithTo:to
              subject:subject
              redirectTo:redirectTo
              emailAddress:emailAddress
              successMessage:successMessage
              spamCheck:spamCheck
              otherParameters:otherParameters
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFormControllerApi->submitForm: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to** | **NSString***| The email address that submitted form should be sent to. | [optional] 
 **subject** | **NSString***| Optional subject of the email that will be sent. | [optional] 
 **redirectTo** | **NSString***| Optional URL to redirect form submitter to after submission. If not present user will see a success message. | [optional] 
 **emailAddress** | **NSString***| Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. | [optional] 
 **successMessage** | **NSString***| Optional success message to display if no _redirectTo present. | [optional] 
 **spamCheck** | **NSString***| Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. | [optional] 
 **otherParameters** | **NSString***| All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. | [optional] 

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

