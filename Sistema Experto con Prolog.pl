/* Monty y litos <3 */
/* Edgar bryan lopez mora , carlos raul romero martinez */
/*formas de consumir*/
se_pueden_cosumir(infusion).
se_pueden_cosumir(jarabe).
se_pueden_cosumir(mareacion).
se_pueden_cosumir(cocimiento).
se_pueden_cosumir(tintura).
se_pueden_cosumir(jugo).
se_pueden_cosumir(horchata).
se_pueden_cosumir(directo).

/* plantas*/
planta(llanten).
planta(madreselva).
planta(maguey).
planta(diente_de_leon).
planta(digitaria).
planta(doradilla).
/*Organos*/
organos(ojos).
organos(estomago).
organos(higado).
organos(rinones).
organos(corazon).
organos(bejiga).
/*usasion*/
usasion(diente_de_leon,cocimiento).
usasion(llanten,cocimiento).
usasion(madreselva,directo).
usasion(doradilla,cocimiento).
usasion(maguey,directo).
usasion(digitaria,directo).

/*malestar y enfermedaddes*/
malestar_de_oido(llanten).
malestar_de_ojos(llanten).
inflamaciones_bucales(madreselva).
gripes(madreselva).
anemicos(diente_de_leon).
depurativo(diente_de_leon).
problemas_cardiaco(digitaria).
epilepsia(digitaria).
hirritacion_del_higado(doradilla).
dano_en_vejiga(doradilla).
tubercolosis(maguey).
reumatismo(maguey).
/**/
conjutivitis(X,Y):-planta(X),se_pueden_cosumir(Y),malestar_de_oido(X),usasion(X,Y).
inflamacion_ojos(X,Y):-planta(X),se_pueden_cosumir(Y),malestar_de_ojos(X),usasion(X,Y).
mucositis(X,Y):-planta(X),se_pueden_cosumir(Y),inflamaciones_bucales(X),usasion(X,Y).
influenza(X,Y):-planta(X),se_pueden_cosumir(Y),gripes(X),usasion(X,Y).
anemia(X,Y):-planta(X),se_pueden_cosumir(Y),anemicos(X),usasion(X,Y).
depura_la_saangre(X,Y):-planta(X),se_pueden_cosumir(Y),depurativo(X),usasion(X,Y).
cardíacas(X,Y):-planta(X),se_pueden_cosumir(Y),problemas_cardiaco(X),usasion(X,Y).
problemas_epilipticos(X,Y):-planta(X),se_pueden_cosumir(Y),epilepsia(X),usasion(X,Y).
problema_epatico(X,Y):-planta(X),se_pueden_cosumir(Y),hirritacion_del_higado(X),usasion(X,Y).
problemas_de_bejiga(X,Y):-planta(X),se_pueden_cosumir(Y),dano_en_vejiga(X),usasion(X,Y).
problemas_de_tubercolosis(X,Y):-planta(X),se_pueden_cosumir(Y),tubercolosis(X),usasion(X,Y).
problemas_reumaticos(X,Y):-planta(X),se_pueden_cosumir(Y),reumatismo(X),usasion(X,Y).
