#import "OAIEmailAuditComparisonDto.h"

@implementation OAIEmailAuditComparisonDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"baseline": @"baseline", @"current": @"current", @"healthScoreDelta": @"healthScoreDelta", @"statusChanged": @"statusChanged", @"brokenLinkDelta": @"brokenLinkDelta", @"brokenImageDelta": @"brokenImageDelta", @"spellingIssueDelta": @"spellingIssueDelta", @"htmlErrorDelta": @"htmlErrorDelta", @"htmlWarningDelta": @"htmlWarningDelta", @"compatibilityWarningDelta": @"compatibilityWarningDelta", @"compatibilityNotSupportedDelta": @"compatibilityNotSupportedDelta", @"reputationFailureDelta": @"reputationFailureDelta", @"attachmentMentionIssueDelta": @"attachmentMentionIssueDelta", @"addedInsights": @"addedInsights", @"removedInsights": @"removedInsights" }];
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
