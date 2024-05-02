#import "OAIEmailProjection.h"

@implementation OAIEmailProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"inboxId": @"inboxId", @"attachments": @"attachments", @"to": @"to", @"domainId": @"domainId", @"bcc": @"bcc", @"cc": @"cc", @"read": @"read", @"bodyExcerpt": @"bodyExcerpt", @"teamAccess": @"teamAccess", @"bodyMD5Hash": @"bodyMD5Hash", @"textExcerpt": @"textExcerpt", @"createdAt": @"createdAt", @"subject": @"subject", @"_id": @"id", @"from": @"from" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachments", @"domainId", @"bcc", @"cc", @"bodyExcerpt", @"bodyMD5Hash", @"textExcerpt", @"subject", @"from"];
  return [optionalProperties containsObject:propertyName];
}

@end
