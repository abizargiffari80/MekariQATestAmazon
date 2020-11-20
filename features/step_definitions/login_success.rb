Given("Open browser login") do
    visit('/')
    find(:xpath, "//a[@id='nav-link-accountList']").click
  end

  Then("Form login") do
    page.should have_xpath("//h1[contains(text(),'Sign-In')]")
  end
  
  When("Fill up Login form") do
    find(:xpath, "//input[@id='ap_email']").fill_in with: 'abizargiffari80@gmail.com'
    find(:xpath, "//input[@id='continue']").click
    find(:xpath, "//input[@id='ap_password']").fill_in with: 'A123456b'
    find(:xpath, "//input[@id='signInSubmit']").click
  end
  
  Then("Login button") do
    page.should have_xpath("//span[contains(text(),'Hello, Abizar')]")
  end