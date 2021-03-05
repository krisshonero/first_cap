using schema from '../db/filename';
service  first{
   @readonly entity GetStudentsSRV as projection on schema.Students;
   @insertonly entity InsertStudentsSRV as projection on schema.Students;
}

//@readonly	see Generic Handlers
//@insertonly	see Generic Handlers
//@restrict	see Authorization
//@requires

service srv{
    function GetStudentSRV () returns String;
    function InsertStudentsSRV () returns String;
}
service say {
    function hello (to:String) returns String;
}


    
