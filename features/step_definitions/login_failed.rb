When("Fill up email fail") do
    find(:xpath, "//input[@id='ap_email']").fill_in with: 'a'
    find(:xpath, "//input[@id='continue']").click
    page.should have_xpath("//span[contains(text(),'We cannot find an account with that email address')]")
    sleep 2
    find(:xpath, "//input[@id='ap_email']").fill_in with: 'abizargiffari80@gmail.com'
    find(:xpath, "//input[@id='continue']").click
    find(:xpath, "//input[@id='ap_password']").fill_in with: '1'
    find(:xpath, "//input[@id='signInSubmit']").click
    page.should have_xpath("//span[contains(text(),'Your password is incorrect')]")
    sleep 2
  end
  
  Then("Failed validation") do
    page.should have_xpath("//input[@id='signInSubmit']")
    #mean that it still on sign in page
  end