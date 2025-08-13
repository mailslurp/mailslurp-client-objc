#import "OAIEmailFeatureOverview.h"

@implementation OAIEmailFeatureOverview

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"feature": @"feature", @"title": @"title", @"_description": @"description", @"category": @"category", @"notes": @"notes", @"notesNumbers": @"notesNumbers", @"featureStatistics": @"featureStatistics", @"statuses": @"statuses" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"title", @"_description", @"category", @"notes", @"notesNumbers", @"featureStatistics", ];
  return [optionalProperties containsObject:propertyName];
}

@end
