#import "OAIDevicePreviewRunDto.h"

@implementation OAIDevicePreviewRunDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"runId": @"runId", @"emailId": @"emailId", @"status": @"status", @"primaryScreenshotId": @"primaryScreenshotId", @"requestedProviders": @"requestedProviders", @"importedProviders": @"importedProviders", @"warnings": @"warnings", @"providerMessageIds": @"providerMessageIds", @"targetCount": @"targetCount", @"screenshotCount": @"screenshotCount", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"primaryScreenshotId", @"requestedProviders", @"importedProviders", @"warnings", @"providerMessageIds", ];
  return [optionalProperties containsObject:propertyName];
}

@end
