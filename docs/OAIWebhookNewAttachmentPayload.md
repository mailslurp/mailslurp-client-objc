# OAIWebhookNewAttachmentPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **NSString*** | ID of webhook entity being triggered | 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | 
**attachmentId** | **NSString*** | ID of attachment. Use the &#x60;AttachmentController&#x60; to | 
**name** | **NSString*** | Filename of the attachment if present | 
**contentType** | **NSString*** | Content type of attachment such as &#39;image/png&#39; or &#39;application/pdf | 
**contentLength** | **NSNumber*** | Size of attachment in bytes | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


