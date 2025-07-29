#import "OAISentEmailDto.h"

@implementation OAISentEmailDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"inboxId": @"inboxId", @"domainId": @"domainId", @"to": @"to", @"from": @"from", @"sender": @"sender", @"recipients": @"recipients", @"replyTo": @"replyTo", @"cc": @"cc", @"bcc": @"bcc", @"attachments": @"attachments", @"subject": @"subject", @"bodyMD5Hash": @"bodyMD5Hash", @"body": @"body", @"toContacts": @"toContacts", @"toGroup": @"toGroup", @"charset": @"charset", @"isHTML": @"isHTML", @"sentAt": @"sentAt", @"createdAt": @"createdAt", @"pixelIds": @"pixelIds", @"messageId": @"messageId", @"messageIds": @"messageIds", @"virtualSend": @"virtualSend", @"templateId": @"templateId", @"templateVariables": @"templateVariables", @"headers": @"headers", @"threadId": @"threadId", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"inReplyTo": @"inReplyTo", @"favourite": @"favourite", @"sizeBytes": @"sizeBytes", @"html": @"html" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"domainId", @"to", @"from", @"sender", @"recipients", @"replyTo", @"cc", @"bcc", @"attachments", @"subject", @"bodyMD5Hash", @"body", @"toContacts", @"toGroup", @"charset", @"isHTML", @"pixelIds", @"messageId", @"messageIds", @"virtualSend", @"templateId", @"templateVariables", @"headers", @"threadId", @"bodyExcerpt", @"textExcerpt", @"inReplyTo", @"favourite", @"sizeBytes", @"html"];
  return [optionalProperties containsObject:propertyName];
}

@end
