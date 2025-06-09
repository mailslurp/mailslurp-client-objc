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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sender": @"sender", @"recipients": @"recipients", @"inboxId": @"inboxId", @"userId": @"userId", @"updatedAt": @"updatedAt", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"hasAttachments": @"hasAttachments", @"unread": @"unread", @"messageCount": @"messageCount", @"lastBodyExcerpt": @"lastBodyExcerpt", @"lastTextExcerpt": @"lastTextExcerpt", @"lastCreatedAt": @"lastCreatedAt", @"lastFrom": @"lastFrom", @"lastSender": @"lastSender", @"subject": @"subject", @"_id": @"id", @"from": @"from" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sender", @"recipients", @"inboxId", @"cc", @"bcc", @"lastBodyExcerpt", @"lastTextExcerpt", @"lastCreatedAt", @"lastFrom", @"lastSender", @"subject", @"from"];
  return [optionalProperties containsObject:propertyName];
}

@end
