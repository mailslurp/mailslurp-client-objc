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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"subject": @"subject", @"from": @"from", @"sender": @"sender", @"recipients": @"recipients", @"attachments": @"attachments", @"inboxId": @"inboxId", @"userId": @"userId", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"messageId": @"messageId", @"inReplyTo": @"inReplyTo", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"bodyMD5Hash": @"bodyMD5Hash", @"virtualSend": @"virtualSend", @"threadId": @"threadId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subject", @"from", @"sender", @"recipients", @"attachments", @"messageId", @"inReplyTo", @"bodyExcerpt", @"textExcerpt", @"bodyMD5Hash", @"threadId"];
  return [optionalProperties containsObject:propertyName];
}

@end
