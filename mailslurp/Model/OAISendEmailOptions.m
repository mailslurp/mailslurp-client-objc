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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"toContacts": @"toContacts", @"toGroup": @"toGroup", @"to": @"to", @"from": @"from", @"cc": @"cc", @"bcc": @"bcc", @"subject": @"subject", @"replyTo": @"replyTo", @"body": @"body", @"html": @"html", @"charset": @"charset", @"attachments": @"attachments", @"templateVariables": @"templateVariables", @"template": @"template", @"sendStrategy": @"sendStrategy", @"useInboxName": @"useInboxName", @"addTrackingPixel": @"addTrackingPixel" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"toContacts", @"toGroup", @"to", @"from", @"cc", @"bcc", @"subject", @"replyTo", @"body", @"html", @"charset", @"attachments", @"templateVariables", @"template", @"sendStrategy", @"useInboxName", @"addTrackingPixel"];
  return [optionalProperties containsObject:propertyName];
}

@end
