#import "OAICreateConnectorImapConnectionOptions.h"

@implementation OAICreateConnectorImapConnectionOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"imapSsl": @"imapSsl", @"imapUsername": @"imapUsername", @"imapPassword": @"imapPassword", @"selectFolder": @"selectFolder", @"searchTerms": @"searchTerms", @"imapPort": @"imapPort", @"imapHost": @"imapHost", @"enabled": @"enabled" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"imapSsl", @"imapUsername", @"imapPassword", @"selectFolder", @"searchTerms", @"imapPort", @"enabled"];
  return [optionalProperties containsObject:propertyName];
}

@end