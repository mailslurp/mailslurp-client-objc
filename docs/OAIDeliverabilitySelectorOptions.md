# OAIDeliverabilitySelectorOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **NSString*** | Selection mode | 
**pattern** | **NSString*** | Wildcard pattern for PATTERN selection. Supports &#39;*&#39; and &#39;?&#39; wildcards. If no wildcard is present the value is treated as a case-insensitive contains match. | [optional] 
**phoneCountry** | **NSString*** | Optional phone-country filter for PHONE scope selection (e.g. ALL phones in US). Must be null for INBOX scope. | [optional] 
**entityIds** | **NSArray&lt;NSString*&gt;*** | Explicit entity IDs for EXPLICIT selection | [optional] 
**excludeEntityIds** | **NSArray&lt;NSString*&gt;*** | Optional entity IDs to exclude from the resolved selection (applies after ALL/PATTERN/EXPLICIT selection). | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


