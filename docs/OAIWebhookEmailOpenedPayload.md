# OAIWebhookEmailOpenedPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhookId** | **NSString*** | ID of webhook entity being triggered | [optional] 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | [optional] 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**inboxId** | **NSString*** | Id of the inbox that received an email | [optional] 
**pixelId** | **NSString*** | ID of the tracking pixel | [optional] 
**sentEmailId** | **NSString*** | ID of sent email | [optional] 
**recipient** | **NSString*** | Email address for the recipient of the tracking pixel | [optional] 
**createdAt** | **NSDate*** | Date time of event creation | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


