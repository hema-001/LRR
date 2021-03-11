from utility import MyUtility
from instructor import Instructor
from student import Student

utility = MyUtility("http://127.0.0.1/edsa-LRR3/")
instructor = Instructor("aA124536!","202032070221", utility)
student = Student("aA124536!", "202032070222", utility)

cond = 1
f_name = utility.random_string(4)
l_name = utility.random_string(5)

def test_case_00():
	utility.signup(f_name+' '+l_name, f_name+'.'+l_name+'@testing.com', 'aA124536!') == cond

def test_case_01():
    instructor.create_course_portal() == cond

def test_case_02():
    instructor.post_lab_report() == cond

def test_case_03():
	student.join_course() == cond

def test_case_04():
	student.submit_assignment() == cond

def test_case_05():
	instructor.mark_submission() == cond

def test_case_06():
	student.request_remarking() == cond

def test_case_07():
	instructor.manage_deadline() == cond

def test_case_08():
	instructor.create_course_portal() == cond

def test_case_09():
	instructor.post_lab_report(group = 1) == cond

def test_case_10():
	student.join_course() == cond

def test_case_11():
	student.create_course_group() == cond