
public class Painting extends Art{
	public String paintType;
	
	public void viewArt() {
		System.out.println("title: "+ this.title +" " +"Artist: "+ this.author+" " +"Description: "+ this.description+" "+"Paint type: " +this.paintType);
	}

}
