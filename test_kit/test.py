from utility import MyUtility
from instructor import Instructor
from student import Student

if __name__ == '__main__':

	utility = MyUtility("http://127.0.0.1:8080/edsa-LRR2/index.php")
	instructor = Instructor("aA124536!","202032070221", utility)
	student = Student("aA124536!", "202032020722", utility)

