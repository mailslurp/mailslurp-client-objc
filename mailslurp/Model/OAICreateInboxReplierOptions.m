#import "OAICreateInboxReplierOptions.h"

@implementation OAICreateInboxReplierOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"inboxId": @"inboxId", @"name": @"name", @"field": @"field", @"match": @"match", @"replyTo": @"replyTo", @"subject": @"subject", @"from": @"from", @"charset": @"charset", @"ignoreReplyTo": @"ignoreReplyTo", @"isHTML": @"isHTML", @"body": @"body", @"templateId": @"templateId", @"templateVariables": @"templateVariables" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inboxId", @"name", @"replyTo", @"subject", @"from", @"charset", @"ignoreReplyTo", @"isHTML", @"body", @"templateId", @"templateVariables"];
  return [optionalProperties containsObject:propertyName];
}

@end
