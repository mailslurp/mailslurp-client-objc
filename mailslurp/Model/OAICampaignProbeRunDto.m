#import "OAICampaignProbeRunDto.h"

@implementation OAICampaignProbeRunDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"probeId": @"probeId", @"userId": @"userId", @"status": @"status", @"source": @"source", @"healthScore": @"healthScore", @"totalChecks": @"totalChecks", @"passingChecks": @"passingChecks", @"failingChecks": @"failingChecks", @"checkedLinks": @"checkedLinks", @"checkedImages": @"checkedImages", @"linkIssueCount": @"linkIssueCount", @"imageIssueCount": @"imageIssueCount", @"compatibilityWarningCount": @"compatibilityWarningCount", @"compatibilityNotSupportedCount": @"compatibilityNotSupportedCount", @"compatibilityUnknownCount": @"compatibilityUnknownCount", @"htmlErrorCount": @"htmlErrorCount", @"htmlWarningCount": @"htmlWarningCount", @"htmlInfoCount": @"htmlInfoCount", @"reputationFailureCount": @"reputationFailureCount", @"attachmentMentionIssueCount": @"attachmentMentionIssueCount", @"insights": @"insights", @"errorMessage": @"errorMessage", @"fromAddress": @"fromAddress", @"recipient": @"recipient", @"subject": @"subject", @"messageId": @"messageId", @"sourceMessageId": @"sourceMessageId", @"processingMs": @"processingMs", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"errorMessage", @"fromAddress", @"recipient", @"subject", @"messageId", @"sourceMessageId", @"processingMs", ];
  return [optionalProperties containsObject:propertyName];
}

@end
