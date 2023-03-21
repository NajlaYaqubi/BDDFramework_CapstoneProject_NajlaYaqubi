package tek.sdet.framework.utilities;

import net.datafaker.Faker;

public class DataGenerator {

	// Data Faker is a library that can help you
	// generate random data and you can do
	// data conditioning as well.
	
	public static void main(String []args) {
		System.out.println(getData("name"));
		System.out.println(getData("email"));
		System.out.println(getData("random"));
	}

	public static String getData(String input) {

		Faker faker = new Faker();
		String result = "";
		if (input.equals("name")) {
			result = faker.name().firstName().trim();
		} else if (input.equals("email")) {
			result = faker.expression("#{letterify '????.????@tekschool.us'}");
		}else
			result =faker.expression("#{letterify '????.????@tekschool.us'}");
		return result;
	}
	
public static String addressGenerator(String input) {
		
		Faker faker = new Faker();
		
		String output ="";
		
		if(input.equalsIgnoreCase("countryValue")) {
			output = "United States";
		}else if(input.equalsIgnoreCase("fullnameValue")) {
			output = faker.name().fullName();
		}else if(input.equalsIgnoreCase("PhoneValue")){
			output = faker.phoneNumber().cellPhone();
		}else if(input.equalsIgnoreCase("stAddress")) {
			output = faker.address().streetAddress();
		}else if(input.equalsIgnoreCase("aptValue")) {
			output = faker.address().secondaryAddress();
		}else if(input.equalsIgnoreCase("cityValue")) {
			output = faker.address().city();
		}else if(input.equalsIgnoreCase("stateValue")) {
			output = faker.address().state();
		}else if(input.equalsIgnoreCase("zipCodeValue")) {
			String zipcode = faker.address().zipCode().substring(0,5);
			output = zipcode;
		}
		return output;
		
	}

}
