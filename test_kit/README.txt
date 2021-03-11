"""
LRR Testing automation scripts, written by Ibrahim M.I. Ismail in Feb 2021 as part
of the undergraduate thesis "Defect Analysis for LRR".

These scripts are written with the intention of being a tool to accelerate the maintenance 
process, and as a regression test for feature integrations or bug fixes.

These scripts depend heavily on the structure of html elements in the source code by using
xpath to locate certain elements. Therefore, make sure that all web elements in LRR source 
code are unchanged for this script to run properly. And if any change is necessary, then make
sure to adjust its corresponding xpath on these scripts.

Note: see "Writing history, number 4" the later part about xpath dependence is significantly reduced.

Contact us for any help or suggestions at:
Mr. Hui Lan (lanhui at zjnu dot edu dot cn)
Ibrahim M.I. Ismail (1525200991 at qq dot com)

Writing history:
1- Feb 06, 2021: wrote the class skeleton. Ibrahim M.I. Ismail
2- Feb 07, 2021: implemented login(), create_course_portal() functions. Ibrahim M.I. Ismail
3- Feb 08, 2021: implemented post_lab_report(), manage_deadline() functions. Ibrahim M.I. Ismail
4- Mar 10, 2021: reduced the amount of web element locators that uses xpath by replacing finding elements
		 by xpath with IDs, as well introduced id attributes for some web elements on LRR's php files.
5- Mar 11, 2021: final fixes and enhancments.
"""

