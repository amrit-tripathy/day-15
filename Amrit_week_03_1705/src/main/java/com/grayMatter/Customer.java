package com.grayMatter;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
	private String name;
    private int id;
    private String mobile;
    private String email;
    private String orderDate;

}
