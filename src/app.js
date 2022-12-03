
import express  from 'express';
import config from './config'
import cors  from 'cors';

const app = express();
app.use(cors())

export default app;

