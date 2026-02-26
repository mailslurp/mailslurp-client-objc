#import "OAICreateContactOptions.h"

@implementation OAICreateContactOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"firstName": @"firstName", @"lastName": @"lastName", @"company": @"company", @"emailAddresses": @"emailAddresses", @"tags": @"tags", @"metaData": @"metaData", @"optOut": @"optOut", @"groupId": @"groupId", @"verifyEmailAddresses": @"verifyEmailAddresses" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"firstName", @"lastName", @"company", @"emailAddresses", @"tags", @"metaData", @"optOut", @"groupId", @"verifyEmailAddresses"];
  return [optionalProperties containsObject:propertyName];
}

@end
