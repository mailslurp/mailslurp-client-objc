#import "OAIPhoneProvisioningJobItemDto.h"

@implementation OAIPhoneProvisioningJobItemDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"phoneNumber": @"phoneNumber", @"providerLabel": @"providerLabel", @"status": @"status", @"lineType": @"lineType", @"carrierName": @"carrierName", @"mobileCountryCode": @"mobileCountryCode", @"mobileNetworkCode": @"mobileNetworkCode", @"phoneNumberId": @"phoneNumberId", @"failureMessage": @"failureMessage" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"providerLabel", @"lineType", @"carrierName", @"mobileCountryCode", @"mobileNetworkCode", @"phoneNumberId", @"failureMessage"];
  return [optionalProperties containsObject:propertyName];
}

@end
