#import "OAIInboxDto.h"

@implementation OAIInboxDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"createdAt": @"createdAt", @"name": @"name", @"domainId": @"domainId", @"_description": @"description", @"emailAddress": @"emailAddress", @"expiresAt": @"expiresAt", @"favourite": @"favourite", @"tags": @"tags", @"inboxType": @"inboxType", @"_readOnly": @"readOnly", @"virtualInbox": @"virtualInbox", @"functionsAs": @"functionsAs", @"localPart": @"localPart", @"domain": @"domain", @"accountRegion": @"accountRegion" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"domainId", @"_description", @"expiresAt", @"tags", @"inboxType", @"functionsAs", @"localPart", @"domain", @"accountRegion"];
  return [optionalProperties containsObject:propertyName];
}

@end
