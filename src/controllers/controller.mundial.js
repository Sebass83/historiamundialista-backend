import { pool } from "../database/connection.js";
const Mundial = {
  listaMundiales: async (req, res) => {
    const [mundiales] = await pool.query("SELECT * FROM `mundial`");
    res.json(mundiales);
  },
  mundial: async (req, res) => {
    let id = req.params.id;
    if (id > 0 && id < 23) {
      if (id == 2 || id == 3) {
        const [mundial] = await pool.query(
          "SELECT * FROM mundial WHERE idmundial = ?",
          id
        );
        const [introduccion] = await pool.query(
          "SELECT `introduccion` FROM `eliminaciondirecta` WHERE eliminaciondirecta.mundial_idmundial = ?",
          id
        );
        const [equipos] = await pool.query(
          "SELECT `pais` FROM equiposparticipantes WHERE equiposparticipantes.mundial_idmundial = ?",
          id
        );
        const [sedes] = await pool.query(
          "SELECT `idsedes`,`lugar`,`estadio` FROM sedes WHERE sedes.mundial_idmundial = ?",
          id
        );
        const [podios] = await pool.query(
          "SELECT `puesto`,`pais` FROM podio WHERE podio.mundial_idmundial = ?",
          id
        );
        const [goleadores] = await pool.query(
          "SELECT `idgoleadores`,`jugador`,`seleccion`,`goles` FROM goleadores WHERE goleadores.mundial_idmundial = ?",
          id
        );



        res.json({
          mundial,
          introduccion,
          equipos,
          sedes,
          podios,
          goleadores,
        });
      } else {
        const [mundial] = await pool.query(
          "SELECT * FROM mundial WHERE idmundial = ?",
          id
        );
        const [introduccion] = await pool.query(
          "SELECT `idporgrupos`,`introduccion` FROM `porgrupos` WHERE porgrupos.mundial_idmundial = ?",
          id
        );
        const [equipos] = await pool.query(
          "SELECT `pais` FROM equiposparticipantes WHERE equiposparticipantes.mundial_idmundial = ?",
          id
        );
        const [grupos] = await pool.query(
          "SELECT `grupo`,`pais` FROM grupos,equiposparticipantes WHERE grupos.equiposparticipantes_idequiposparticipantes = equiposparticipantes.idequiposparticipantes AND equiposparticipantes.mundial_idmundial = ? ORDER BY `grupos`.`grupo` ASC",
          id
        );
        const [sedes] = await pool.query(
          "SELECT `idsedes`,`lugar`,`estadio` FROM sedes WHERE sedes.mundial_idmundial = ?",
          id
        );
        const [podios] = await pool.query(
          "SELECT `puesto`,`pais` FROM podio WHERE podio.mundial_idmundial = ?",
          id
        );
        const [goleadores] = await pool.query(
          "SELECT `idgoleadores`,`jugador`,`seleccion`,`goles` FROM goleadores WHERE goleadores.mundial_idmundial = ?",
          id
        );

        res.json({
          mundial,
          introduccion,
          equipos,
          grupos,
          sedes,
          podios,
          goleadores,
        });
      }
    } else {
      res
        .status(404)
        .send(
          `El parametro de busqueda <strong>"${id}"</strong> no es valido.`
        );
    }
  },
  getMundial:async (req, res) =>{
    let id = req.params.id;
    const [mundial] = await pool.query(
      "SELECT * FROM mundial WHERE idmundial = ?",
      id
    )
    res.json(mundial)
  },
  getIntroduccion:async (req, res) =>{
    let id = req.params.id;

    if(id==2 || id==3){
      const [introduccion] = await pool.query(
        "SELECT `introduccion` FROM `eliminaciondirecta` WHERE eliminaciondirecta.mundial_idmundial = ?",
        id
        
      )
      res.json(introduccion)

    }else{
      const [introduccion] = await pool.query(
        "SELECT `idporgrupos`,`introduccion` FROM `porgrupos` WHERE porgrupos.mundial_idmundial = ?",
        id
      )
      res.json(introduccion)
    }
    
    
    

  },
  getEquipos:async (req, res) => {
    let id = req.params.id;
    const [equipos] = await pool.query(
      "SELECT `pais` FROM equiposparticipantes WHERE equiposparticipantes.mundial_idmundial = ?",
      id
    )
    res.json(equipos)
  },
  getGrupos:async (req, res) => {
    let id = req.params.id;
    if(id==2 || id==3){
      res.json("En este año se realizó eliminación directa, por lo tanto, no hay grupos a mostrar")
    }else{
      const [grupos] = await pool.query(
        "SELECT `grupo`,`pais` FROM grupos,equiposparticipantes WHERE grupos.equiposparticipantes_idequiposparticipantes = equiposparticipantes.idequiposparticipantes AND equiposparticipantes.mundial_idmundial = ? ORDER BY `grupos`.`grupo` ASC",
        id
        
      )
      res.json(grupos)
    }
  
  },
  getSedes:async (req, res) => {
    let id = req.params.id;
    const [sedes] = await pool.query(
      "SELECT `idsedes`,`lugar`,`estadio` FROM sedes WHERE sedes.mundial_idmundial = ?",
      id
    )
    res.json(sedes)
  },
  getPodios:async (req, res) => {
    let id = req.params.id;
    const [podios] = await pool.query(
      "SELECT `puesto`,`pais` FROM podio WHERE podio.mundial_idmundial = ?",
      id)

    res.json(podios)
  },  
  getGoleadores:async (req, res) => {
    let id = req.params.id;
    const [goleadores] = await pool.query(
      "SELECT `idgoleadores`,`jugador`,`seleccion`,`goles` FROM goleadores WHERE goleadores.mundial_idmundial = ?",
      id
    )
    res.json(goleadores)
  }

};

export default Mundial;
