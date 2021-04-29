# OAIWebhookPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachmentMetaDatas** | [**NSArray&lt;OAIAttachmentMetaData&gt;***](OAIAttachmentMetaData) | List of attachment meta data objects if attachments present | [optional] 
**bcc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**cc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**createdAt** | **NSDate*** | Date time of event creation | [optional] 
**emailId** | **NSString*** | ID of the email that was received. Use this ID for fetching the email | [optional] 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for | [optional] 
**from** | **NSString*** | Who the email was sent from | [optional] 
**_id** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**inboxId** | **NSString*** | Id of the inbox that receive an email | [optional] 
**subject** | **NSString*** | The subject line of the email message | [optional] 
**to** | **NSArray&lt;NSString*&gt;*** | List of &#x60;To&#x60; recipients email was addressed to | [optional] 
**webhookId** | **NSString*** | ID of webhook entity being triggered | [optional] 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


