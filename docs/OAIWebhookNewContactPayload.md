# OAIWebhookNewContactPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **NSString*** | ID of webhook entity being triggered | 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | 
**contactId** | **NSString*** |  | 
**groupId** | **NSString*** |  | [optional] 
**firstName** | **NSString*** |  | [optional] 
**lastName** | **NSString*** |  | [optional] 
**company** | **NSString*** |  | [optional] 
**primaryEmailAddress** | **NSString*** |  | [optional] 
**emailAddresses** | **NSArray&lt;NSString*&gt;*** |  | 
**tags** | **NSArray&lt;NSString*&gt;*** |  | 
**metaData** | [**NSObject***]() |  | [optional] 
**optOut** | **NSNumber*** |  | [optional] 
**createdAt** | **NSDate*** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


