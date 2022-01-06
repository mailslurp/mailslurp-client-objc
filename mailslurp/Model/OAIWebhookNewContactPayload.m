#import "OAIWebhookNewContactPayload.h"

@implementation OAIWebhookNewContactPayload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"messageId": @"messageId", @"webhookId": @"webhookId", @"webhookName": @"webhookName", @"eventName": @"eventName", @"contactId": @"contactId", @"groupId": @"groupId", @"firstName": @"firstName", @"lastName": @"lastName", @"company": @"company", @"primaryEmailAddress": @"primaryEmailAddress", @"emailAddresses": @"emailAddresses", @"tags": @"tags", @"metaData": @"metaData", @"optOut": @"optOut", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"messageId", @"webhookId", @"webhookName", @"eventName", @"contactId", @"groupId", @"firstName", @"lastName", @"company", @"primaryEmailAddress", @"emailAddresses", @"tags", @"metaData", @"optOut", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
