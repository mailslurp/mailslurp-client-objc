# OAICreateDeliverabilitySimulationJobOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**senderInboxId** | **NSString*** | Sender inbox ID for INBOX scope tests | [optional] 
**senderPhoneId** | **NSString*** | Sender phone ID for PHONE scope tests | [optional] 
**email** | [**OAIDeliverabilitySimulationEmailOptions***](OAIDeliverabilitySimulationEmailOptions) |  | [optional] 
**sms** | [**OAIDeliverabilitySimulationSmsOptions***](OAIDeliverabilitySimulationSmsOptions) |  | [optional] 
**delayMs** | **NSNumber*** | Delay between individual sends in milliseconds | [optional] 
**batchSize** | **NSNumber*** | Maximum sends processed per scheduler batch | [optional] 
**sendsPerTarget** | **NSNumber*** | Optional fixed sends per target. If omitted this is derived from test expectations. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


