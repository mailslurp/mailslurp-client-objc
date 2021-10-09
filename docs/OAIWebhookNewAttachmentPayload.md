# OAIWebhookNewAttachmentPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachmentId** | **NSString*** | ID of attachment. Use the &#x60;AttachmentController&#x60; to | [optional] 
**contentLength** | **NSNumber*** | Size of attachment in bytes | [optional] 
**contentType** | **NSString*** | Content type of attachment such as &#39;image/png&#39; or &#39;application/pdf | [optional] 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | [optional] 
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**name** | **NSString*** | Filename of the attachment if present | [optional] 
**webhookId** | **NSString*** | ID of webhook entity being triggered | [optional] 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


