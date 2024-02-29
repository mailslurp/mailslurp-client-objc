#import "OAIInboxPreview.h"

@implementation OAIInboxPreview

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"domainId": @"domainId", @"emailAddress": @"emailAddress", @"createdAt": @"createdAt", @"favourite": @"favourite", @"name": @"name", @"tags": @"tags", @"teamAccess": @"teamAccess", @"inboxType": @"inboxType", @"virtualInbox": @"virtualInbox", @"expiresAt": @"expiresAt", @"functionsAs": @"functionsAs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"domainId", @"emailAddress", @"name", @"tags", @"inboxType", @"expiresAt", @"functionsAs"];
  return [optionalProperties containsObject:propertyName];
}

@end
