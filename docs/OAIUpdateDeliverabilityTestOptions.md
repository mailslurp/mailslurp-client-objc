# OAIUpdateDeliverabilityTestOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | Optional updated name | [optional] 
**_description** | **NSString*** | Optional updated description | [optional] 
**startAt** | **NSDate*** | Optional updated receive-window start time. Only applied while test is not terminal. | [optional] 
**maxDurationSeconds** | **NSNumber*** | Optional updated timeout in seconds | [optional] 
**clearMaxDuration** | **NSNumber*** | Set true to clear timeout. If true, maxDurationSeconds is ignored for this request. | [optional] 
**successThresholdPercent** | **NSNumber*** | Optional updated acceptable success threshold percentage (0,100]. | [optional] 
**clearSuccessThreshold** | **NSNumber*** | Set true to clear success threshold. If true, successThresholdPercent is ignored for this request. | [optional] 
**expectations** | [**NSArray&lt;OAIDeliverabilityExpectation&gt;***](OAIDeliverabilityExpectation) | Optional replacement expectations | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


