public class API_Google_Drive {
    
    public static void getAccessToken() {
        //API KEY: AIzaSyDTM1KAs0xjR6eATbTk64l4dENxUz74bk0
        //Cliente Id: 690090398356-lqdu2tfekh37gf7q49f15gnnp0h0m098.apps.googleusercontent.com
        //Cliente Secret: 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
        //Proyecto Code: 690090398356
        //Redirect Uri: https://playful-bear-js6jxo-dev-ed.my.salesforce.com/services/authcallback/IntegracionSF
        
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        req.setEndpoint('https://accounts.google.com/o/oauth2/token');
        req.setMethod('POST');
        
        req.setHeader('ContentType','application/x-www-form-urlencoded');
        
        String header = '{"alg":"RS256","typ":"JWT"}';
        String header_encoded = EncodingUtil.base64Encode(blob.valueof(header));
        
        String claim_set = '{"iss":"alexismh8295@gmail.com"';
        claim_set += ',"scope":"https://www.googleapis.com/auth/drive"';
        claim_set += ',"aud":"https://accounts.google.com/o/oauth2/token"';
        claim_set += ',"exp":"' + datetime.now().addHours(1).getTime()/1000;
        claim_set += '","iat":"' + datetime.now().getTime()/1000 + '"}';
        
        String claim_set_encoded = EncodingUtil.base64Encode(blob.valueof(claim_set));
        
        String signature_encoded = header_encoded + '.' + claim_set_encoded;
        
        String key = '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';
        
        blob private_key = EncodingUtil.base64Decode(key);
        signature_encoded = signature_encoded.replaceAll('=','');
        String signature_encoded_url = EncodingUtil.urlEncode(signature_encoded,'UTF-8');
        blob signature_blob =   blob.valueof(signature_encoded_url);
        
        String signature_blob_string = EncodingUtil.base64Encode(Crypto.sign('RSA-SHA256', signature_blob, private_key));
        
        String JWT = signature_encoded + '.' + signature_blob_string;
        
        JWT = JWT.replaceAll('=','');
        
        String grant_string= 'urn:ietf:params:oauth:grant-type:jwt-bearer';
        req.setBody('grant_type=' + EncodingUtil.urlEncode(grant_string, 'UTF-8') + '&assertion=' + EncodingUtil.urlEncode(JWT, 'UTF-8'));
        res = h.send(req);
        String response_debug = res.getBody() +' '+ res.getStatusCode();
        System.debug('Response =' + response_debug );
        if(res.getStatusCode() == 200) {
            JSONParser parser = JSON.createParser(res.getBody());
            while (parser.nextToken() != null) {
                if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'access_token')) {
                    // Move to the value.
                    parser.nextToken();
                    // Return the access_token
                    System.debug(parser.getText());
                }
            }
        }
       System.debug('Error');
    }
    
    public static void creaCarpetaDrive() {
        //API KEY: AIzaSyDTM1KAs0xjR6eATbTk64l4dENxUz74bk0
        //Client Id: 690090398356-lqdu2tfekh37gf7q49f15gnnp0h0m098.apps.googleusercontent.com
        //Client Secret: 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
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setEndpoint('https://www.googleapis.com/upload/drive/v3/files');
        req.setHeader('content-type', 'text/plain');
        //req.setHeader('Authorization','Bearer '+accessToken);
        String messageBody = 'Hi, This message is from Salesforce';
        req.setBody(messageBody);  
        req.setTimeout(60*1000);
        HttpResponse resp = http.send(req); 
    }
}