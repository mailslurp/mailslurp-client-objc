#import "OAIDeliverabilityTestDto.h"

@implementation OAIDeliverabilityTestDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"_description": @"description", @"scope": @"scope", @"selector": @"selector", @"selectedEntityCount": @"selectedEntityCount", @"expectations": @"expectations", @"status": @"status", @"startAt": @"startAt", @"startedAt": @"startedAt", @"completedAt": @"completedAt", @"maxDurationSeconds": @"maxDurationSeconds", @"successThresholdPercent": @"successThresholdPercent", @"thresholdStatus": @"thresholdStatus", @"thresholdMet": @"thresholdMet", @"lastEvaluatedAt": @"lastEvaluatedAt", @"totalEntities": @"totalEntities", @"matchedEntities": @"matchedEntities", @"unmatchedEntities": @"unmatchedEntities", @"completionPercentage": @"completionPercentage", @"timedOut": @"timedOut", @"failureReason": @"failureReason", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"_description", @"startedAt", @"completedAt", @"maxDurationSeconds", @"successThresholdPercent", @"thresholdMet", @"lastEvaluatedAt", @"failureReason", ];
  return [optionalProperties containsObject:propertyName];
}

@end
