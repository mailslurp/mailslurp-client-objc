#import "OAITenantReputationStatusRowDto.h"

@implementation OAITenantReputationStatusRowDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountRegion": @"accountRegion", @"tenantName": @"tenantName", @"tenantArn": @"tenantArn", @"sendingStatus": @"sendingStatus", @"reputationStatus": @"reputationStatus", @"reputationPolicy": @"reputationPolicy", @"customerManagedSendingStatus": @"customerManagedSendingStatus", @"awsManagedSendingStatus": @"awsManagedSendingStatus", @"findingCount": @"findingCount", @"bounceRate": @"bounceRate", @"complaintRate": @"complaintRate", @"sendLastHour": @"sendLastHour", @"metricTimestamp": @"metricTimestamp", @"error": @"error" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"tenantArn", @"sendingStatus", @"reputationStatus", @"reputationPolicy", @"customerManagedSendingStatus", @"awsManagedSendingStatus", @"bounceRate", @"complaintRate", @"sendLastHour", @"metricTimestamp", @"error"];
  return [optionalProperties containsObject:propertyName];
}

@end
