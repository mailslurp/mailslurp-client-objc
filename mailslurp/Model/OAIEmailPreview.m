#import "OAIEmailPreview.h"

@implementation OAIEmailPreview

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"inboxId": @"inboxId", @"domainId": @"domainId", @"subject": @"subject", @"to": @"to", @"from": @"from", @"bcc": @"bcc", @"cc": @"cc", @"createdAt": @"createdAt", @"read": @"read", @"attachments": @"attachments", @"threadId": @"threadId", @"messageId": @"messageId", @"inReplyTo": @"inReplyTo", @"sender": @"sender", @"recipients": @"recipients", @"favourite": @"favourite", @"bodyPartContentTypes": @"bodyPartContentTypes", @"plusAddress": @"plusAddress", @"sizeBytes": @"sizeBytes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inboxId", @"domainId", @"subject", @"from", @"bcc", @"cc", @"attachments", @"threadId", @"messageId", @"inReplyTo", @"sender", @"recipients", @"favourite", @"bodyPartContentTypes", @"plusAddress", @"sizeBytes"];
  return [optionalProperties containsObject:propertyName];
}

@end
