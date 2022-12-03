import app from './app.js';
import { PORT } from './config.js';
import Mundiales from './controllers/controller.mundial.js';


app.get('/api/', Mundiales.listaMundiales);
app.get('/api/:id', Mundiales.mundial);
app.get('/api/mundial/:id', Mundiales.getMundial);
app.get('/api/introduccion/:id', Mundiales.getIntroduccion);
app.get('/api/equipos/:id', Mundiales.getEquipos)
app.get('/api/sedes/:id', Mundiales.getSedes)
app.get('/api/grupos/:id', Mundiales.getGrupos)
app.get('/api/podio/:id', Mundiales.getPodios)
app.get('/api/goleadores/:id', Mundiales.getGoleadores)
const port = process.env.PORT || app.get('port');

app.listen( PORT);

// mundial: Mundial[] = [];
// anfitrion: PaisAnfitrion[] = [];  
// introduccion:Introduccion[] = [];
// equipos:Equipo[] = [];
// grupos:Grupo[] = [];
// sedes: Sede[] = [];
// podios:Podio[] = [];
// goleadores: Goleador[] = [];