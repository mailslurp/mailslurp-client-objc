#import "OAIPhoneNumberLineTypeIntelligenceDto.h"

@implementation OAIPhoneNumberLineTypeIntelligenceDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"carrierName": @"carrierName", @"mobileCountryCode": @"mobileCountryCode", @"mobileNetworkCode": @"mobileNetworkCode", @"errorCode": @"errorCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"carrierName", @"mobileCountryCode", @"mobileNetworkCode", @"errorCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
