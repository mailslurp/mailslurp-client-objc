#import "OAICreateOwnedAliasOptions.h"

@implementation OAICreateOwnedAliasOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"emailAddress": @"emailAddress", @"inboxId": @"inboxId", @"name": @"name", @"proxied": @"proxied" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"emailAddress", @"inboxId", @"name", @"proxied"];
  return [optionalProperties containsObject:propertyName];
}

@end
