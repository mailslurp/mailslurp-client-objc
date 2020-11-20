#import "OAIFormControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"


@interface OAIFormControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIFormControllerApi

NSString* kOAIFormControllerApiErrorDomain = @"OAIFormControllerApiErrorDomain";
NSInteger kOAIFormControllerApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Submit a form to be parsed and sent as an email to an address determined by the form fields
/// This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a `_to` email address or a `_toAlias` email alias ID to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding `name` attributes or as URL query parameters such as `?_to=test@example.com`  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts `application/x-www-form-urlencoded`, and `multipart/form-data` content-types.  #### HTML Example ```html <form    action=\"https://api.mailslurp.com/forms\"   method=\"post\" >   <input name=\"_to\" type=\"hidden\" value=\"test@example.com\"/>   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```  #### URL Example ```html <form    action=\"https://api.mailslurp.com/forms?_toAlias=test@example.com\"   method=\"post\" >   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```    The email address is specified by a `_to` field OR is extracted from an email alias specified by a `_toAlias` field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the `enctype` attribute, for instance: `<form enctype=\"multipart/form-data\">`.  
///  @param emailAddress Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. (optional)
///
///  @param redirectTo Optional URL to redirect form submitter to after submission. If not present user will see a success message. (optional)
///
///  @param spamCheck Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. (optional)
///
///  @param subject Optional subject of the email that will be sent. (optional)
///
///  @param successMessage Optional success message to display if no _redirectTo present. (optional)
///
///  @param to The email address that submitted form should be sent to. Either this or _toAlias must be present for a form to be successfully submitted.. (optional)
///
///  @param toAlias ID of an email alias to that form should be sent to. Aliases must be created before submission and can be used to hide an email address and reduce spam. (optional)
///
///  @param otherParameters All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) submitFormWithEmailAddress: (NSString*) emailAddress
    redirectTo: (NSString*) redirectTo
    spamCheck: (NSString*) spamCheck
    subject: (NSString*) subject
    successMessage: (NSString*) successMessage
    to: (NSString*) to
    toAlias: (NSString*) toAlias
    otherParameters: (NSString*) otherParameters
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/forms"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (emailAddress) {
        formParams[@"_emailAddress"] = emailAddress;
    }
    if (redirectTo) {
        formParams[@"_redirectTo"] = redirectTo;
    }
    if (spamCheck) {
        formParams[@"_spamCheck"] = spamCheck;
    }
    if (subject) {
        formParams[@"_subject"] = subject;
    }
    if (successMessage) {
        formParams[@"_successMessage"] = successMessage;
    }
    if (to) {
        formParams[@"_to"] = to;
    }
    if (toAlias) {
        formParams[@"_toAlias"] = toAlias;
    }
    if (otherParameters) {
        formParams[@"otherParameters"] = otherParameters;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}



@end
