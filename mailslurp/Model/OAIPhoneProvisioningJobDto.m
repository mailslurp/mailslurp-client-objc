#import "OAIPhoneProvisioningJobDto.h"

@implementation OAIPhoneProvisioningJobDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"phoneCountry": @"phoneCountry", @"phoneVariant": @"phoneVariant", @"status": @"status", @"requestedCount": @"requestedCount", @"attemptedCount": @"attemptedCount", @"succeededCount": @"succeededCount", @"failedCount": @"failedCount", @"unavailableCount": @"unavailableCount", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"items": @"items" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"phoneVariant", ];
  return [optionalProperties containsObject:propertyName];
}

@end
