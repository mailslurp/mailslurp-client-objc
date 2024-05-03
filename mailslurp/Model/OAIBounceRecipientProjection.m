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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sentEmailId": @"sentEmailId", @"recipient": @"recipient", @"action": @"action", @"bounceType": @"bounceType", @"createdAt": @"createdAt", @"_id": @"id", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sentEmailId", @"action", @"bounceType", @"_id", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
