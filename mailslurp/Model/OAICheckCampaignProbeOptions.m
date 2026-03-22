#import "OAICheckCampaignProbeOptions.h"

@implementation OAICheckCampaignProbeOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"fromAddress": @"fromAddress", @"subject": @"subject", @"recipient": @"recipient", @"messageId": @"messageId", @"htmlBody": @"htmlBody", @"textBody": @"textBody", @"captchaToken": @"captchaToken" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fromAddress", @"subject", @"recipient", @"messageId", @"htmlBody", @"textBody", @"captchaToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
