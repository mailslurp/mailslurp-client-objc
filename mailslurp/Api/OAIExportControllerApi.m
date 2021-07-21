#import "OAIExportControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIExportLink.h"
#import "OAIExportOptions.h"


@interface OAIExportControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIExportControllerApi

NSString* kOAIExportControllerApiErrorDomain = @"OAIExportControllerApiErrorDomain";
NSInteger kOAIExportControllerApiMissingParamErrorCode = 234513;

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
/// Export inboxes link callable via browser
/// 
///  @param apiKey apiKey 
///
///  @param exportType exportType 
///
///  @param outputFormat outputFormat 
///
///  @param createdEarliestTime createdEarliestTime (optional)
///
///  @param createdOldestTime createdOldestTime (optional)
///
///  @param excludePreviouslyExported excludePreviouslyExported (optional)
///
///  @param filter filter (optional)
///
///  @param listSeparatorToken listSeparatorToken (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) exportEntitiesWithApiKey: (NSString*) apiKey
    exportType: (NSString*) exportType
    outputFormat: (NSString*) outputFormat
    createdEarliestTime: (NSDate*) createdEarliestTime
    createdOldestTime: (NSDate*) createdOldestTime
    excludePreviouslyExported: (NSNumber*) excludePreviouslyExported
    filter: (NSString*) filter
    listSeparatorToken: (NSString*) listSeparatorToken
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'apiKey' is set
    if (apiKey == nil) {
        NSParameterAssert(apiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"apiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIExportControllerApiErrorDomain code:kOAIExportControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'exportType' is set
    if (exportType == nil) {
        NSParameterAssert(exportType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"exportType"] };
            NSError* error = [NSError errorWithDomain:kOAIExportControllerApiErrorDomain code:kOAIExportControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'outputFormat' is set
    if (outputFormat == nil) {
        NSParameterAssert(outputFormat);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"outputFormat"] };
            NSError* error = [NSError errorWithDomain:kOAIExportControllerApiErrorDomain code:kOAIExportControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/export"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (apiKey != nil) {
        queryParams[@"apiKey"] = apiKey;
    }
    if (createdEarliestTime != nil) {
        queryParams[@"createdEarliestTime"] = createdEarliestTime;
    }
    if (createdOldestTime != nil) {
        queryParams[@"createdOldestTime"] = createdOldestTime;
    }
    if (excludePreviouslyExported != nil) {
        queryParams[@"excludePreviouslyExported"] = [excludePreviouslyExported isEqual:@(YES)] ? @"true" : @"false";
    }
    if (exportType != nil) {
        queryParams[@"exportType"] = exportType;
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (listSeparatorToken != nil) {
        queryParams[@"listSeparatorToken"] = listSeparatorToken;
    }
    if (outputFormat != nil) {
        queryParams[@"outputFormat"] = outputFormat;
    }
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Get export link
/// 
///  @param exportType exportType 
///
///  @param exportOptions exportOptions 
///
///  @param apiKey apiKey (optional)
///
///  @returns OAIExportLink*
///
-(NSURLSessionTask*) getExportLinkWithExportType: (NSString*) exportType
    exportOptions: (OAIExportOptions*) exportOptions
    apiKey: (NSString*) apiKey
    completionHandler: (void (^)(OAIExportLink* output, NSError* error)) handler {
    // verify the required parameter 'exportType' is set
    if (exportType == nil) {
        NSParameterAssert(exportType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"exportType"] };
            NSError* error = [NSError errorWithDomain:kOAIExportControllerApiErrorDomain code:kOAIExportControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'exportOptions' is set
    if (exportOptions == nil) {
        NSParameterAssert(exportOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"exportOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIExportControllerApiErrorDomain code:kOAIExportControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/export"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (apiKey != nil) {
        queryParams[@"apiKey"] = apiKey;
    }
    if (exportType != nil) {
        queryParams[@"exportType"] = exportType;
    }
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = exportOptions;

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
                              responseType: @"OAIExportLink*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIExportLink*)data, error);
                                }
                            }];
}



@end
