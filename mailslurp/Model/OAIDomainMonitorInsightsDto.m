#import "OAIDomainMonitorInsightsDto.h"

@implementation OAIDomainMonitorInsightsDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"monitorId": @"monitorId", @"since": @"since", @"before": @"before", @"totalRuns": @"totalRuns", @"healthyRuns": @"healthyRuns", @"degradedRuns": @"degradedRuns", @"criticalRuns": @"criticalRuns", @"failedRuns": @"failedRuns", @"successRate": @"successRate", @"averageHealthScore": @"averageHealthScore", @"currentHealthyStreak": @"currentHealthyStreak", @"bestHealthyStreak": @"bestHealthyStreak", @"goodPerformanceSignals": @"goodPerformanceSignals", @"attentionSignals": @"attentionSignals", @"topFindings": @"topFindings", @"latestRun": @"latestRun" }];
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
