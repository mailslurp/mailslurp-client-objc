#import "OAIGenerateDmarcRecordOptions.h"

@implementation OAIGenerateDmarcRecordOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"domain": @"domain", @"version": @"version", @"policy": @"policy", @"subdomainPolicy": @"subdomainPolicy", @"reportEmailAddress": @"reportEmailAddress", @"forensicEmailAddress": @"forensicEmailAddress", @"percentage": @"percentage", @"reportFormat": @"reportFormat", @"secondsBetweenReports": @"secondsBetweenReports", @"adkim": @"adkim", @"aspf": @"aspf", @"fo": @"fo" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subdomainPolicy", @"reportEmailAddress", @"forensicEmailAddress", @"percentage", @"reportFormat", @"secondsBetweenReports", @"adkim", @"aspf", @"fo"];
  return [optionalProperties containsObject:propertyName];
}

@end
