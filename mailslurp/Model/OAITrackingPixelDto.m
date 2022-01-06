#import "OAITrackingPixelDto.h"

@implementation OAITrackingPixelDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"seen": @"seen", @"recipient": @"recipient", @"html": @"html", @"url": @"url", @"inboxId": @"inboxId", @"sentEmailId": @"sentEmailId", @"seenAt": @"seenAt", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"seen", @"recipient", @"html", @"url", @"inboxId", @"sentEmailId", @"seenAt", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
