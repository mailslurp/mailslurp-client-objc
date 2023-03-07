#import "OAITrackingPixelProjection.h"

@implementation OAITrackingPixelProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"_id": @"id", @"userId": @"userId", @"sentEmailId": @"sentEmailId", @"inboxId": @"inboxId", @"createdAt": @"createdAt", @"recipient": @"recipient", @"seen": @"seen", @"seenAt": @"seenAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"sentEmailId", @"inboxId", @"recipient", @"seenAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
