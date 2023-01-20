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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"from": @"from", @"subject": @"subject", @"inboxId": @"inboxId", @"createdAt": @"createdAt", @"attachments": @"attachments", @"to": @"to", @"bcc": @"bcc", @"cc": @"cc", @"domainId": @"domainId", @"bodyMD5Hash": @"bodyMD5Hash", @"read": @"read", @"bodyExcerpt": @"bodyExcerpt", @"teamAccess": @"teamAccess" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"from", @"subject", @"attachments", @"bcc", @"cc", @"domainId", @"bodyMD5Hash", @"bodyExcerpt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
