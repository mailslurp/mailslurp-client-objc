#import "OAIContactProjection.h"

@implementation OAIContactProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"groupId": @"groupId", @"createdAt": @"createdAt", @"lastName": @"lastName", @"company": @"company", @"emailAddresses": @"emailAddresses", @"optOut": @"optOut", @"firstName": @"firstName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"groupId", @"lastName", @"company", @"emailAddresses", @"firstName"];
  return [optionalProperties containsObject:propertyName];
}

@end
