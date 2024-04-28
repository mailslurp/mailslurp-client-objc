# OAIWebhookNewSmsPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **NSString*** | ID of webhook entity being triggered | 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**smsId** | **NSString*** | ID of SMS message | 
**userId** | **NSString*** | User ID of event | 
**phoneNumber** | **NSString*** | ID of phone number receiving SMS | 
**toNumber** | **NSString*** | Recipient phone number | 
**fromNumber** | **NSString*** | Sender phone number | 
**body** | **NSString*** | SMS message body | 
**read** | **NSNumber*** | SMS has been read | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


