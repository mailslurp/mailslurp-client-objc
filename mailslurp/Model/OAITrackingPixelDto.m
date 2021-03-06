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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"html": @"html", @"_id": @"id", @"inboxId": @"inboxId", @"recipient": @"recipient", @"seen": @"seen", @"seenAt": @"seenAt", @"sentEmailId": @"sentEmailId", @"url": @"url" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inboxId", @"recipient", @"seenAt", @"sentEmailId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
