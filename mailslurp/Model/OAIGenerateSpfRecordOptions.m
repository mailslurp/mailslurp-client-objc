#import "OAIGenerateSpfRecordOptions.h"

@implementation OAIGenerateSpfRecordOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"domain": @"domain", @"includeDomains": @"includeDomains", @"ip4": @"ip4", @"ip6": @"ip6", @"mx": @"mx", @"a": @"a", @"allPolicy": @"allPolicy" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"includeDomains", @"ip4", @"ip6", ];
  return [optionalProperties containsObject:propertyName];
}

@end
