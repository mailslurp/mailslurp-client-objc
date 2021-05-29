#import "OAIReplyToAliasEmailOptions.h"

@implementation OAIReplyToAliasEmailOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachments": @"attachments", @"body": @"body", @"charset": @"charset", @"isHTML": @"isHTML", @"sendStrategy": @"sendStrategy", @"template": @"template", @"templateVariables": @"templateVariables", @"useInboxName": @"useInboxName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachments", @"body", @"charset", @"isHTML", @"sendStrategy", @"template", @"templateVariables", @"useInboxName"];
  return [optionalProperties containsObject:propertyName];
}

@end
