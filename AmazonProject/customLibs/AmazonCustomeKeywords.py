from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn

@library
class AmazonCustomeKeywords:

    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def hello_world(self):
        print("Hello world! This is my first keyword")

    @keyword
    def print_all_products_from_list(self, allProducts):
        allProductList = self.selLib.get_webelements(allProducts)
        for product in allProductList:
            print(self.selLib.get_text(product))
