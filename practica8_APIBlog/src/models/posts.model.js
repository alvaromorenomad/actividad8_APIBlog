const db = require('../config/db')

const selectAll = async () => {
    const [result] = await db.query('SELECT p.*, a.name as autor_name, a.email as autor_email, a.image as autor_image FROM posts p INNER JOIN autores a ON p.autores_id = a.id')
    return result
}

const selectById = async (postID) => {
    const [result] = await db.query(
        'SELECT p.id, p.title, p.description, p.category, a.name as autor_name, a.email as autor_email, a.image as autor_image FROM posts as p INNER JOIN autores as a ON p.autores_id = a.id WHERE p.id = ?',
        [postID]
    );
    if(result.length === 0){
        return null
    }
    return result[0]
}

const selectByAutorID = async (autorID) => {
    const [result] = await db.query('SELECT * FROM posts WHERE autores_id = ?',
        [autorID]
    );
    
    if(result.length === 0){
        return null
    };

    return result[0];
}

const insert = async ({title, description, category, autores_id}) => {
    const [result] = await db.query('INSERT INTO posts (title, description, category, autores_id) VALUES (?,?,?,?)',
    [title, description, category, autores_id]);
    return result; 
}



module.exports = {
    selectAll,
    selectById,
    selectByAutorID,
    insert
}