package tek.sdet.framework.config;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import io.github.bonigarcia.wdm.WebDriverManager;

public class ChromeBrowser implements Browser {


	public WebDriver OpenBrowser(String url) {
		
		WebDriverManager.chromedriver().setup();
        ChromeOptions opt = new ChromeOptions();
        opt.addArguments("--remote-allow-origins=*");
        WebDriver driver = new ChromeDriver(opt);
		return driver;
		
		
	}

}
