#import "OAIEmailThreadProjection.h"

@implementation OAIEmailThreadProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"from": @"from", @"subject": @"subject", @"sender": @"sender", @"recipients": @"recipients", @"userId": @"userId", @"inboxId": @"inboxId", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"updatedAt": @"updatedAt", @"hasAttachments": @"hasAttachments", @"unread": @"unread", @"messageCount": @"messageCount", @"lastBodyExcerpt": @"lastBodyExcerpt", @"lastTextExcerpt": @"lastTextExcerpt", @"lastCreatedAt": @"lastCreatedAt", @"lastFrom": @"lastFrom", @"lastSender": @"lastSender" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"from", @"subject", @"sender", @"recipients", @"inboxId", @"cc", @"bcc", @"lastBodyExcerpt", @"lastTextExcerpt", @"lastCreatedAt", @"lastFrom", @"lastSender"];
  return [optionalProperties containsObject:propertyName];
}

@end
