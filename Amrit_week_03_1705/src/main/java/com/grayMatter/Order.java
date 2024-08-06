package com.grayMatter;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
		private int id;
	    private String date;
	    private List<String> items; // Assuming items are represented as Strings. Adjust as needed.
	    private double totalCost;

}
