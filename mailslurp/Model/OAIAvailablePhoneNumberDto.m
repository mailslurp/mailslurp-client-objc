#import "OAIAvailablePhoneNumberDto.h"

@implementation OAIAvailablePhoneNumberDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"phoneNumber": @"phoneNumber", @"phoneCountry": @"phoneCountry", @"phoneVariant": @"phoneVariant", @"lineType": @"lineType", @"carrierName": @"carrierName", @"mobileCountryCode": @"mobileCountryCode", @"mobileNetworkCode": @"mobileNetworkCode", @"providerLabel": @"providerLabel" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"phoneVariant", @"lineType", @"carrierName", @"mobileCountryCode", @"mobileNetworkCode", @"providerLabel"];
  return [optionalProperties containsObject:propertyName];
}

@end
