#import "OAIPhoneSmsPrepaidCreditDto.h"

@implementation OAIPhoneSmsPrepaidCreditDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"phoneCountry": @"phoneCountry", @"global": @"global", @"remainingCredits": @"remainingCredits", @"initialCredits": @"initialCredits", @"sentMultiplier": @"sentMultiplier", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"phoneCountry", ];
  return [optionalProperties containsObject:propertyName];
}

@end
