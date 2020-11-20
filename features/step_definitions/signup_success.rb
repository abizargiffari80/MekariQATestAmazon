Given("Open browser") do
    visit('/')
    find(:xpath, "//a[@id='nav-link-accountList']").click
    find(:xpath, "//a[@id='createAccountSubmit']").click
  end
  
  Then("Form sign up") do
    page.should have_xpath("//h1[contains(text(),'Create account')]")
  end
  
  When("Fill up sign up form") do
    find(:xpath, "//input[@id='ap_customer_name']").fill_in with: 'Abizar Giffari'
    find(:xpath, "//input[@id='ap_email']").fill_in with: 'abizargiffari80@gmail.com'
    find(:xpath, "//input[@id='ap_password']").fill_in with: 'A123456b'
    find(:xpath, "//input[@id='ap_password_check']").fill_in with: 'A123456b'
    find(:xpath, "//input[@id='continue']").click
  end
  
  Then("Sign up button") do
    #dont know yet how to catch captcha or otp
  end