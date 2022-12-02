import app from './app';
import Mundiales from './controllers/controller.mundial';


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

app.listen( port, ()=>{
    console.log(`Aplicacion corriendo en el puerto ${port}`);
});