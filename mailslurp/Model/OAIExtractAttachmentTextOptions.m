#import "OAIExtractAttachmentTextOptions.h"

@implementation OAIExtractAttachmentTextOptions

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.allowFallback = @(YES);
    self.maxBytes = @1048576;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"method": @"method", @"allowFallback": @"allowFallback", @"maxBytes": @"maxBytes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"method", @"allowFallback", @"maxBytes"];
  return [optionalProperties containsObject:propertyName];
}

@end
