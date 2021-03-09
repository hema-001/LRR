from utility import MyUtility
from instructor import Instructor
from student import Student

utility = MyUtility("http://127.0.0.1:8080/edsa-LRR2/index.php")
instructor = Instructor("aA124536!","202032070221", utility)
student = Student("aA124536!", "202032020722", utility)

def test_case_00():
	utility.signup('Test User', 'test.user.465@testing.com', 'aA124536!')

def test_case_01():
    instructor.create_course_portal()

def test_case_02():
    instructor.post_lab_report()

def test_case_03():
	student.join_course()

def test_case_04():
	student.submit_assignment()

def test_case_05():
	instructor.mark_submission()

def test_case_06():
	student.request_remarking()

def test_case_07():
	instructor.manage_deadline()

def test_case_08():
	instructor.create_course_portal()

def test_case_09():
	instructor.post_lab_report(group = 1)

def test_case_10():
	student.create_course_group()