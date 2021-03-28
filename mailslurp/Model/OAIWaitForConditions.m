#import "OAIWaitForConditions.h"

@implementation OAIWaitForConditions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"count": @"count", @"countType": @"countType", @"inboxId": @"inboxId", @"matches": @"matches", @"sortDirection": @"sortDirection", @"timeout": @"timeout", @"unreadOnly": @"unreadOnly" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"count", @"countType", @"inboxId", @"matches", @"sortDirection", @"timeout", @"unreadOnly"];
  return [optionalProperties containsObject:propertyName];
}

@end
