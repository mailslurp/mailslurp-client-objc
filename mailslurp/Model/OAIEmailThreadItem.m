#import "OAIEmailThreadItem.h"

@implementation OAIEmailThreadItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"itemType": @"itemType", @"entityId": @"entityId", @"bodyExcerpt": @"bodyExcerpt", @"textExcerpt": @"textExcerpt", @"subject": @"subject", @"to": @"to", @"from": @"from", @"bcc": @"bcc", @"cc": @"cc", @"attachments": @"attachments", @"createdAt": @"createdAt", @"read": @"read", @"inReplyTo": @"inReplyTo", @"messageId": @"messageId", @"threadId": @"threadId", @"sender": @"sender", @"recipients": @"recipients" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bodyExcerpt", @"textExcerpt", @"subject", @"from", @"bcc", @"cc", @"attachments", @"inReplyTo", @"messageId", @"threadId", @"sender", @"recipients"];
  return [optionalProperties containsObject:propertyName];
}

@end
