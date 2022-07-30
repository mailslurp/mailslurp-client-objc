# OAIWebhookNewEmailPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **NSString*** | ID of webhook entity being triggered | 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**inboxId** | **NSString*** | Id of the inbox that received an email | 
**domainId** | **NSString*** | Id of the domain that received an email | [optional] 
**emailId** | **NSString*** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | 
**createdAt** | **NSDate*** | Date time of event creation | 
**to** | **NSArray&lt;NSString*&gt;*** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | 
**from** | **NSString*** | Who the email was sent from. An email address - see fromName for the sender name. | 
**cc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | 
**bcc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | 
**subject** | **NSString*** | The subject line of the email message as specified by SMTP subject header | [optional] 
**attachmentMetaDatas** | [**NSArray&lt;OAIAttachmentMetaData&gt;***](OAIAttachmentMetaData) | List of attachment meta data objects if attachments present | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


