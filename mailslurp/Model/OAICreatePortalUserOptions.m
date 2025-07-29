#import "OAICreatePortalUserOptions.h"

@implementation OAICreatePortalUserOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"password": @"password", @"name": @"name", @"username": @"username", @"skipInboxCreation": @"skipInboxCreation", @"inboxId": @"inboxId", @"createInboxOptions": @"createInboxOptions" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"password", @"name", @"username", @"skipInboxCreation", @"inboxId", @"createInboxOptions"];
  return [optionalProperties containsObject:propertyName];
}

@end
