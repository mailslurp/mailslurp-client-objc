# OAIExtractCodesResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**found** | **NSNumber*** | True if at least one code candidate was found | 
**code** | **NSString*** | Best candidate code when found | [optional] 
**methodUsed** | **NSString*** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | [optional] 
**candidates** | [**NSArray&lt;OAICodeCandidate&gt;***](OAICodeCandidate) | Ranked code candidates | 
**warnings** | **NSArray&lt;NSString*&gt;*** | Warnings or fallback notes explaining extraction behavior for debugging and QA. | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


