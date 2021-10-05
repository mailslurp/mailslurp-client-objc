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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"company": @"company", @"contactId": @"contactId", @"createdAt": @"createdAt", @"emailAddresses": @"emailAddresses", @"eventName": @"eventName", @"firstName": @"firstName", @"groupId": @"groupId", @"lastName": @"lastName", @"messageId": @"messageId", @"metaData": @"metaData", @"optOut": @"optOut", @"primaryEmailAddress": @"primaryEmailAddress", @"tags": @"tags", @"webhookId": @"webhookId", @"webhookName": @"webhookName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"eventName", @"firstName", @"groupId", @"lastName", @"messageId", @"metaData", @"optOut", @"primaryEmailAddress", @"webhookId", @"webhookName"];
  return [optionalProperties containsObject:propertyName];
}

@end
