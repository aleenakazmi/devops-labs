
//when we use data block we are fetching the data from the provider and using it in our resource block.
//If data block fails, the resource block will not be created and rest of the code will not be executed. 
//For rest of the code to be executed, we can use check block which will check the condition and if it fails, it will not stop the execution of the rest of the code.

check "website_check" {
    data "http" "website" {
        url = "https://www.example12334543534.com"
    }
    assert {
        condition = data.http.website.status_code == 200
        error_message = "The website is not accessible."
    }
}

resource "local_file" "example" {
    content  = "This is an example test file."
    filename = "example.txt"
}