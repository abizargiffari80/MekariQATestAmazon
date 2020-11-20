When("Fill up sign up fail") do
    find(:xpath, "//input[@id='ap_customer_name']").fill_in with: 'test'
    find(:xpath, "//input[@id='ap_email']").fill_in with: 'a'
    find(:xpath, "//input[@id='ap_password']").fill_in with: '1'
    find(:xpath, "//input[@id='ap_password_check']").fill_in with: '1'
    find(:xpath, "//input[@id='continue']").click
  end
  
  Then("Verify fail") do
    page.should have_xpath("//div[contains(text(),'Enter a valid email address')]")
  end