using schema from '../db/filename';
service  first{
   @readonly entity StudentsSRV as projection on schema.Students;
}
service say {
  function hello (to:String) returns String;
}


    
