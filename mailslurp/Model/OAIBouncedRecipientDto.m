#import "OAIBouncedRecipientDto.h"

@implementation OAIBouncedRecipientDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"sentEmailId": @"sentEmailId", @"recipient": @"recipient", @"diagnosticCode": @"diagnosticCode", @"action": @"action", @"status": @"status", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"userId", @"sentEmailId", @"diagnosticCode", @"action", @"status", ];
  return [optionalProperties containsObject:propertyName];
}

@end
