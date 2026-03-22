#import "OAIDomainMonitorRunComparisonDto.h"

@implementation OAIDomainMonitorRunComparisonDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"baseline": @"baseline", @"current": @"current", @"healthScoreDelta": @"healthScoreDelta", @"statusChanged": @"statusChanged", @"passingChecksDelta": @"passingChecksDelta", @"failingChecksDelta": @"failingChecksDelta", @"spfChanged": @"spfChanged", @"dmarcChanged": @"dmarcChanged", @"dmarcEnforcedChanged": @"dmarcEnforcedChanged", @"mxChanged": @"mxChanged", @"addedInsights": @"addedInsights", @"removedInsights": @"removedInsights" }];
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
