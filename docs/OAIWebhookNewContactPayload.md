# OAIWebhookNewContactPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **NSString*** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **NSString*** | ID of webhook entity being triggered | 
**webhookName** | **NSString*** | Name of the webhook being triggered | [optional] 
**eventName** | **NSString*** | Name of the event type webhook is being triggered for. | 
**contactId** | **NSString*** | Contact ID | 
**groupId** | **NSString*** | Contact group ID | [optional] 
**firstName** | **NSString*** | Contact first name | [optional] 
**lastName** | **NSString*** | Contact last name | [optional] 
**company** | **NSString*** | Contact company name | [optional] 
**primaryEmailAddress** | **NSString*** | Primary email address for contact | [optional] 
**emailAddresses** | **NSArray&lt;NSString*&gt;*** | Email addresses for contact | 
**tags** | **NSArray&lt;NSString*&gt;*** | Tags for contact | 
**metaData** | [**NSObject***]() |  | [optional] 
**optOut** | **NSNumber*** | Has contact opted out of emails | 
**createdAt** | **NSDate*** | Date time of event creation | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


