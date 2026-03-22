#import "OAIUpdateDeliverabilityTestOptions.h"

@implementation OAIUpdateDeliverabilityTestOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"_description": @"description", @"startAt": @"startAt", @"maxDurationSeconds": @"maxDurationSeconds", @"clearMaxDuration": @"clearMaxDuration", @"successThresholdPercent": @"successThresholdPercent", @"clearSuccessThreshold": @"clearSuccessThreshold", @"expectations": @"expectations" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"_description", @"startAt", @"maxDurationSeconds", @"clearMaxDuration", @"successThresholdPercent", @"clearSuccessThreshold", @"expectations"];
  return [optionalProperties containsObject:propertyName];
}

@end
