#import "OAIDeliverabilityAnalyticsRunDto.h"

@implementation OAIDeliverabilityAnalyticsRunDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"scope": @"scope", @"status": @"status", @"createdAt": @"createdAt", @"startAt": @"startAt", @"completedAt": @"completedAt", @"totalEntities": @"totalEntities", @"matchedEntities": @"matchedEntities", @"unmatchedEntities": @"unmatchedEntities", @"completionPercentage": @"completionPercentage", @"successThresholdPercent": @"successThresholdPercent", @"thresholdStatus": @"thresholdStatus" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"completedAt", @"successThresholdPercent", ];
  return [optionalProperties containsObject:propertyName];
}

@end
