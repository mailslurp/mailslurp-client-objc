#import "OAICampaignProbeInsightsDto.h"

@implementation OAICampaignProbeInsightsDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"probeId": @"probeId", @"since": @"since", @"before": @"before", @"totalRuns": @"totalRuns", @"healthyRuns": @"healthyRuns", @"warningRuns": @"warningRuns", @"failedRuns": @"failedRuns", @"successRate": @"successRate", @"averageHealthScore": @"averageHealthScore", @"currentHealthyStreak": @"currentHealthyStreak", @"bestHealthyStreak": @"bestHealthyStreak", @"goodPerformanceSignals": @"goodPerformanceSignals", @"attentionSignals": @"attentionSignals", @"topFindings": @"topFindings", @"latestRun": @"latestRun" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"latestRun"];
  return [optionalProperties containsObject:propertyName];
}

@end
