# OAIStructuredOutputSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**anyOf** | [**NSArray&lt;OAIStructuredOutputSchema&gt;***](OAIStructuredOutputSchema) |  | [optional] 
**_default** | [**NSObject***]() |  | [optional] 
**_description** | **NSString*** | Provide a description of the schema to help the AI understand the schema. | [optional] 
**enumValues** | **NSArray&lt;NSString*&gt;*** | When using type string and format enum pass a collection of enum values here. | [optional] 
**example** | [**NSObject***]() |  | [optional] 
**format** | **NSString*** | Format for string types. Can be null, date-time or enum. | [optional] 
**items** | [**OAIStructuredOutputSchema***](OAIStructuredOutputSchema) |  | [optional] 
**maxItems** | **NSNumber*** |  | [optional] 
**minItems** | **NSNumber*** |  | [optional] 
**maxLength** | **NSNumber*** |  | [optional] 
**minLength** | **NSNumber*** |  | [optional] 
**pattern** | **NSString*** | Regex pattern for STRING type | [optional] 
**properties** | [**NSDictionary&lt;OAIStructuredOutputSchema&gt;***](OAIStructuredOutputSchema) | Properties of an OBJECT schema. These are key value pairs where the key is the property name and the value is the schema for that property. | [optional] 
**propertyOrdering** | **NSArray&lt;NSString*&gt;*** | Pass an array of property names to specify the order of properties in the generated JSON object if required. | [optional] 
**required** | **NSArray&lt;NSString*&gt;*** | Is field required | [optional] 
**maxProperties** | **NSNumber*** |  | [optional] 
**minProperties** | **NSNumber*** |  | [optional] 
**maximum** | **NSNumber*** |  | [optional] 
**minimum** | **NSNumber*** |  | [optional] 
**nullable** | **NSNumber*** |  | [optional] 
**title** | **NSString*** |  | [optional] 
**type** | **NSString*** | Primitive JSON schema types with a fallback CUSTOM for unknown values. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


