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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"inboxId": @"inboxId", @"count": @"count", @"delayTimeout": @"delayTimeout", @"timeout": @"timeout", @"unreadOnly": @"unreadOnly", @"countType": @"countType", @"matches": @"matches", @"sortDirection": @"sortDirection", @"since": @"since", @"before": @"before" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"count", @"delayTimeout", @"unreadOnly", @"countType", @"matches", @"sortDirection", @"since", @"before"];
  return [optionalProperties containsObject:propertyName];
}

@end
