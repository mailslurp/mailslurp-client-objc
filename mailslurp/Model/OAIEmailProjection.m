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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"subject": @"subject", @"createdAt": @"createdAt", @"sender": @"sender", @"recipients": @"recipients", @"attachments": @"attachments", @"inboxId": @"inboxId", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"messageId": @"messageId", @"domainId": @"domainId", @"favourite": @"favourite", @"plusAddress": @"plusAddress", @"inReplyTo": @"inReplyTo", @"read": @"read", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"bodyPartContentTypes": @"bodyPartContentTypes", @"bodyMD5Hash": @"bodyMD5Hash", @"teamAccess": @"teamAccess", @"_id": @"id", @"threadId": @"threadId", @"from": @"from" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subject", @"sender", @"recipients", @"attachments", @"cc", @"bcc", @"messageId", @"domainId", @"favourite", @"plusAddress", @"inReplyTo", @"bodyExcerpt", @"textExcerpt", @"bodyPartContentTypes", @"bodyMD5Hash", @"threadId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
