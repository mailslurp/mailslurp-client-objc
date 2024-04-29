#import "OAIConnectorSmtpConnectionDto.h"

@implementation OAIConnectorSmtpConnectionDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"connectorId": @"connectorId", @"smtpHost": @"smtpHost", @"smtpPort": @"smtpPort", @"smtpUsername": @"smtpUsername", @"smtpPassword": @"smtpPassword", @"smtpSsl": @"smtpSsl", @"enabled": @"enabled", @"createdAt": @"createdAt", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"smtpHost", @"smtpPort", @"smtpUsername", @"smtpPassword", @"smtpSsl", @"enabled", ];
  return [optionalProperties containsObject:propertyName];
}

@end
