#import "OAIExtractCodesOptions.h"

@implementation OAIExtractCodesOptions

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.allowFallback = @(YES);
    self.minLength = @4;
    self.maxLength = @10;
    self.maxCandidates = @5;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"method": @"method", @"allowFallback": @"allowFallback", @"minLength": @"minLength", @"maxLength": @"maxLength", @"maxCandidates": @"maxCandidates", @"customPatterns": @"customPatterns" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"method", @"allowFallback", @"minLength", @"maxLength", @"maxCandidates", @"customPatterns"];
  return [optionalProperties containsObject:propertyName];
}

@end
