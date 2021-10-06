#import "OAIInbox.h"

@implementation OAIInbox

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"_description": @"description", @"emailAddress": @"emailAddress", @"expiresAt": @"expiresAt", @"favourite": @"favourite", @"_id": @"id", @"inboxType": @"inboxType", @"name": @"name", @"_readOnly": @"readOnly", @"tags": @"tags", @"teamAccess": @"teamAccess", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"createdAt", @"_description", @"emailAddress", @"expiresAt", @"favourite", @"_id", @"inboxType", @"name", @"_readOnly", @"tags", @"teamAccess", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
