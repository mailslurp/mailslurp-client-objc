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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"addTrackingPixel": @"addTrackingPixel", @"attachments": @"attachments", @"bcc": @"bcc", @"body": @"body", @"cc": @"cc", @"charset": @"charset", @"from": @"from", @"html": @"html", @"isHTML": @"isHTML", @"replyTo": @"replyTo", @"sendStrategy": @"sendStrategy", @"subject": @"subject", @"template": @"template", @"templateVariables": @"templateVariables", @"to": @"to", @"toContacts": @"toContacts", @"toGroup": @"toGroup", @"useInboxName": @"useInboxName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addTrackingPixel", @"attachments", @"bcc", @"body", @"cc", @"charset", @"from", @"html", @"isHTML", @"replyTo", @"sendStrategy", @"subject", @"template", @"templateVariables", @"to", @"toContacts", @"toGroup", @"useInboxName"];
  return [optionalProperties containsObject:propertyName];
}

@end
