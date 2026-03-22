# OAIEmailAuditAnalysisResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **NSString*** | Health status for a one-shot email audit | 
**healthScore** | **NSNumber*** |  | 
**totalChecks** | **NSNumber*** |  | 
**passingChecks** | **NSNumber*** |  | 
**failingChecks** | **NSNumber*** |  | 
**detectedLinks** | **NSNumber*** |  | 
**checkedLinks** | **NSNumber*** |  | 
**detectedImages** | **NSNumber*** |  | 
**checkedImages** | **NSNumber*** |  | 
**linkIssueCount** | **NSNumber*** |  | 
**imageIssueCount** | **NSNumber*** |  | 
**spellingIssueCount** | **NSNumber*** |  | 
**brokenLinks** | [**NSArray&lt;OAIEmailAuditUrlIssue&gt;***](OAIEmailAuditUrlIssue) |  | 
**brokenImages** | [**NSArray&lt;OAIEmailAuditUrlIssue&gt;***](OAIEmailAuditUrlIssue) |  | 
**spellingIssues** | [**NSArray&lt;OAIEmailAuditSpellingIssue&gt;***](OAIEmailAuditSpellingIssue) |  | 
**compatibilityWarningCount** | **NSNumber*** |  | 
**compatibilityNotSupportedCount** | **NSNumber*** |  | 
**compatibilityUnknownCount** | **NSNumber*** |  | 
**featureSupport** | [**OAIEmailFeatureSupportResult***](OAIEmailFeatureSupportResult) |  | [optional] 
**htmlErrorCount** | **NSNumber*** |  | 
**htmlWarningCount** | **NSNumber*** |  | 
**htmlInfoCount** | **NSNumber*** |  | 
**htmlValidation** | [**OAIHTMLValidationResult***](OAIHTMLValidationResult) |  | [optional] 
**reputationFailureCount** | **NSNumber*** |  | 
**attachmentMentionIssueCount** | **NSNumber*** |  | 
**externalCheckSkippedCount** | **NSNumber*** |  | 
**insights** | **NSArray&lt;NSString*&gt;*** |  | 
**errorMessage** | **NSString*** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


