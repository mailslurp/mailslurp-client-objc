#import "OAIEntityAutomationItemProjection.h"

@implementation OAIEntityAutomationItemProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"inboxId": @"inboxId", @"action": @"action", @"phoneId": @"phoneId", @"automationType": @"automationType", @"name": @"name", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inboxId", @"action", @"phoneId", @"name", ];
  return [optionalProperties containsObject:propertyName];
}

@end
