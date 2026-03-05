#import "OAICreateDevicePreviewOptions.h"

@implementation OAICreateDevicePreviewOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"providers": @"providers", @"includeAllConfiguredProviders": @"includeAllConfiguredProviders" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"providers", @"includeAllConfiguredProviders"];
  return [optionalProperties containsObject:propertyName];
}

@end
