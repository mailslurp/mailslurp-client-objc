#import "OAIConnectorEventProjection.h"

@implementation OAIConnectorEventProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"message": @"message", @"_id": @"id", @"size": @"size", @"eventType": @"eventType", @"createdAt": @"createdAt", @"connectorId": @"connectorId", @"seen": @"seen", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"message", @"_id", @"seen", ];
  return [optionalProperties containsObject:propertyName];
}

@end
