# About LRR

LRR (Lab Report Repository) is an online software application for posting assignments, submitting assignments and marking (re-marking) assignments.

This software was originally developed by by Mahomed Nor, a graduate student in the Department of Computer Science at the Zhejiang Normal University,
while he was taking a graduate course called **Advanced Software Engineering** (http://lanlab.org/course/2018f/se/homepage.html).

The LRR's project home page is at http://118.25.96.118/nor/homepage/index.html.



# Mission

Our mission is to make the experience of submitting assignments great for tens of hundreds of students in the department of computer science at the Zhejiang Normal University (Jinhua City, Zhejiang Province).



# Installation Instructions

In order to contribute to LRR you will need to setup a PHP development environment which consist of HTTP Server, and Database Server. There are a lot of HTTP Server variants available, but we recommend using Apache HTTP server. As for the Database Server, Mysql Database Server is used in developing LRR, hence, Mysql is required.

You are free to setup the environment as you like, especially if you already have enough experience with PHP web development, here we demonstrate a simple and fast approach to setup PHP environment in few minutes only using [EasyPHP Devesrver](https://www.easyphp.org/)

**NOTE:** EasyPHP is available for Windows only, other OS users can try alternatives compatible with their systems.

## Download EasyPHP
Visit [EasyPHP](https://www.easyphp.org/) and download Devserver from the main page.

## Install EasyPHP
After the download is complete, double click on **EasyPHP-Devserver-xx.x-setup.exe** to start the installer.

Follow the installation wizard by clicking **next** until the installation is complete, and EasyPHP should be installed successfully.

## Start the Servers
After successfully installing EasyPHP Devserver, run the program from your Desktop or Start Menu.  

You should see small icon of EasyPHP appearing on your hidden icons to the bottom right of the screen next to time and date.  

By clicking on the icon an option menu will popup, choose **Open Dashboard**.  

An EasyPHP Devserver dashboard page should be opened on your browser, under **HTTP SERTVER** click on the green **start** button to start the server, and under **DATABASE SERVER** click on the green **start** button to start the Database Server as well. Both buttons should turn into red with the label **stop** replacing **start**, that way you can confirm whether a server has been started or not.

## Add LRR directory to EasyPHP
On the dashboard and after both servers have been started successfully, click on **+ add directory** button under **WORKING DIRECTORIES** section.  

Enter a name for your directory (e.g., lrr).  
Copy and paste LRR directory path on your machine into the second field.  
Click save.  

## Import LRR database
EasyPHP provides phpMyAdmin tool to handle administration of MySQL over php.  

Under **MODULES** section you should be able to find **MySQL Administration : PhpMyAdmin x.x.x** module, clicking on **open** will open new tab with phpMyAdmin dashboard.  

On the left vertical menu of phpMyAdmin dashboard, click on **New**.  
Enter **lrr** into **database name** field.  
Click create.  

A database named *lrr* should be created successfully.  

Choose **import** from the tab menu.  
Under **File to import** section, click on **choose file** and locate the lrr database import file that contains the database structure.  
Scroll down and click on **go**.  

## Running and connecting LRR
LRR uses a design that retrieves the database credentials from a file stored safely two levels above LRR's directory. So, in order to connect to the database, you should create a folder named **lrr_submission** two levels above LRR's directory on your machine, for example:

LRR directory on your machine is `D:\folder1\folder2\lrr`  
Then, **lrr_submission** should be created in `D:\lrr_submission`  

Create a text file named **KeepItSafe.txt** under **lrr_submission** that contains the credentials to access the root user (or a user with enough privileges to manipulate data on lrr) on your database server separated by comma, for example:  
`username,password`

To run/open LRR, click on the directory name under **WORKING DIRECTORIES** on EasyPHP dashboard, a new tab should be opened with a local connected and running instance of LRR.


# Current Status

This software has been actively used by students who took or are
taking courses (Introduction to Software Engineering and Software
Project Management) taught by Hui.

There are more than 200 student accounts created since its first
launch in 2018.

A running instance of this software is at http://118.25.96.118/nor/

There are about 40 bugs (most being CRITICAL) that remain unresolved
before LRR can hit its beta release.  See the section *The Bug
Tracker* for more detail.  Currently, there are a few groups (formed
by students who are taking Software Project Management) working on
these bugs.




# The Bug Tracker

We use Bugzilla to track LRR's bugs and feature requests.

Most bugs of this software are recorded on the  bug tracker for LRR:
http://118.25.96.118/bugzilla/describecomponents.cgi?product=Lab%20Report%20Repository%20%28nor%20houzi%29



# TODO
-  *Add Installation Instructions for MAC*. To cover installation on more operating systems.
-  *Receiving email for password resetting*. Password resetting link is not always sent successfully.

-  *How assignements should be stored?*  Creating sub-directories on all student submissions course-code/semester/section-number.  (/student-number/course-code/semester/section-number/assignement-title/submission.txt)

-  *Feature request*. Editing the assignment title after uploading a new assignment (instructor).

-  [SOLVED] A new user could not login immediately after sign up.

- A more complete list of TODO's is at http://lanlab.org/course/2020s/spm/decide-areas-for-improvement-review.html


# How to Contribute

We welcome your participation in this project.

Your participation does not have to be in the form of contributing code.  You could help us on
ideas, suggestions, documentation, etc.


You need to be an invited member of *Lan Laboratory* before you can
push your feature branch or bugfix branch to the central reops at
https://github.com/lanlab-org

Send Hui (lanhui at zjnu.edu.cn) an email message including your
GitHub account name so that he could invite you to be a member of *Lan
Laboratory*.

As of March 31 2020, there are 30 members in *Lan Laboratory* (https://github.com/orgs/lanlab-org/people).

You will use the feature-branching workflow (see below) when
interacting with the central repo.  The main point of this workflow is
that you work on a branch on your local drive, push that branch to the
central repo, and create a Pull Request (i.e., Pull Me Request) at
GitHub for other people to review your changes.  When everything is
OK, then *someone* could merge your changes to the master branch in the
central repo.

I believe that *code review* at the Pull Request stage is important
for both improving code quality and improving team quality.



## The Feature-branching Workflow

We will use the feature-branching workflow for collaboration.  The
idea is that you make your own branch, work on it, and push this branch to
the central repo for review.

Check the section **The feature-branching workflow** in the following link for more detail:

https://github.com/spm2020spring/TeamCollaborationTutorial/blob/master/team.rst



## Communications Method

For real-time communication, check our IRC channel `#lrr` at irc.freenode.org.  Check this link http://lanlab.org/course/2020s/spm/irc-instruction.txt
for how to use IRC.

To submit bug reports or improvement ideas, please ask Hui [lanhui at zjnu.edu.cn] to open a Bugzilla account for you.





## Frequently Asked Questions

**Do I have to setup EasyPHP especially ?**  
*You are free to setup the environment as you like, especially if you already have enough experience with PHP web development, here we demonstrate a simple and fast approach to setup PHP environment in few minutes only using [EasyPHP Devesrver](https://www.easyphp.org/)*  
However, you should pay attention to some of the details on the **Installation instructions** namely, last two sections (i.e., Import LRR database, and Running and connecting to LRR) and adjust to them accordingly.  

**Why using Google Chrome webdriver only in the test automation scripts?**  
You are not limited to use Google Chrome webriver only, you can use any available webdriver but you'll need to adjust some lines in the test scripts.  
For example, assume you are using Edge webdriver, then you'll need to change the following line in `utility.py` file, inside `getSession()` method:  
>`driver = webdriver.Chrome()`  

To whatever applies for the invokation of Edge webdriver object.  
We used Google Chrome in the guidelines since it is the webdriver used in the implementation of the scripts.



# The Original GitHub Repo

The original GitHub Repo is at https://github.com/EngMohamedNor/LabReportRepo


# Contributor List


(Please put your name and student number below.)

TanakaMichelle - Tanaka Michelle Sandati - 201732120134

WhyteAsamoah   - Yeboah Martha Asamoah   - 201732120135

xiaoyusoil - ZhengXiaoyu - 201732120110


Benny123-cell - ZhangBin - 201732120127

421281726 - LiJiaxing - 201732120118

zhenghongyu-david - ZhengHongyu - 201732120128

wkytz - YeHantao - 201732120125

zego000 - GaoZeng - 201732120117

Richard1427 - XieJiacong - 201732120123

yutengYing - YingYuteng - 201732120126

Samrusike  - Samantha Rusike  - 201632120140

Teecloudy  - Ashly Tafadzwa Dhani - 201632120150

GuedaliaBonheurSPM - Guedalia Youma - 201925800221

ACorneille - Alimasi Corneille - 201925800168

Tabithakipanga - Kipanga Dorcas - 201925800170

Mary-AK  - Mary Akussah Doe - 201925800173

pkkumson  - Kumson Princewill Kum - 201925800166

Twizere  -  Twizere Pacifique  -  201925800174

Nicole-Rutagengwa  - Nicole Rutagengwa  - 201925800169
