#import "OAIBounceRecipientProjection.h"

@implementation OAIBounceRecipientProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"sentEmailId": @"sentEmailId", @"recipient": @"recipient", @"bounceType": @"bounceType", @"action": @"action", @"_id": @"id", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sentEmailId", @"bounceType", @"action", @"_id", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
