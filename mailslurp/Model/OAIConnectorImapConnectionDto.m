#import "OAIConnectorImapConnectionDto.h"

@implementation OAIConnectorImapConnectionDto

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"connectorId": @"connectorId", @"imapHost": @"imapHost", @"imapPort": @"imapPort", @"imapUsername": @"imapUsername", @"imapPassword": @"imapPassword", @"imapSsl": @"imapSsl", @"selectFolder": @"selectFolder", @"searchTerms": @"searchTerms", @"startTls": @"startTls", @"proxyHost": @"proxyHost", @"proxyPort": @"proxyPort", @"proxyEnabled": @"proxyEnabled", @"localHostName": @"localHostName", @"mechanisms": @"mechanisms", @"sslProtocols": @"sslProtocols", @"sslTrust": @"sslTrust", @"enabled": @"enabled", @"createdAt": @"createdAt", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"imapPort", @"imapUsername", @"imapPassword", @"imapSsl", @"selectFolder", @"searchTerms", @"startTls", @"proxyHost", @"proxyPort", @"proxyEnabled", @"localHostName", @"mechanisms", @"sslProtocols", @"sslTrust", @"enabled", ];
  return [optionalProperties containsObject:propertyName];
}

@end
