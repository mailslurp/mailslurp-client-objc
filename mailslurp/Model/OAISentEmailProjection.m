#import "OAISentEmailProjection.h"

@implementation OAISentEmailProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"subject": @"subject", @"_id": @"id", @"userId": @"userId", @"inboxId": @"inboxId", @"attachments": @"attachments", @"from": @"from", @"sender": @"sender", @"recipients": @"recipients", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"messageId": @"messageId", @"inReplyTo": @"inReplyTo", @"virtualSend": @"virtualSend", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"bodyMD5Hash": @"bodyMD5Hash", @"threadId": @"threadId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subject", @"attachments", @"from", @"sender", @"recipients", @"to", @"cc", @"bcc", @"messageId", @"inReplyTo", @"bodyExcerpt", @"textExcerpt", @"bodyMD5Hash", @"threadId"];
  return [optionalProperties containsObject:propertyName];
}

@end
