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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sender": @"sender", @"recipients": @"recipients", @"attachments": @"attachments", @"inboxId": @"inboxId", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"messageId": @"messageId", @"domainId": @"domainId", @"favourite": @"favourite", @"inReplyTo": @"inReplyTo", @"plusAddress": @"plusAddress", @"sizeBytes": @"sizeBytes", @"read": @"read", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"bodyPartContentTypes": @"bodyPartContentTypes", @"bodyMD5Hash": @"bodyMD5Hash", @"teamAccess": @"teamAccess", @"subject": @"subject", @"_id": @"id", @"threadId": @"threadId", @"from": @"from" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sender", @"recipients", @"attachments", @"cc", @"bcc", @"messageId", @"domainId", @"favourite", @"inReplyTo", @"plusAddress", @"sizeBytes", @"bodyExcerpt", @"textExcerpt", @"bodyPartContentTypes", @"bodyMD5Hash", @"subject", @"threadId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
