namespace schema;
   entity Students{
       key email : String(65);
       first_name : String(20);
       last_name : String(20);
       date_sign_up : Date;
       dato_2 : String(20);
   }
/*annotate Students with @(
    UI:{
        LineItem:[
            {
                Label:'Email',
                Value:email
            },
            {
                Label:'First name',
                Value:first_name
            },
            {
                Label:'Last name',
                Value:last_name
            },
            {
                Label:'Date',
                Value:date_sign_up
            }
        ]
    }
);*/