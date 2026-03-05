#import "OAICreateConnectorSmtpConnectionOptions.h"

@implementation OAICreateConnectorSmtpConnectionOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"enabled": @"enabled", @"smtpHost": @"smtpHost", @"smtpPort": @"smtpPort", @"smtpSsl": @"smtpSsl", @"smtpUsername": @"smtpUsername", @"smtpPassword": @"smtpPassword", @"smtpMechanisms": @"smtpMechanisms", @"startTls": @"startTls", @"localHostName": @"localHostName", @"proxyHost": @"proxyHost", @"proxyPort": @"proxyPort", @"proxyEnabled": @"proxyEnabled", @"sslTrust": @"sslTrust", @"sslProtocols": @"sslProtocols" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"enabled", @"smtpPort", @"smtpSsl", @"smtpUsername", @"smtpPassword", @"smtpMechanisms", @"startTls", @"localHostName", @"proxyHost", @"proxyPort", @"proxyEnabled", @"sslTrust", @"sslProtocols"];
  return [optionalProperties containsObject:propertyName];
}

@end
