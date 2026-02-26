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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"subject": @"subject", @"userId": @"userId", @"inboxId": @"inboxId", @"sender": @"sender", @"recipients": @"recipients", @"updatedAt": @"updatedAt", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"hasAttachments": @"hasAttachments", @"lastCreatedAt": @"lastCreatedAt", @"lastFrom": @"lastFrom", @"lastSender": @"lastSender", @"unread": @"unread", @"messageCount": @"messageCount", @"lastBodyExcerpt": @"lastBodyExcerpt", @"lastTextExcerpt": @"lastTextExcerpt", @"_id": @"id", @"from": @"from" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subject", @"inboxId", @"sender", @"recipients", @"cc", @"bcc", @"lastCreatedAt", @"lastFrom", @"lastSender", @"lastBodyExcerpt", @"lastTextExcerpt", @"from"];
  return [optionalProperties containsObject:propertyName];
}

@end
