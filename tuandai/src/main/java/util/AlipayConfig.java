package util;
import java.io.FileWriter;
import java.io.IOException;
/* *
 *???AlipayConfig
 *????????
 *????????????????
 *?????2017-04-05
 *???
 *?????????????????????????????????????????????,???????????
 *???????????????????????????
 */

public class AlipayConfig {
	
//?????????????????????????????????????

	// ??ID,??APPID?????????APPID???????
	public static String app_id = "2016092000556283";
	
	// ???????PKCS8??RSA2??
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCr2ZU00E1MOixLkMb2atuQIQYBDkkJqvfVEX1vmWGxjv2GwB7ZRaxbj+mtuv8uU34+rTn7OabsKmp1sADGVnmkDG/ja0TKzal6t7Gqubrn0WILZv7zkRnlFoqj6XV6HDpjdHOaB+UEefZVHCS9RWRKu2v7HHBjiKaY3us3XztNqB0capE+RQ2/+cddPAuG5tX1QvlVl4K213VKXgHzZNdPKCgx+jKfLeaVCNqfK7YbP+xuDMDgTtYuFQya1R5314Y6vBXtQvzsSb8tCXKDZwIZH3YYAZOAWVNK8NG6Ohf7TNGZ6kdV/1d/eBx3IuEREWVwtj/J3SouGzOx+0HzQ7e1AgMBAAECggEAL3TMoWMMlYpTBSMb7pyfuXOFJvF89fCCtBI6Y4El21SzamzPmAyHhll9nH5RTce8yy4nHttS31DvSUSrUho7STQuCc1rl92neb4UkCLuHGpT+vYcXcKqNfs9mfo0eN4muaRE8DpR4iSUA/jbpHDvOzv6m8PEvZfU+c5FgmsIA29+FB+a/yi9hKjXkqZoekHs2STtHh6O8kZeUsukzaeUW+wAJknuVS5YkoAgRY7+JU8uqJX9WF5Sra3FAgpz3B2JbKXD0jUBp2MjAEKbZ84Kfza3QJBcV3HGWFDkpQGZ+rm9tDgYI9J8XaR6BGyctlPzXzwZS6Q5btQf4ZG+FhSvwQKBgQD2O5GdWbdDYGFH7IJ4t41+39IVYHZL9sFBhQzvHlXEe0/OWNeq1iFTnuJP2qZ8gsx3SMOcIpUPTolc9PT3F5HjjZqXbRjTyhkwuHJK2HrOttWPZL0KCkey/t7LqdS5UrI9OSJm0OUjd+JpJywv4I25BunW3pUeClAyuDeNPhUcrQKBgQCyqq0AeKEwK7v4gJFbWfAkCF++JZFJEhw/d28CsDgmqok4vopurQ9vVPhcdfCl29HrdZ8P/8nb+lSREZW5HsnJWMCCCY8+iziHZDADR8XHLwJgW/gOHiP9V9JbTfPTjMxdWo9KhnrP9vAmVBXLp/J2iBOjOrMODHWrfH/0iI6gKQKBgQCDxV0n19s7M1jcJLWt5IzUWPMUfYrRHDxP0+QYEyPTAiqzQtgnlHBBT8XM9jYia9z/+PC1ncwnZOAd3vk5QmPQYvdYEgo3TPAuIocHhtIxzaZ8Fm0T8mxsXfjdBQXSJ287VFgUrbXyRTXlEBGVjZZKbmi1lGg4q0w/2FXiQFcMAQKBgG0mEZx5FVfdT+9HdAWP00HgD8WVI8W1F6a6KwpEZ3lPs5cD6IQmm4hTK4sozgQ1X2/uImdex43ox2L8kDBQm8uyuaB3gJgf6z/jN+W5Ih1GHbiKVuchCLGLxknbPHrfyDW7zlAkCcEkxZ9UvR/2kQxSo1ST1rFdcUF7RJw6FI/JAoGABOFi/5yY+QYohTON56FiJj1fz4fkGvaoxPjEnN+NS/wmL8FcII9Vyj34eNwrrZ4koaG5kN6qL9eP7t0sZgl1/TnzjonOq1pEaBVdnQbLXC3chjFV/0tpICqJGHniusi5UAzqG02K8r7xqyQZu1uET6Ao8RDpHo4TH/dG0YCVvWg=";
	
	// ?????,?????https://openhome.alipay.com/platform/keyManage.htm ??APPID????????
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo3ZZujLr18OzWozOJdOsvnenMIhPP0DarC1rO+56gFj17d+7U+QKOfOp3OSaGjRFQ8qi0cfLEBVtmusyzD+D8GDipQ40AxNWx5x2VXPqgYMxgCDqA36DpMplVbfY8PHO/2rmR93QvwVwYhBYN8w8EEdJZz4FOxqXIzA8w2Ys4eP0gGV9soKQFr+aefDfbcfFgcCuCbhqmdfDXjx0Bbjhh1BHuWz0r3nhI5rfikNr4usRqbjtYcf4xQgAljacK1w+D4O7upG2De/dNK2VRHzv1Bt8bo3p7t6YKmuFEKhMyLn4qKNo1ANl1E7iXOsSRvEPHlKighqTyUlAc1rqKcqmFwIDAQAB";

	// ???????????  ?http://????????????id=123??????????????????
	public static String notify_url = "http://localhost:8080/tuandaiw/pay/notify_url";

	// ???????????? ?http://????????????id=123??????????????????
	public static String return_url = "http://localhost:8080/tuandaiw/pay/return_url";

	// ????
	public static String sign_type = "RSA2";
	
	// ??????
	public static String charset = "utf-8";
	
	// ?????
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// ?????
	public static String log_path = "C:\\";


//?????????????????????????????????????

    /** 
     * ?????????????????????????????
     * @param sWord ???????????
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

