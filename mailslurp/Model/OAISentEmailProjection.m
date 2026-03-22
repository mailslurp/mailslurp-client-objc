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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"threadId": @"threadId", @"from": @"from", @"subject": @"subject", @"sender": @"sender", @"recipients": @"recipients", @"userId": @"userId", @"inboxId": @"inboxId", @"attachments": @"attachments", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"messageId": @"messageId", @"inReplyTo": @"inReplyTo", @"virtualSend": @"virtualSend", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"bodyMD5Hash": @"bodyMD5Hash" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"threadId", @"from", @"subject", @"sender", @"recipients", @"attachments", @"to", @"cc", @"bcc", @"messageId", @"inReplyTo", @"bodyExcerpt", @"textExcerpt", @"bodyMD5Hash"];
  return [optionalProperties containsObject:propertyName];
}

@end
