#import "OAIAuditLogEventDto.h"

@implementation OAIAuditLogEventDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"tenantId": @"tenantId", @"dt": @"dt", @"eventId": @"eventId", @"eventTs": @"eventTs", @"action": @"action", @"userId": @"userId", @"actorUserId": @"actorUserId", @"targetUserId": @"targetUserId", @"resourceType": @"resourceType", @"resourceId": @"resourceId", @"outcome": @"outcome", @"requestId": @"requestId", @"ipAddress": @"ipAddress", @"metadataJson": @"metadataJson" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"dt", @"userId", @"actorUserId", @"targetUserId", @"resourceType", @"resourceId", @"outcome", @"requestId", @"ipAddress", @"metadataJson"];
  return [optionalProperties containsObject:propertyName];
}

@end
