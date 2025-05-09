#import "OAIConnectorEventDto.h"

@implementation OAIConnectorEventDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"connectorId": @"connectorId", @"status": @"status", @"eventType": @"eventType", @"size": @"size", @"message": @"message", @"logs": @"logs", @"seen": @"seen", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"message", @"logs", @"seen", ];
  return [optionalProperties containsObject:propertyName];
}

@end
