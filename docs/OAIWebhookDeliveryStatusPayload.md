# OAIWebhookDeliveryStatusPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **NSString*** | ID of webhook entity being triggered | 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**_id** | **NSString*** | ID of delivery status | 
**userId** | **NSString*** | User ID of event | 
**sentId** | **NSString*** | ID of sent email | [optional] 
**remoteMtaIp** | **NSString*** | IP address of the remote Mail Transfer Agent | [optional] 
**inboxId** | **NSString*** | Id of the inbox | [optional] 
**reportingMta** | **NSString*** | Mail Transfer Agent reporting delivery status | [optional] 
**recipients** | **NSArray&lt;NSString*&gt;*** | Recipients for delivery | [optional] 
**smtpResponse** | **NSString*** | SMTP server response message | [optional] 
**smtpStatusCode** | **NSNumber*** | SMTP server status | [optional] 
**processingTimeMillis** | **NSNumber*** | Time in milliseconds for delivery processing | [optional] 
**received** | **NSDate*** | Time event was received | [optional] 
**subject** | **NSString*** | Email subject | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


