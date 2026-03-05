#import "OAIDeliverabilityAnalyticsSummaryDto.h"

@implementation OAIDeliverabilityAnalyticsSummaryDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"totalRuns": @"totalRuns", @"completeRuns": @"completeRuns", @"failedRuns": @"failedRuns", @"stoppedRuns": @"stoppedRuns", @"runningRuns": @"runningRuns", @"scheduledRuns": @"scheduledRuns", @"pausedRuns": @"pausedRuns", @"createdRuns": @"createdRuns", @"thresholdConfiguredRuns": @"thresholdConfiguredRuns", @"thresholdMetRuns": @"thresholdMetRuns", @"averageCompletionPercentage": @"averageCompletionPercentage", @"averageMatchedEntities": @"averageMatchedEntities", @"averageUnmatchedEntities": @"averageUnmatchedEntities" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
