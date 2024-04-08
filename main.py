#%%
#IMPORTACIONES:
from src import soporte_limpieza as sp

#Abrimos CSV:
data = sp.leer_cvs("files", "HR RAW DATA")

#Cambiamos el nombre de las columnas:
sp.col_capitalizar(data)

#Ponemos en minúsculas el contenido de DF
sp.minusculas(data)

#Limpiamos los valores para mayor homogeneidad:
sp.limpiar_valores(data)
sp.limpiar_valor(data, "Environmentsatisfaction")

#Exploramos si hay duplicados en el DF:
sp.explorar_duplicados(data)

#Eliminamos los duplicados:
sp.eliminar_duplicados(data)

#Eliminamos filas que tienen bastantes valores nulos:
sp.eliminar_filas(data, 1586, 1606)

#Eliminar las columnas deseadas:
col_eliminar = ['Age', 'Department', 'Employeecount', 'Monthlyincome', 
                    'Over18', 'Standardhours', 'Sameasmonthlyincome', 'Salary', 'Roledepartament', 'Numberchildren']
sp.eliminar_columnas(data, col_eliminar)

#Modificar valores:
genero = {0:'H', 1:'M'}
marital = {'marreid':'married'}
remote = {'true':'yes', '1':'yes', 'false':'no', '0':'no'}

sp.aplicar_map(data, 'Gender', genero)
sp.reemplazar(data, 'Maritalstatus', marital)
sp.aplicar_map(data, 'Remotework', remote)

#Cambiar a números positivos
sp.negativos(data, 'Distancefromhome')

#Columnas categóricas por unknown:
categoricas = ['Businesstravel','Overtime','Educationfield','Maritalstatus', 'Remotework']
sp.rellenar_nulos(data, categoricas, "unknown")

#Cambiamos el tipo de dato de las columnas:
lista_int = ['Education', 'Employeenumber', 'Performancerating', 'Totalworkingyears', 'Worklifebalance', 'Yearsincurrentrole']
lista_float = ['Dailyrate', 'Hourlyrate', 'Percentsalaryhike']
sp.cambiar_dato(data, lista_int, 'int')
sp.cambiar_dato(data, lista_float, 'float')

#Columnas numéricas por la mediana:
numericas = ['Environmentsatisfaction',
    'Jobinvolvement', 'Jobsatisfaction', 'Performancerating', 'Relationshipsatisfaction',
    'Stockoptionlevel', 'Trainingtimeslastyear','Worklifebalance', 'Dailyrate', 'Yearsatcompany', 'Hourlyrate']
sp.rellenar_mediana(data, numericas)

#Asignamos un número número de employee_id:
print("Asignamos un nuevo número de Employee_id:")
sp.copiar_columna(data, 'Employeenumber', 'Employee_id')
print("Rellenamos los valores nulos por 0")
sp.rellenar_nulos(data, 'Employee_id', 0)
print("Como hay numeros duplicados también los rellenamos con 0:")
data.loc[data["Employee_id"].duplicated(),'Employee_id'] = 0
#Metemos en un conjunto los numeros de Employee_id 
conjunto = set(data['Employee_id'].tolist())
data = data.apply(sp.rellenar_id, conjunto=conjunto, axis=1)
print(f"En la columna Employee_id tenemos {data['Employee_id'].nunique()} valores únicos y {data['Employee_id'].isna().sum()} valores nulos.")
#%%
#Volvemos a comprobar si hay nulos o duplicados:
sp.explorar_duplicados(data)
sp.explorar_nulos(data)

#Guardar
sp.guardado_csv(data, 'Files', 'data_final')

#%%



# %%
