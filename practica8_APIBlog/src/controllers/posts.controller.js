const postsModel = require('../models/posts.model');

const getAll = async (req, res) => {
    try{
        const allPosts = await postsModel.selectAll()
        res.json(allPosts);
    }catch(error){
       res.status(500).json({
            message: error.message
        })
    }
    
}

const getByID = async (req, res) => {
    try {
        const { id } = req.params;

        if (isNaN(id)) {
            return res.status(400).json({
                message: 'El ID debe ser numérico'
            });
        }

        const result = await postsModel.selectById(id);

        if (!result) {
            return res.status(404).json({
                message: 'Post no encontrado'
            });
        }

        res.json(result);

    } catch (error) {
        res.status(500).json({
            message: error.message
        });
    }
}

//solo se puede crear un post si se está previamente logado
const createPost = async (req, res) => {
    try {
        const body = req.body;

        body.autores_id = req.autor.id;

        const result = await postsModel.insert(body);

        res.json(result);

    } catch (error) {
        res.status(500).json({
            message: error.message
        });
    }
};

module.exports = { 
    getAll,
    getByID,
    createPost
 }
