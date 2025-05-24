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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"emailAddress": @"emailAddress", @"createdAt": @"createdAt", @"emailAddresses": @"emailAddresses", @"firstName": @"firstName", @"lastName": @"lastName", @"company": @"company", @"optOut": @"optOut", @"_id": @"id", @"groupId": @"groupId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"emailAddress", @"emailAddresses", @"firstName", @"lastName", @"company", @"optOut", @"groupId"];
  return [optionalProperties containsObject:propertyName];
}

@end
