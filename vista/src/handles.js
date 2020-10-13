 // Get
 const peticionGet = async () =>{
    await axios.get(baseUrl)
    .then(response =>{
      setData(response.data);
    })
  }
//  Post
const peticionPost = async () =>{
  const { nombre, lanzamiento, desarrollador } = frameworkSeleccionado;
  var f = new FormData();
  f.append('nombre', nombre);
  f.append('lanzamiento', lanzamiento);
  f.append('desarrollador', desarrollador);
  f.append('METHOD', 'POST');
  await axios.post(baseUrl, f)
  .then(response =>{
    setData(data.concat(response.data));
    abrirCerrarModalInsertar();
  })
}
// PUT
const peticionPut = async () =>{
  const { id,nombre, lanzamiento, desarrollador } = frameworkSeleccionado;
  var f = new FormData();
  f.append('nombre', nombre);
  f.append('lanzamiento', lanzamiento);
  f.append('desarrollador', desarrollador);
  f.append('METHOD', 'PUT');
  await axios.post(baseUrl, f, {params: {id: id}})
  .then(response =>{
    let dataNueva = data;
    dataNueva.map(framework =>{
      if(framework.id === id){
        framework.nombre = nombre;
        framework.lanzamiento = lanzamiento;
        framework.desarrollador = desarrollador;
      }
    });
    setData(dataNueva);
    abrirCerrarModalEditar();
  })
}
// DELETE
const peticionDelete=async()=>{
  var f = new FormData();
  f.append("METHOD", "DELETE");
  await axios.post(baseUrl, f, {params: {id: frameworkSeleccionado.id}})
  .then(response=>{
    setData(data.filter(framework=>framework.id!==frameworkSeleccionado.id));
    abrirCerrarModalEliminar();
  }).catch(error=>{
    console.log(error);
  })
}

// 