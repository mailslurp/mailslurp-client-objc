#import "OAIWaitForSingleSmsOptions.h"

@implementation OAIWaitForSingleSmsOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"phoneNumberId": @"phoneNumberId", @"timeout": @"timeout", @"unreadOnly": @"unreadOnly", @"before": @"before", @"since": @"since", @"sortDirection": @"sortDirection", @"delay": @"delay" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"unreadOnly", @"before", @"since", @"sortDirection", @"delay"];
  return [optionalProperties containsObject:propertyName];
}

@end
