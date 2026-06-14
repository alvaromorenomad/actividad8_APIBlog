const db = require('../config/db');

const selectAll = async () => {
    const [result] = await db.query('select id, name, email, image from autores')
    return result;
}

const insertAutores = async ({name, email, image, password}) => {
    const [result] = await db.query(
        'INSERT INTO autores (name, email, image, password) VALUES (?,?,?,?)',
        [name, email, image, password]
    )

    return [result]
}

const selectByEmail = async (email) => {
    const [result] = await db.query('select * from autores where email = ?',
        [email] 
    );

    if (result.length === 0){
        return null
    }

    return result[0];
}

const selectById = async (autorID) => {
    const [result] = await db.query('select id, name, email, image from autores where id = ?',
        [autorID]
    )

    if (result.length === 0){
        return null
    }

    return result[0];
}


module.exports = {
    selectAll,
    insertAutores,
    selectByEmail,
    selectById
}
