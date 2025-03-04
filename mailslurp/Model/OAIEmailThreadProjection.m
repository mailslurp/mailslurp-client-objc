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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"subject": @"subject", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"unread": @"unread", @"sender": @"sender", @"recipients": @"recipients", @"userId": @"userId", @"inboxId": @"inboxId", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"hasAttachments": @"hasAttachments", @"messageCount": @"messageCount", @"lastBodyExcerpt": @"lastBodyExcerpt", @"lastTextExcerpt": @"lastTextExcerpt", @"lastCreatedAt": @"lastCreatedAt", @"lastFrom": @"lastFrom", @"lastSender": @"lastSender", @"_id": @"id", @"from": @"from" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subject", @"sender", @"recipients", @"inboxId", @"cc", @"bcc", @"lastBodyExcerpt", @"lastTextExcerpt", @"lastCreatedAt", @"lastFrom", @"lastSender", @"from"];
  return [optionalProperties containsObject:propertyName];
}

@end
