const jwt = require('jsonwebtoken');
const autoresModel = require('../models/autores.model');

const checkToken = async (req, res, next) => {
    if(!req.headers.authorization){
        return res.status(403).json({
            message: 'El token es obligatorio en la cabecera Authorization'
        })
    }

    const token = req.headers.authorization;

    let payload

    try{
        payload = jwt.verify(token, process.env.JWT_SECRET_KEY)
    }catch(error){
        return res.status(403).json({
            message: 'El token es incorrecto'
        })
    }

    const autor = await autoresModel.selectById(payload.autorId);

    if(!autor){
        return res.status(403).json(
            {
                message: 'El usuario no existe'
            }
        )
        
    }

    req.autor = autor; 

    next();
}

module.exports = {
    checkToken
}
