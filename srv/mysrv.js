const cds = require ('@sap/cds')
const {Students} = cds.entities('schema')


module.exports = (say)=>{
  say.on ('hello', req => `Hello ${req.data.to}!`)
}

module.exports = async (srv) =>{
    srv.on('GetStudentSRV',async (req,res)=>{
        const {SELECT}=cds.ql(req);
        const result = await SELECT.from(Students);
        console.log(result);
        return JSON.stringify(result);
    })
    srv.on('InsertStudentsSRV',async (req,res)=>{
        const {INSERT}=cds.ql(req);
        const result = await INSERT.into(Students).columns(['email', 'first_name', 'last_name', 'date_sign_up','dato_2']).values (['123', '123', '123', '2019-10-10','123'])
        console.log(result);
        return 'Insert success';
    })
}
