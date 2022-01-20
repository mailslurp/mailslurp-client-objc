# OAIWebhookDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | ID of the Webhook | 
**userId** | **NSString*** | User ID of the Webhook | 
**basicAuth** | **NSNumber*** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | 
**name** | **NSString*** | Name of the webhook | [optional] 
**inboxId** | **NSString*** | The inbox that the Webhook will be triggered by | 
**url** | **NSString*** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | 
**method** | **NSString*** | HTTP method that your server endpoint must listen for | 
**payloadJsonSchema** | **NSString*** | Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method | 
**createdAt** | **NSDate*** | When the webhook was created | 
**updatedAt** | **NSDate*** |  | 
**eventName** | **NSString*** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


