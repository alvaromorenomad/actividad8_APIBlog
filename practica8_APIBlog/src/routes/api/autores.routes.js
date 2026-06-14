const { register, login, getAll, getOwnPosts, getAutorPosts, getById } = require('../../controllers/autores.controller');
const { checkToken } = require('../../middlewares/auth.middleware');

const router = require('express').Router();

router.post('/register', register)
router.post('/login', login)
router.get('/', getAll)
router.get('/:autorID', getById ) //esta petición devuelve un autor concreto
router.get('/posts', checkToken, getOwnPosts) //esta petición devuelve todos los artículos escritos por el usuario ya logado.
router.get('/posts/:autorID', getAutorPosts ) //esta petición devuelve todos los posts creados por un autor concreto, pero sin tener que ser el logado

module.exports = router;
