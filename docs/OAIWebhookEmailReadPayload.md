# OAIWebhookEmailReadPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **NSString*** | ID of webhook entity being triggered | 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**emailId** | **NSString*** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | 
**inboxId** | **NSString*** | Id of the inbox | 
**emailIsRead** | **NSNumber*** | Is the email read | 
**createdAt** | **NSDate*** | Date time of event creation | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


