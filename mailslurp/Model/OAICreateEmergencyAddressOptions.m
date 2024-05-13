#import "OAICreateEmergencyAddressOptions.h"

@implementation OAICreateEmergencyAddressOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"customerName": @"customerName", @"address1": @"address1", @"city": @"city", @"region": @"region", @"postalCode": @"postalCode", @"isoCountryCode": @"isoCountryCode", @"displayName": @"displayName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"displayName"];
  return [optionalProperties containsObject:propertyName];
}

@end
