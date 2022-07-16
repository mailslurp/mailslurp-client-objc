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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"from": @"from", @"subject": @"subject", @"inboxId": @"inboxId", @"attachments": @"attachments", @"bodyMD5Hash": @"bodyMD5Hash", @"bodyExcerpt": @"bodyExcerpt", @"to": @"to", @"createdAt": @"createdAt", @"bcc": @"bcc", @"cc": @"cc", @"domainId": @"domainId", @"teamAccess": @"teamAccess", @"read": @"read" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"from", @"subject", @"attachments", @"bodyMD5Hash", @"bodyExcerpt", @"bcc", @"cc", @"domainId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
