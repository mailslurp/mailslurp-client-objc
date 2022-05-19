# OAIWebhookBouncePayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **NSString*** | ID of webhook entity being triggered | 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**bounceId** | **NSString*** | ID of the bounce email record. Use the ID with the bounce controller to view more information | 
**sentToRecipients** | **NSArray&lt;NSString*&gt;*** |  | [optional] 
**sender** | **NSString*** |  | 
**bounceRecipients** | **NSArray&lt;NSString*&gt;*** | Email addresses that resulted in a bounce or email being rejected. Please save these recipients and avoid emailing them in the future to maintain your reputation. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


