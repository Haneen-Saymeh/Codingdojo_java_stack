
public class Museum {

	public static void main(String[] args) {
		
		Painting paint1 = new Painting();
		paint1.title="Battle of Marciano";
		paint1.author="Vasari";
		paint1.description= "inside the hall of 500";
		paint1.paintType="drawing";
		paint1.viewArt();
		
		Painting paint2 = new Painting();
		paint2.title="Not to Be Reproduced";
		paint2.author="René Magritte";
		paint2.description= "Portrait.";
		paint2.paintType="oil paint";
		paint2.viewArt();
		
		Painting paint3 = new Painting();
		paint3.title="The Accolade";
		paint3.author="Edmund Leighton.";
		paint3.description= "subject of chivalry.";
		paint3.paintType="oil paint";
		paint3.viewArt();
		
		Sculpture sculpture1 = new Sculpture();
		sculpture1.title="The Terracotta Army";
		sculpture1.author="....";
		sculpture1.description="In Xi'an China";
		sculpture1.material="clay";
		sculpture1.viewArt();
		
		Sculpture sculpture2 = new Sculpture();
		sculpture2.title="Spider";
		sculpture2.author="Louise Bourgeois";
		sculpture2.description=" in Moscow.";
		sculpture2.material="Bronze";
		sculpture2.viewArt();
		


	}

}
