#
class Testtwo:
    def __init__(self):
        self.x = 5

    def display(self):
        print("TestTwo Class...")

    def calc(self):
        return self.x * self.x

    def hello(self, str):
        return 'Hello {} World !!'.format( str )

if __name__ == '__main__':
    u = Testtwo()

    u.display()
    print(u.calc())
    print(u.hello("Test Class"))
