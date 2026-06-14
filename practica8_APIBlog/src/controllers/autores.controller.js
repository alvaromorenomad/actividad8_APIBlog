const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

const autoresModel = require('../models/autores.model');
const postsModel = require('../models/posts.model')

const register = async (req, res) => {
    const autor = await autoresModel.selectByEmail(req.body.email)

    if (autor){
        return res.status(409).json({
            message: "El usuario ya existe"
        })
    }

    req.body.password = bcrypt.hashSync(req.body.password, 8);
    const results = await autoresModel.insertAutores(req.body);
    res.json(
        {
            message: `Registro completo: ${req.body.name}, ${req.body.email}`
        }
    )

}

const login = async (req, res) => {
    const {email, password} = req.body

    const autor = await autoresModel.selectByEmail(email);

    if(!autor){
        res.status(401).json({
            message: 'Error en email y/o contraseña'
        })
    }

    const comparingPass = bcrypt.compareSync(password, autor.password)

    if(!comparingPass){
        res.status(401).json({
            message: 'Error en email y/o contraseña'
        })
    }

    res.json({
        message: 'login correcto',
        token: jwt.sign({autorId: autor.id}, process.env.JWT_SECRET_KEY)
    })
}

const getAll = async (req, res) => {
    try {
        const allAutores = await autoresModel.selectAll();

        res.json(allAutores);

    } catch (error) {
        res.status(500).json({
            message: error.message
        });
    }
};

const getOwnPosts = async (req, res) => {
    try{
        const idAutor = req.autor.id; 
        const result = await postsModel.selectByAutorID(idAutor);
        res.json(result);
    }catch(error){
        res.status(500).json({
            message: error.message
        });
    }
}

const getAutorPosts = async (req, res) => {
    const {autorID} = req.params;
    
    if (isNaN(autorID)) {
        return res.status(400).json({
            message: 'El ID del autor debe ser numérico'
        });
    }

    const result = await postsModel.selectByAutorID(autorID);
    res.json(result);
}

const getById = async (req, res) => {
    const {autorID} = req.params;

    if (isNaN(autorID)) {
            return res.status(400).json({
                message: 'El ID debe ser numérico'
            });
        }
    
    const result = await autoresModel.selectById(autorID);

    if (!result) {
            return res.status(404).json({
                message: 'Autor no encontrado'
            });
        }

    res.json(result);
}



module.exports = { 
    getAutorPosts,
    getAll,
    getOwnPosts,
    getById,
    register,
    login
 }
