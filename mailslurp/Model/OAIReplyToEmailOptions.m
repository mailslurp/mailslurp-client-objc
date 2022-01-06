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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"body": @"body", @"isHTML": @"isHTML", @"from": @"from", @"replyTo": @"replyTo", @"charset": @"charset", @"attachments": @"attachments", @"templateVariables": @"templateVariables", @"template": @"template", @"sendStrategy": @"sendStrategy", @"useInboxName": @"useInboxName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"from", @"replyTo", @"charset", @"attachments", @"templateVariables", @"template", @"sendStrategy", @"useInboxName"];
  return [optionalProperties containsObject:propertyName];
}

@end
