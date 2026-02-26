# OAIWebhookNewAITransformResultPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **NSString*** | ID of webhook entity being triggered | 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**aiTransformResultId** | **NSString*** | AI Transform ID of event | 
**userId** | **NSString*** | User ID of event | 
**aiTransformId** | **NSString*** | ID of AI Transform | 
**aiTransformMappingId** | **NSString*** | ID of AI Transform mapping | [optional] 
**entityId** | **NSString*** | ID of entity that triggered the transformation | [optional] 
**entityType** | **NSString*** | Entity type that triggered the transformation | [optional] 
**result** | **NSString*** | JSON string result of the AI transformation | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


