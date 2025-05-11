#import "OAIProviderSettings.h"

@implementation OAIProviderSettings

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"mailProvider": @"mailProvider", @"imapHost": @"imapHost", @"imapPort": @"imapPort", @"imapSsl": @"imapSsl", @"imapStartTls": @"imapStartTls", @"smtpHost": @"smtpHost", @"smtpPort": @"smtpPort", @"smtpSsl": @"smtpSsl", @"smtpStartTls": @"smtpStartTls" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"imapStartTls", @"smtpStartTls"];
  return [optionalProperties containsObject:propertyName];
}

@end
