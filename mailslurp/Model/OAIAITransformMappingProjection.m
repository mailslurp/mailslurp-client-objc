#import "OAIAITransformMappingProjection.h"

@implementation OAIAITransformMappingProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"userId", @"createdAt": @"createdAt", @"aiTransformId": @"aiTransformId", @"entityId": @"entityId", @"entityType": @"entityType", @"contentSelector": @"contentSelector", @"triggerSelector": @"triggerSelector", @"name": @"name", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"entityId", @"contentSelector", @"triggerSelector", @"name", ];
  return [optionalProperties containsObject:propertyName];
}

@end
