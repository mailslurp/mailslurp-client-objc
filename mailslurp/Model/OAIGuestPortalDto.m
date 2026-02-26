#import "OAIGuestPortalDto.h"

@implementation OAIGuestPortalDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"domainId": @"domainId", @"userId": @"userId", @"name": @"name", @"_description": @"description", @"linkHelp": @"linkHelp", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"loginUrl": @"loginUrl" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"domainId", @"name", @"_description", @"linkHelp", ];
  return [optionalProperties containsObject:propertyName];
}

@end
