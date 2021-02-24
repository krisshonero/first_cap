using myCompany.hr.lms from '../db/filename';
service  first{
   @readonly entity Students as projection on lms.Students;
}
service say {
  function hello (to:String) returns String;
}