#import "OAIPhoneNumberLineTypeLookupDto.h"

@implementation OAIPhoneNumberLineTypeLookupDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"phoneNumber": @"phoneNumber", @"nationalFormat": @"nationalFormat", @"countryCode": @"countryCode", @"countryPrefix": @"countryPrefix", @"isValid": @"isValid", @"validationErrors": @"validationErrors", @"lineTypeIntelligence": @"lineTypeIntelligence", @"mailslurpPhoneNumber": @"mailslurpPhoneNumber" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"nationalFormat", @"countryCode", @"countryPrefix", @"validationErrors", @"lineTypeIntelligence", ];
  return [optionalProperties containsObject:propertyName];
}

@end
