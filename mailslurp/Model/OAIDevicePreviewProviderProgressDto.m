#import "OAIDevicePreviewProviderProgressDto.h"

@implementation OAIDevicePreviewProviderProgressDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"run": @"run", @"provider": @"provider", @"status": @"status", @"targetCount": @"targetCount", @"readyCount": @"readyCount", @"failedCount": @"failedCount", @"capturingCount": @"capturingCount", @"pendingCount": @"pendingCount", @"targets": @"targets", @"screenshots": @"screenshots" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
