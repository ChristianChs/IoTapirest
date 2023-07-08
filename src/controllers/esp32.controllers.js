import { pool } from "../db.js"

export const createDataEsp32 = async(req,res)=> {
    const {field1,field2,id} = req.body
    try {
        const [rows] = await pool.query('INSERT INTO detalle_canal(field1,field2,idcanales) VALUES (?,?,?) ',[field1,field2,id])
        console.log(rows)
        res.send({rows})
    } catch (error) {
        return res.status(500).json({
            message:'Something goes wrong '+ error
        })
    }
}