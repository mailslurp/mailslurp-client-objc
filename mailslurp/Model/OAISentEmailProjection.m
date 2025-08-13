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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"threadId": @"threadId", @"inReplyTo": @"inReplyTo", @"from": @"from", @"sender": @"sender", @"recipients": @"recipients", @"subject": @"subject", @"userId": @"userId", @"attachments": @"attachments", @"inboxId": @"inboxId", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"messageId": @"messageId", @"virtualSend": @"virtualSend", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"bodyMD5Hash": @"bodyMD5Hash" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"threadId", @"inReplyTo", @"from", @"sender", @"recipients", @"subject", @"attachments", @"to", @"cc", @"bcc", @"messageId", @"bodyExcerpt", @"textExcerpt", @"bodyMD5Hash"];
  return [optionalProperties containsObject:propertyName];
}

@end
