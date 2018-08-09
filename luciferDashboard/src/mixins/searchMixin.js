export default {
    computed: {
        filtrarAsignatura: function(){
            return this.asignatura.filter((asignatura) => {
                return asignatura.nombre.match(this.search);
            });
        }
    }
};