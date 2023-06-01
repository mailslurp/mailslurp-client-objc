#import "OAIInboxReplierDto.h"

@implementation OAIInboxReplierDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"inboxId": @"inboxId", @"name": @"name", @"field": @"field", @"match": @"match", @"replyTo": @"replyTo", @"subject": @"subject", @"from": @"from", @"charset": @"charset", @"isHTML": @"isHTML", @"templateId": @"templateId", @"templateVariables": @"templateVariables", @"ignoreReplyTo": @"ignoreReplyTo", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"replyTo", @"subject", @"from", @"charset", @"templateId", @"templateVariables", ];
  return [optionalProperties containsObject:propertyName];
}

@end
