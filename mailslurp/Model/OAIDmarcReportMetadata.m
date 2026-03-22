#import "OAIDmarcReportMetadata.h"

@implementation OAIDmarcReportMetadata

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"orgName": @"orgName", @"email": @"email", @"reportId": @"reportId", @"domain": @"domain", @"adkim": @"adkim", @"aspf": @"aspf", @"policy": @"policy", @"subdomainPolicy": @"subdomainPolicy", @"percentage": @"percentage", @"dateRangeBegin": @"dateRangeBegin", @"dateRangeEnd": @"dateRangeEnd" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"orgName", @"email", @"reportId", @"domain", @"adkim", @"aspf", @"policy", @"subdomainPolicy", @"percentage", @"dateRangeBegin", @"dateRangeEnd"];
  return [optionalProperties containsObject:propertyName];
}

@end
