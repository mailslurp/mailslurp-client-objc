#import "OAIDeliverabilitySimulationJobDto.h"

@implementation OAIDeliverabilitySimulationJobDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"testId": @"testId", @"scope": @"scope", @"status": @"status", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"startedAt": @"startedAt", @"completedAt": @"completedAt", @"totalTargets": @"totalTargets", @"totalPlannedSends": @"totalPlannedSends", @"nextSendIndex": @"nextSendIndex", @"sentCount": @"sentCount", @"successCount": @"successCount", @"failureCount": @"failureCount", @"progressPercent": @"progressPercent", @"activeTargetLabel": @"activeTargetLabel", @"estimatedRemainingMs": @"estimatedRemainingMs", @"configSnapshot": @"configSnapshot", @"errorSummary": @"errorSummary" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"startedAt", @"completedAt", @"activeTargetLabel", @"estimatedRemainingMs", ];
  return [optionalProperties containsObject:propertyName];
}

@end
