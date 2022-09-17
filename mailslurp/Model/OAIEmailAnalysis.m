#import "OAIEmailAnalysis.h"

@implementation OAIEmailAnalysis

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"spamVerdict": @"spamVerdict", @"virusVerdict": @"virusVerdict", @"spfVerdict": @"spfVerdict", @"dkimVerdict": @"dkimVerdict", @"dmarcVerdict": @"dmarcVerdict" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"spamVerdict", @"virusVerdict", @"spfVerdict", @"dkimVerdict", @"dmarcVerdict"];
  return [optionalProperties containsObject:propertyName];
}

@end
