
public class Sculpture extends Art{
	public String material;
	
	public void viewArt() {
		System.out.println("title: "+ this.title +" " +"Artist: "+ this.author+" " +"Description: "+ this.description+" "+"Material type: " +this.material);
	}
}
