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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"emailAddress": @"emailAddress", @"domainName": @"domainName", @"domainId": @"domainId", @"name": @"name", @"_description": @"description", @"useDomainPool": @"useDomainPool", @"tags": @"tags", @"expiresAt": @"expiresAt", @"favourite": @"favourite", @"expiresIn": @"expiresIn", @"allowTeamAccess": @"allowTeamAccess", @"inboxType": @"inboxType", @"virtualInbox": @"virtualInbox", @"useShortAddress": @"useShortAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"emailAddress", @"domainName", @"domainId", @"name", @"_description", @"useDomainPool", @"tags", @"expiresAt", @"favourite", @"expiresIn", @"allowTeamAccess", @"inboxType", @"virtualInbox", @"useShortAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
