#import "OAIConnectorProjection.h"

@implementation OAIConnectorProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"enabled": @"enabled", @"inboxId": @"inboxId", @"emailAddress": @"emailAddress", @"userId": @"userId", @"syncEnabled": @"syncEnabled", @"syncScheduleType": @"syncScheduleType", @"syncInterval": @"syncInterval", @"name": @"name", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"enabled", @"emailAddress", @"syncEnabled", @"syncInterval", @"name", @"_id"];
  return [optionalProperties containsObject:propertyName];
}

@end
