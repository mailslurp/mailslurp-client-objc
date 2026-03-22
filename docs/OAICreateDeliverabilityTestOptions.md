# OAICreateDeliverabilityTestOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | Optional name for the test | [optional] 
**_description** | **NSString*** | Optional description | [optional] 
**scope** | **NSString*** | Entity scope to evaluate | 
**startAt** | **NSDate*** | UTC instant when the receive window starts. Defaults to now if omitted. | [optional] 
**maxDurationSeconds** | **NSNumber*** | Optional timeout in seconds after startAt. If not all entities match before timeout the test transitions to FAILED. | [optional] 
**successThresholdPercent** | **NSNumber*** | Optional acceptable success threshold percentage (0,100]. If set, a timed-out test can complete successfully when matchedEntities/totalEntities reaches this percentage. | [optional] 
**selector** | [**OAIDeliverabilitySelectorOptions***](OAIDeliverabilitySelectorOptions) |  | 
**expectations** | [**NSArray&lt;OAIDeliverabilityExpectation&gt;***](OAIDeliverabilityExpectation) | One or more expectations to evaluate for each entity | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


