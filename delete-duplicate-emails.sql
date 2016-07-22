# Solution for Delete Duplicate Emails
# URL: https://leetcode.com/problems/delete-duplicate-emails/

# Write your MySQL query statement below
delete t1 from Person t1, Person t2 where t1.Id > t2.Id and t1.Email = t2.Email;