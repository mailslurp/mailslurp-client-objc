#import "OAIReplyToEmailOptions.h"

@implementation OAIReplyToEmailOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachments": @"attachments", @"body": @"body", @"charset": @"charset", @"from": @"from", @"isHTML": @"isHTML", @"replyTo": @"replyTo", @"sendStrategy": @"sendStrategy", @"template": @"template", @"templateVariables": @"templateVariables", @"useInboxName": @"useInboxName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachments", @"body", @"charset", @"from", @"isHTML", @"replyTo", @"sendStrategy", @"template", @"templateVariables", @"useInboxName"];
  return [optionalProperties containsObject:propertyName];
}

@end
