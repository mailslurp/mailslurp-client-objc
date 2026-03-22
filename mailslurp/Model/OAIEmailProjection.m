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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"threadId": @"threadId", @"from": @"from", @"subject": @"subject", @"sender": @"sender", @"recipients": @"recipients", @"inboxId": @"inboxId", @"attachments": @"attachments", @"sizeBytes": @"sizeBytes", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"messageId": @"messageId", @"favourite": @"favourite", @"domainId": @"domainId", @"plusAddress": @"plusAddress", @"imapUid": @"imapUid", @"inReplyTo": @"inReplyTo", @"read": @"read", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"bodyPartContentTypes": @"bodyPartContentTypes", @"bodyMD5Hash": @"bodyMD5Hash", @"teamAccess": @"teamAccess" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"threadId", @"subject", @"sender", @"recipients", @"attachments", @"sizeBytes", @"cc", @"bcc", @"messageId", @"favourite", @"domainId", @"plusAddress", @"imapUid", @"inReplyTo", @"bodyExcerpt", @"textExcerpt", @"bodyPartContentTypes", @"bodyMD5Hash", ];
  return [optionalProperties containsObject:propertyName];
}

@end
