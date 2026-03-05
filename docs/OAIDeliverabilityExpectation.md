# OAIDeliverabilityExpectation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | Optional label for this expectation | [optional] 
**minCount** | **NSNumber*** | Minimum number of matching messages required for this expectation to pass | 
**from** | **NSString*** | Optional sender filter. Matching is case-insensitive contains against inbound sender/from values. | [optional] 
**to** | **NSString*** | Optional recipient filter. Matching is case-insensitive contains against recipient/to values. | [optional] 
**subject** | **NSString*** | Optional subject filter for INBOX scope tests. Ignored for PHONE scope tests. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


