import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

class TicketService {

    public static void main(String[] args) {
        Ticket obj = new Ticket();
        obj.setPrice(3);
        System.out.println(obj.price);
        MovieTheater obj1 = new MovieTheater("asdfsadf", "adfasdf");
        System.out.println( obj.ToString(obj,"ticketNumber"));
        System.out.println(obj1.price);
        obj1.setPrice(1);
        System.out.println(obj1.price + obj1.additionalPrice());
        obj1.ToString(obj1,"actor_name");
        // print(obj1.price);

    }
}

class Ticket {

    public String customerName;
    protected double price;
    public int ticketNumber;
    public int numberOfActs;

    // Ticket(String name, double price, int ticketnumber, int numberofacts) {
    // this.customerName = name;
    // this.price = price;
    // this.ticketNumber = ticketnumber;
    // this.numberOfActs = numberofacts;

    // }

    protected void setPrice(int numberOfActs) {
        if (numberOfActs == 1) {
            this.price = 57.99;

        } else if (numberOfActs == 2) {
            this.price = 65.50;

        } else if (numberOfActs == 3) {
            this.price = 89.50;
        }
    }

    /**
     * @return
     */
    public String ToString(Object Ticket1,String fieldname) {
        

        Field[] fields = Ticket1.getClass().getFields();
    
        for (int i = 0; i <fields.length; i++) {

            try {
                System.out.println(fields[i].getName() + " "+fields[i].get(Ticket1));
                if (fieldname==fields[i].getName())

                return fieldname+" "+fields[i].get(Ticket1);
                
            } catch (IllegalArgumentException | IllegalAccessException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        return "Not Result";
    }

}

class TheaterTicket extends Ticket {
    String name_of_scene;

    // TheaterTicket(String name, double price, int ticketnumber, int numberofacts)
    // {
    // super(name, price, ticketnumber, numberofacts);

    // }

    public TheaterTicket(String name_of_scene) {
        this.name_of_scene = name_of_scene;

    }

    // public TheaterTicket(String name, double price, int ticketnumber, int
    // numberofacts, String name_of_scene) {
    // super(name, price, ticketnumber, numberofacts);
    // this.name_of_scene = name_of_scene;
    // this.price=this.price+price;
    // }
    public String ToString() {
        return " ";
    }

    public int additionalPrice() {
        return 85;
    }
    // TODO Auto-generated constructor stub
}

class MovieTheater extends Ticket {
   public String actor_name;
    public String movie_name;

    // MovieTheater(String name, double price, int ticketnumber, int numberofacts) {
    // super(name, price, ticketnumber, numberofacts);
    // }

    public MovieTheater(String actor_name, String movie_name) {
        this.actor_name = actor_name;
        this.movie_name = movie_name;

    }

    // TODO Auto-generated constructor stub
    public int additionalPrice() {
        return 70;
    }

    public String ToString() {
        return actor_name;

    }

}
