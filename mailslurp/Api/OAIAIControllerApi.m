#import "OAIAIControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIGenerateStructuredContentAttachmentOptions.h"
#import "OAIGenerateStructuredContentEmailOptions.h"
#import "OAIStructuredContentResult.h"
#import "OAIStructuredOutputSchema.h"
#import "OAIStructuredOutputSchemaValidation.h"


@interface OAIAIControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAIControllerApi

NSString* kOAIAIControllerApiErrorDomain = @"OAIAIControllerApiErrorDomain";
NSInteger kOAIAIControllerApiMissingParamErrorCode = 234513;

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
/// Generate structured content for an attachment
/// Use output schemas to extract data from an attachment using AI
///  @param generateStructuredContentAttachmentOptions  
///
///  @returns OAIStructuredContentResult*
///
-(NSURLSessionTask*) generateStructuredContentFromAttachmentWithGenerateStructuredContentAttachmentOptions: (OAIGenerateStructuredContentAttachmentOptions*) generateStructuredContentAttachmentOptions
    completionHandler: (void (^)(OAIStructuredContentResult* output, NSError* error)) handler {
    // verify the required parameter 'generateStructuredContentAttachmentOptions' is set
    if (generateStructuredContentAttachmentOptions == nil) {
        NSParameterAssert(generateStructuredContentAttachmentOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"generateStructuredContentAttachmentOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIAIControllerApiErrorDomain code:kOAIAIControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ai/structured-content/attachment"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = generateStructuredContentAttachmentOptions;

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
                              responseType: @"OAIStructuredContentResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIStructuredContentResult*)data, error);
                                }
                            }];
}

///
/// Generate structured content for an email
/// Use output schemas to extract data from an email using AI
///  @param generateStructuredContentEmailOptions  
///
///  @returns OAIStructuredContentResult*
///
-(NSURLSessionTask*) generateStructuredContentFromEmailWithGenerateStructuredContentEmailOptions: (OAIGenerateStructuredContentEmailOptions*) generateStructuredContentEmailOptions
    completionHandler: (void (^)(OAIStructuredContentResult* output, NSError* error)) handler {
    // verify the required parameter 'generateStructuredContentEmailOptions' is set
    if (generateStructuredContentEmailOptions == nil) {
        NSParameterAssert(generateStructuredContentEmailOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"generateStructuredContentEmailOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIAIControllerApiErrorDomain code:kOAIAIControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ai/structured-content/email"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = generateStructuredContentEmailOptions;

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
                              responseType: @"OAIStructuredContentResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIStructuredContentResult*)data, error);
                                }
                            }];
}

///
/// Validate structured content schema
/// Check if a schema is valid and can be used to extract data using AI
///  @param structuredOutputSchema  
///
///  @returns OAIStructuredOutputSchemaValidation*
///
-(NSURLSessionTask*) validateStructuredOutputSchemaWithStructuredOutputSchema: (OAIStructuredOutputSchema*) structuredOutputSchema
    completionHandler: (void (^)(OAIStructuredOutputSchemaValidation* output, NSError* error)) handler {
    // verify the required parameter 'structuredOutputSchema' is set
    if (structuredOutputSchema == nil) {
        NSParameterAssert(structuredOutputSchema);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"structuredOutputSchema"] };
            NSError* error = [NSError errorWithDomain:kOAIAIControllerApiErrorDomain code:kOAIAIControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ai/structured-content/validate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = structuredOutputSchema;

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
                              responseType: @"OAIStructuredOutputSchemaValidation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIStructuredOutputSchemaValidation*)data, error);
                                }
                            }];
}



@end
