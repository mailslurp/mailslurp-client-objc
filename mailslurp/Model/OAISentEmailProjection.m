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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"subject": @"subject", @"_id": @"id", @"threadId": @"threadId", @"inReplyTo": @"inReplyTo", @"from": @"from", @"sender": @"sender", @"recipients": @"recipients", @"attachments": @"attachments", @"inboxId": @"inboxId", @"userId": @"userId", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"messageId": @"messageId", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"bodyMD5Hash": @"bodyMD5Hash", @"virtualSend": @"virtualSend" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subject", @"threadId", @"inReplyTo", @"from", @"sender", @"recipients", @"attachments", @"messageId", @"bodyExcerpt", @"textExcerpt", @"bodyMD5Hash", ];
  return [optionalProperties containsObject:propertyName];
}

@end
