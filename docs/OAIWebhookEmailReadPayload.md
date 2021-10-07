# OAIWebhookEmailReadPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | **NSDate*** | Date time of event creation | [optional] 
**emailId** | **NSString*** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | [optional] 
**emailIsRead** | **NSNumber*** | Is the email read | [optional] 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | [optional] 
**inboxId** | **NSString*** | Id of the inbox that received an email | [optional] 
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhookId** | **NSString*** | ID of webhook entity being triggered | [optional] 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


