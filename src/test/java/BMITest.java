import static org.junit.Assert.*;

import org.junit.Test;

public class BMITest {

	@Test
	public void test() {
		Servlet s = new Servlet();
		double result = s.bmi(80.0, 2.0);
		assertEquals(20.0, result, 0.1);
	}

}
