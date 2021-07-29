public with sharing class ChallengeXX {
    public static String makeCallout(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gateway.marvel.com/v1/public/characters/1009368?ts=1&apikey=23547e8e5083b75ab9ff2f2f72e5ab58&hash=bfb1c69ced71da4f8b50ef2353e5e087');
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200){
            
        }
    }
}