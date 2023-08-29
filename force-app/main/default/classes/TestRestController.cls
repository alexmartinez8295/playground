public class TestRestController { 
    public String getResult() { 
        Map<String, String> result = MyRestResource.getResource(); 
 
        return result.get('key1') + ' ' + result.get('key2'); 
    } 
}