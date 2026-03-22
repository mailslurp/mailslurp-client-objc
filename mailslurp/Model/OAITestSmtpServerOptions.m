#import "OAITestSmtpServerOptions.h"

@implementation OAITestSmtpServerOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"host": @"host", @"port": @"port", @"useStartTls": @"useStartTls", @"username": @"username", @"password": @"password", @"from": @"from", @"to": @"to", @"captchaToken": @"captchaToken" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"username", @"password", @"from", @"to", @"captchaToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
