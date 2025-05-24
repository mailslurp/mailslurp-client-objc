#import "OAISendEmailOptions.h"

@implementation OAISendEmailOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"toContacts": @"toContacts", @"toGroup": @"toGroup", @"to": @"to", @"from": @"from", @"fromName": @"fromName", @"cc": @"cc", @"bcc": @"bcc", @"subject": @"subject", @"replyTo": @"replyTo", @"customHeaders": @"customHeaders", @"body": @"body", @"html": @"html", @"isHTML": @"isHTML", @"charset": @"charset", @"attachments": @"attachments", @"templateVariables": @"templateVariables", @"template": @"template", @"sendStrategy": @"sendStrategy", @"useInboxName": @"useInboxName", @"addTrackingPixel": @"addTrackingPixel", @"filterBouncedRecipients": @"filterBouncedRecipients", @"validateEmailAddresses": @"validateEmailAddresses", @"ignoreEmptyRecipients": @"ignoreEmptyRecipients", @"isXAmpHtml": @"isXAmpHtml", @"bodyParts": @"bodyParts" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"toContacts", @"toGroup", @"to", @"from", @"fromName", @"cc", @"bcc", @"subject", @"replyTo", @"customHeaders", @"body", @"html", @"isHTML", @"charset", @"attachments", @"templateVariables", @"template", @"sendStrategy", @"useInboxName", @"addTrackingPixel", @"filterBouncedRecipients", @"validateEmailAddresses", @"ignoreEmptyRecipients", @"isXAmpHtml", @"bodyParts"];
  return [optionalProperties containsObject:propertyName];
}

@end
