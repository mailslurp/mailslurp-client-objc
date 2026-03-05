#import "OAICampaignProbeDto.h"

@implementation OAICampaignProbeDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"name": @"name", @"localPart": @"localPart", @"emailAddress": @"emailAddress", @"enabled": @"enabled", @"intervalSeconds": @"intervalSeconds", @"schedulingEnabled": @"schedulingEnabled", @"nextRunAt": @"nextRunAt", @"lastRunStatus": @"lastRunStatus", @"lastHealthScore": @"lastHealthScore", @"lastIngestAt": @"lastIngestAt", @"totalIngestCount": @"totalIngestCount", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"intervalSeconds", @"nextRunAt", @"lastRunStatus", @"lastHealthScore", @"lastIngestAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
