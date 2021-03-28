#import "OAIContactDto.h"

@implementation OAIContactDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"company": @"company", @"createdAt": @"createdAt", @"emailAddresses": @"emailAddresses", @"firstName": @"firstName", @"groupId": @"groupId", @"_id": @"id", @"lastName": @"lastName", @"metaData": @"metaData", @"optOut": @"optOut", @"tags": @"tags" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"firstName", @"groupId", @"lastName", @"metaData", @"optOut", ];
  return [optionalProperties containsObject:propertyName];
}

@end
