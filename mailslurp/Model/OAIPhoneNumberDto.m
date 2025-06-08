#import "OAIPhoneNumberDto.h"

@implementation OAIPhoneNumberDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"_description": @"description", @"userId": @"userId", @"complianceAddress": @"complianceAddress", @"emergencyAddress": @"emergencyAddress", @"phoneNumber": @"phoneNumber", @"phoneCountry": @"phoneCountry", @"phonePlan": @"phonePlan", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"favourite": @"favourite" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"_description", @"complianceAddress", @"emergencyAddress", ];
  return [optionalProperties containsObject:propertyName];
}

@end
