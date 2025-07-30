#import "OAIAITransformResultProjectionDto.h"

@implementation OAIAITransformResultProjectionDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"aiTransformId": @"aiTransformId", @"aiTransformMappingId": @"aiTransformMappingId", @"userId": @"userId", @"value": @"value", @"entityId": @"entityId", @"entityType": @"entityType", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"aiTransformMappingId", @"value", @"entityId", @"entityType", ];
  return [optionalProperties containsObject:propertyName];
}

@end
