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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachments": @"attachments", @"bcc": @"bcc", @"body": @"body", @"cc": @"cc", @"charset": @"charset", @"from": @"from", @"isHTML": @"isHTML", @"replyTo": @"replyTo", @"sendStrategy": @"sendStrategy", @"subject": @"subject", @"template": @"template", @"templateVariables": @"templateVariables", @"to": @"to", @"toContacts": @"toContacts", @"toGroup": @"toGroup" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachments", @"bcc", @"body", @"cc", @"charset", @"from", @"isHTML", @"replyTo", @"sendStrategy", @"subject", @"template", @"templateVariables", @"to", @"toContacts", @"toGroup"];
  return [optionalProperties containsObject:propertyName];
}

@end
