#import "OAICreateDevicePreviewFeedbackOptions.h"

@implementation OAICreateDevicePreviewFeedbackOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"source": @"source", @"category": @"category", @"status": @"status", @"rating": @"rating", @"runId": @"runId", @"targetId": @"targetId", @"screenshotId": @"screenshotId", @"provider": @"provider", @"title": @"title", @"comment": @"comment", @"internalNote": @"internalNote", @"sessionId": @"sessionId", @"liveViewUrl": @"liveViewUrl", @"metadata": @"metadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"status", @"rating", @"runId", @"targetId", @"screenshotId", @"provider", @"title", @"comment", @"internalNote", @"sessionId", @"liveViewUrl", @"metadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
