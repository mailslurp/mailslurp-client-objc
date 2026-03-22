#import "OAIEmailHeaderReceivedHop.h"

@implementation OAIEmailHeaderReceivedHop

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"from": @"from", @"by": @"by", @"withValue": @"withValue", @"timestamp": @"timestamp", @"delayMs": @"delayMs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"from", @"by", @"withValue", @"timestamp", @"delayMs"];
  return [optionalProperties containsObject:propertyName];
}

@end
