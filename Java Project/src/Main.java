import java.time.LocalDate;


public class Main {

	public static void main(String[] args) {
	//Create departments
		Department dep1 = new Department();
		dep1.id = 1;
		dep1.name = "HR";
		
		Department dep2 = new Department();
		dep2.id = 2;
		dep2.name = "Marketing";
		
		Department dep3 = new Department();
		dep3.id = 3;
		dep3.name = "Finance";
		
	//Create positions
		Position pos1 = new Position();
		pos1.id = 1;
		pos1.positionName = positionName.DEV;
		
		Position pos2 = new Position();
		pos2.id = 2;
		pos2.posName = "TEST";
		
		Position pos3 = new Position();
		pos3.id = 3;
		pos3.posName = "SCRUM_MASTER";
		
		Position pos4 = new Position();
		pos4.id = 4;
		pos4.posName = "PM";
		
		
		Account account1 = new Account()
		account1.accountID = 1;
		account1.email = "account1@gmail.com";
		account1.userName = "Banana.Park";
		account1.fullName = "Banana Park";
		account1.departmentID = 1;
		account1.positionID = 1;
		account1.createDate = "2024-02-11";

	}

}
