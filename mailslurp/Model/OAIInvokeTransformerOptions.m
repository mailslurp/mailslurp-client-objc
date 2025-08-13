#import "OAIInvokeTransformerOptions.h"

@implementation OAIInvokeTransformerOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"aiTransformId": @"aiTransformId", @"aiTransformMappingId": @"aiTransformMappingId", @"rawInput": @"rawInput", @"entityId": @"entityId", @"entityType": @"entityType", @"rawConditions": @"rawConditions", @"rawInstructions": @"rawInstructions", @"rawOutputSchema": @"rawOutputSchema", @"contentSelector": @"contentSelector" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"aiTransformId", @"aiTransformMappingId", @"rawInput", @"entityId", @"entityType", @"rawConditions", @"rawInstructions", @"rawOutputSchema", @"contentSelector"];
  return [optionalProperties containsObject:propertyName];
}

@end
