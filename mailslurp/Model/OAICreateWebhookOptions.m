#import "OAICreateWebhookOptions.h"

@implementation OAICreateWebhookOptions

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.useStaticIpRange = @(NO);
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"url": @"url", @"basicAuth": @"basicAuth", @"name": @"name", @"eventName": @"eventName", @"includeHeaders": @"includeHeaders", @"requestBodyTemplate": @"requestBodyTemplate", @"aiTransformId": @"aiTransformId", @"useStaticIpRange": @"useStaticIpRange", @"ignoreInsecureSslCertificates": @"ignoreInsecureSslCertificates", @"tags": @"tags" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"basicAuth", @"name", @"eventName", @"includeHeaders", @"requestBodyTemplate", @"aiTransformId", @"useStaticIpRange", @"ignoreInsecureSslCertificates", @"tags"];
  return [optionalProperties containsObject:propertyName];
}

@end
