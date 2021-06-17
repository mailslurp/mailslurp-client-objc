#import "OAICreateInboxDto.h"

@implementation OAICreateInboxDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"allowTeamAccess": @"allowTeamAccess", @"_description": @"description", @"emailAddress": @"emailAddress", @"expiresAt": @"expiresAt", @"expiresIn": @"expiresIn", @"favourite": @"favourite", @"inboxType": @"inboxType", @"name": @"name", @"tags": @"tags", @"useDomainPool": @"useDomainPool" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowTeamAccess", @"_description", @"emailAddress", @"expiresAt", @"expiresIn", @"favourite", @"inboxType", @"name", @"tags", @"useDomainPool"];
  return [optionalProperties containsObject:propertyName];
}

@end
