#import "OAIGuestPortalUserProjection.h"

@implementation OAIGuestPortalUserProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"userId": @"userId", @"emailAddress": @"emailAddress", @"inboxId": @"inboxId", @"portalId": @"portalId", @"name": @"name", @"_id": @"id", @"username": @"username" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"emailAddress", @"inboxId", @"name", ];
  return [optionalProperties containsObject:propertyName];
}

@end
