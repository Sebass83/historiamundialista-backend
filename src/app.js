
import express  from 'express';
import config from './config'
import cors  from 'cors';

const app = express();
app.use(cors())


app.set('port', config.port);
export default app;

