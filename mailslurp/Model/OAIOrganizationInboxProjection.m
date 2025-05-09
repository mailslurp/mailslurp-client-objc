#import "OAIOrganizationInboxProjection.h"

@implementation OAIOrganizationInboxProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"domainId": @"domainId", @"createdAt": @"createdAt", @"name": @"name", @"emailAddress": @"emailAddress", @"favourite": @"favourite", @"tags": @"tags", @"teamAccess": @"teamAccess", @"inboxType": @"inboxType", @"_readOnly": @"readOnly", @"virtualInbox": @"virtualInbox", @"functionsAs": @"functionsAs", @"userId": @"userId", @"_description": @"description", @"expiresAt": @"expiresAt", @"accountRegion": @"accountRegion" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"domainId", @"name", @"tags", @"inboxType", @"functionsAs", @"_description", @"expiresAt", @"accountRegion"];
  return [optionalProperties containsObject:propertyName];
}

@end
