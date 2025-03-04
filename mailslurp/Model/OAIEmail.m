#import "OAIEmail.h"

@implementation OAIEmail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"inboxId": @"inboxId", @"domainId": @"domainId", @"to": @"to", @"from": @"from", @"sender": @"sender", @"recipients": @"recipients", @"replyTo": @"replyTo", @"cc": @"cc", @"bcc": @"bcc", @"headers": @"headers", @"headersMap": @"headersMap", @"attachments": @"attachments", @"subject": @"subject", @"body": @"body", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"bodyMD5Hash": @"bodyMD5Hash", @"isHTML": @"isHTML", @"charset": @"charset", @"analysis": @"analysis", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"read": @"read", @"teamAccess": @"teamAccess", @"isXAmpHtml": @"isXAmpHtml", @"bodyPartContentTypes": @"bodyPartContentTypes", @"externalId": @"externalId", @"messageId": @"messageId", @"threadId": @"threadId", @"inReplyTo": @"inReplyTo", @"favourite": @"favourite", @"html": @"html", @"xampHtml": @"xampHtml" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"domainId", @"from", @"sender", @"recipients", @"replyTo", @"cc", @"bcc", @"headers", @"headersMap", @"attachments", @"subject", @"body", @"bodyExcerpt", @"textExcerpt", @"bodyMD5Hash", @"isHTML", @"charset", @"analysis", @"isXAmpHtml", @"bodyPartContentTypes", @"externalId", @"messageId", @"threadId", @"inReplyTo", @"favourite", @"html", @"xampHtml"];
  return [optionalProperties containsObject:propertyName];
}

@end
