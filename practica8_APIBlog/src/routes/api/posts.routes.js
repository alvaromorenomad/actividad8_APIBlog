const { getAll, getByID, createPost } = require('../../controllers/posts.controller');
const { checkToken } = require('../../middlewares/auth.middleware');

const router = require('express').Router();

router.get('/', getAll);
router.get('/:id', getByID)
router.post('/', checkToken , createPost) 

module.exports = router;
