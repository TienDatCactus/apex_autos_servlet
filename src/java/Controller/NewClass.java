/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.io.IOException;

/**
 *
 * @author Tiến_Đạt
 */
public class NewClass {

    public static void main(String[] args) throws InterruptedException, IOException {
HttpRequest request = HttpRequest.newBuilder()
		.uri(URI.create("https://youtube-search-and-download.p.rapidapi.com/channel?id=UCiTGKA9W0G0TL8Hm7Uf_u9A&next=4qmFsgKFARIYVUNpVEdLQTlXMEcwVEw4SG03VWZfdTlBGjpFZ1oyYVdSbGIzTVlBeUFBTUFFNEFlb0RGa05uUVZORFoycHdNazVFTkRWT2VVcHNhMmR2VFdjJTNEmgIsYnJvd3NlLWZlZWRVQ2lUR0tBOVcwRzBUTDhIbTdVZl91OUF2aWRlb3MxMDI%253D&sort=n"))
		.header("x-rapidapi-key", "23f6c4678fmsh60a151904aa61e4p1df63bjsn03ca2aad09db")
		.header("x-rapidapi-host", "youtube-search-and-download.p.rapidapi.com")
		.method("GET", HttpRequest.BodyPublishers.noBody())
		.build();
HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
System.out.println(response.body());
    }
}
