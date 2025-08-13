#import "OAIOAuthConnectionApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICreateOAuthConnectionResult.h"
#import "OAICreateOAuthExchangeResult.h"


@interface OAIOAuthConnectionApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIOAuthConnectionApi

NSString* kOAIOAuthConnectionApiErrorDomain = @"OAIOAuthConnectionApiErrorDomain";
NSInteger kOAIOAuthConnectionApiMissingParamErrorCode = 234513;

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
/// Create an OAuth connection
/// Configure an inbox for OAuth sync with MailSlurp
///  @param redirectBase  
///
///  @param oAuthConnectionType  
///
///  @param emailAddress  (optional)
///
///  @returns OAICreateOAuthConnectionResult*
///
-(NSURLSessionTask*) createOAuthConnectionWithRedirectBase: (NSString*) redirectBase
    oAuthConnectionType: (NSString*) oAuthConnectionType
    emailAddress: (NSString*) emailAddress
    completionHandler: (void (^)(OAICreateOAuthConnectionResult* output, NSError* error)) handler {
    // verify the required parameter 'redirectBase' is set
    if (redirectBase == nil) {
        NSParameterAssert(redirectBase);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"redirectBase"] };
            NSError* error = [NSError errorWithDomain:kOAIOAuthConnectionApiErrorDomain code:kOAIOAuthConnectionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'oAuthConnectionType' is set
    if (oAuthConnectionType == nil) {
        NSParameterAssert(oAuthConnectionType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"oAuthConnectionType"] };
            NSError* error = [NSError errorWithDomain:kOAIOAuthConnectionApiErrorDomain code:kOAIOAuthConnectionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/oauth-connection"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (redirectBase != nil) {
        queryParams[@"redirectBase"] = redirectBase;
    }
    if (oAuthConnectionType != nil) {
        queryParams[@"oAuthConnectionType"] = oAuthConnectionType;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

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
                              responseType: @"OAICreateOAuthConnectionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreateOAuthConnectionResult*)data, error);
                                }
                            }];
}

///
/// Exchange authorization code for access token and create inbox
/// Exchange an OAuth code for an access token and create an inbox connection in MailSlurp
///  @param authorizationCode  
///
///  @param redirectUri  
///
///  @returns OAICreateOAuthExchangeResult*
///
-(NSURLSessionTask*) exchangeAuthorizationTokenAndCreateOrUpdateInboxWithAuthorizationCode: (NSString*) authorizationCode
    redirectUri: (NSString*) redirectUri
    completionHandler: (void (^)(OAICreateOAuthExchangeResult* output, NSError* error)) handler {
    // verify the required parameter 'authorizationCode' is set
    if (authorizationCode == nil) {
        NSParameterAssert(authorizationCode);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorizationCode"] };
            NSError* error = [NSError errorWithDomain:kOAIOAuthConnectionApiErrorDomain code:kOAIOAuthConnectionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'redirectUri' is set
    if (redirectUri == nil) {
        NSParameterAssert(redirectUri);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"redirectUri"] };
            NSError* error = [NSError errorWithDomain:kOAIOAuthConnectionApiErrorDomain code:kOAIOAuthConnectionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/oauth-connection/oauth-exchange/google"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (authorizationCode != nil) {
        queryParams[@"authorizationCode"] = authorizationCode;
    }
    if (redirectUri != nil) {
        queryParams[@"redirectUri"] = redirectUri;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

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
                              responseType: @"OAICreateOAuthExchangeResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreateOAuthExchangeResult*)data, error);
                                }
                            }];
}



@end
