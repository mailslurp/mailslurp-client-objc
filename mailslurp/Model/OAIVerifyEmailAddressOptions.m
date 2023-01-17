#import "OAIVerifyEmailAddressOptions.h"

@implementation OAIVerifyEmailAddressOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"mailServerDomain": @"mailServerDomain", @"emailAddress": @"emailAddress", @"senderEmailAddress": @"senderEmailAddress", @"port": @"port" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mailServerDomain", @"senderEmailAddress", @"port"];
  return [optionalProperties containsObject:propertyName];
}

@end
