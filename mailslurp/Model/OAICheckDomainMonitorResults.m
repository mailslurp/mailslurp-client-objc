#import "OAICheckDomainMonitorResults.h"

@implementation OAICheckDomainMonitorResults

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"domain": @"domain", @"status": @"status", @"healthScore": @"healthScore", @"totalChecks": @"totalChecks", @"passingChecks": @"passingChecks", @"failingChecks": @"failingChecks", @"spfOk": @"spfOk", @"dmarcOk": @"dmarcOk", @"dmarcEnforced": @"dmarcEnforced", @"mxOk": @"mxOk", @"insights": @"insights", @"errorMessage": @"errorMessage" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"errorMessage"];
  return [optionalProperties containsObject:propertyName];
}

@end
