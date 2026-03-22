#import "OAIDomainMonitorDto.h"

@implementation OAIDomainMonitorDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"domain": @"domain", @"name": @"name", @"intervalSeconds": @"intervalSeconds", @"enabled": @"enabled", @"schedulingEnabled": @"schedulingEnabled", @"lastStatus": @"lastStatus", @"healthScore": @"healthScore", @"lastRunAt": @"lastRunAt", @"nextRunAt": @"nextRunAt", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"intervalSeconds", @"lastStatus", @"healthScore", @"lastRunAt", @"nextRunAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
