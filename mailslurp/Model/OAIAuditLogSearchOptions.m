#import "OAIAuditLogSearchOptions.h"

@implementation OAIAuditLogSearchOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"since": @"since", @"before": @"before", @"action": @"action", @"userId": @"userId", @"actorUserId": @"actorUserId", @"targetUserId": @"targetUserId", @"resourceType": @"resourceType", @"resourceId": @"resourceId", @"outcome": @"outcome", @"requestId": @"requestId", @"ipAddress": @"ipAddress", @"eventId": @"eventId", @"pageSize": @"pageSize", @"cursor": @"cursor" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"since", @"before", @"action", @"userId", @"actorUserId", @"targetUserId", @"resourceType", @"resourceId", @"outcome", @"requestId", @"ipAddress", @"eventId", @"pageSize", @"cursor"];
  return [optionalProperties containsObject:propertyName];
}

@end
