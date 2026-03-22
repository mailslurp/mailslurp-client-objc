#import "OAISmtpTlsDiagnosticResult.h"

@implementation OAISmtpTlsDiagnosticResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"supported": @"supported", @"negotiated": @"negotiated", @"_protocol": @"protocol", @"cipher": @"cipher" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_protocol", @"cipher"];
  return [optionalProperties containsObject:propertyName];
}

@end
