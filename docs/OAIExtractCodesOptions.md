# OAIExtractCodesOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **NSString*** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | [optional] 
**allowFallback** | **NSNumber*** | Allow fallback to deterministic pattern extraction when the selected method is unavailable. | [optional] [default to @(YES)]
**minLength** | **NSNumber*** | Minimum code length to consider. Typical OTP values are between 4 and 8 characters. | [optional] [default to @4]
**maxLength** | **NSNumber*** | Maximum code length to consider. | [optional] [default to @10]
**maxCandidates** | **NSNumber*** | Maximum number of code candidates to return. Best candidate is also returned separately. | [optional] [default to @5]
**customPatterns** | **NSArray&lt;NSString*&gt;*** | Optional custom regex patterns for code extraction. Each pattern should have either one capture group for the code or match the full code directly. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


