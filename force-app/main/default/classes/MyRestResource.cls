@RestResource(urlMapping='/MyResource/')
global with sharing class MyRestResource { 
    @HttpGet
    global static Map<String,String> getResource() {
        Map<String,String> result = new Map<String,String>();
 
        result.put('key1', 'value1');
        result.put('key2', 'value2');
 
        return result;
    }
}