# EcoCycleDB

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/d8019314-3bcb-4e81-92d9-b998141a1af1)

EcoReciclaDB es una base de datos diseñada para gestionar información relacionada con el reciclaje y la sostenibilidad. Esta base de datos almacena datos sobre usuarios, materiales reciclables, puntos de reciclaje, 
depósitos de materiales reciclados y registros de reciclaje. Permite a las organizaciones y usuarios individuales registrar y realizar un seguimiento de sus actividades de reciclaje, incluyendo la cantidad de materiales 
reciclados, los lugares donde se reciclaron y las fechas de reciclaje. EcoReciclaDB promueve la conciencia ambiental y facilita la adopción de prácticas de reciclaje responsables, contribuyendo así a la preservación del 
medio ambiente y la reducción de la huella ecológica.

# **Diagrama de clases**

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/7e18cc50-a27a-4d9e-8c04-d13e6985ac03)

Usuarios: Esta clase almacena información sobre los usuarios que interactúan con la plataforma de reciclaje. Cada registro en esta tabla representa un usuario y puede contener detalles como su nombre, apellido, dirección de correo electrónico y contraseña. Esta información se utiliza para autenticar a los usuarios y gestionar sus actividades de reciclaje.

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/63c04e70-1506-478a-956e-f92d989f5c89)

Materiales: Esta clase registra los diferentes tipos de materiales reciclables que pueden ser depositados en los puntos de reciclaje. Cada registro en esta tabla puede contener información sobre un tipo específico de material, como su nombre, descripción y tipo (por ejemplo, papel, plástico, vidrio, etc.). Esta información ayuda a los usuarios a identificar qué materiales pueden reciclarse y a los operadores de los puntos de reciclaje a gestionar sus inventarios.

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/f15f2584-409c-4184-a1ca-1a4db1c902a3)

PuntosReciclaje: Esta clase almacena datos sobre los puntos de reciclaje donde los usuarios pueden depositar sus materiales reciclables. Cada registro en esta tabla puede contener información sobre un punto de reciclaje, como su nombre, dirección, coordenadas de ubicación (latitud y longitud), etc. Estos puntos de reciclaje se utilizan como ubicaciones físicas donde los usuarios pueden llevar sus materiales para su reciclaje.

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/e5fbd564-eb5e-46ad-b2af-3b32960327f7)

Depositos: Esta clase registra los depósitos de materiales reciclados realizados por los usuarios en los puntos de reciclaje. Cada registro en esta tabla puede contener detalles sobre un depósito específico, como el usuario que realizó el depósito, el material reciclado depositado, la cantidad depositada y la fecha del depósito. Esta información ayuda a realizar un seguimiento de las contribuciones individuales al reciclaje y a gestionar los inventarios de materiales reciclados en los puntos de reciclaje.

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/c8f3ed84-d2b5-47ff-8b91-b1515ec4c648)

RegistroReciclaje: Esta clase registra los detalles de cada evento de reciclaje realizado por los usuarios en los puntos de reciclaje. Cada registro en esta tabla puede contener información sobre un evento de reciclaje, incluyendo el usuario que realizó el reciclaje, el punto de reciclaje donde se realizó, el material reciclado, la cantidad reciclada y la fecha del reciclaje. Esta información se utiliza para realizar un seguimiento de las actividades de reciclaje de los usuarios y para generar informes sobre el rendimiento de los puntos de reciclaje.

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/2b8dfd89-ab37-4a33-b97a-170950128cc3)

# Consulta de Total Reciclado por Punto de Reciclaje y Material
Esta consulta proporciona información sobre la cantidad total reciclada de cada material en cada punto de reciclaje. Es útil para realizar un seguimiento del rendimiento del reciclaje en diferentes ubicaciones y para
diferentes tipos de materiales.

Descripción de la Consulta
La consulta se basa en las siguientes tablas de la base de datos:

RegistroReciclaje: Contiene información sobre cada registro de reciclaje, incluyendo el punto de reciclaje, el material reciclado y la cantidad reciclada.
PuntosRe: Almacena información sobre los puntos de reciclaje, como el nombre, la dirección y la ubicación geográfica.
Materiales: Contiene detalles sobre los materiales reciclados, como el nombre, la descripción y el tipo.

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/1678807b-6132-49c6-b499-eab3f6b29504)

Resultados
La consulta devolverá una lista de resultados que incluyen:

punto_reciclaje: El nombre del punto de reciclaje.
material: El nombre del material reciclado.
total_reciclado: La cantidad total reciclada de ese material en ese punto de reciclaje.
Los resultados estarán ordenados de mayor a menor cantidad total reciclada.

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/1ec639f3-0ea5-4f15-9aeb-784d530854bb)

# Consulta para Obtener Detalles de Reciclaje

Se proporciona una consulta SQL para obtener detalles específicos sobre las transacciones de reciclaje. La consulta devuelve información sobre cada registro de reciclaje, incluyendo el nombre del punto de reciclaje, el tipo de material reciclado, la cantidad reciclada, la fecha de registro y los detalles del usuario que realizó el reciclaje.

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/a7404969-d6f0-447d-ad2f-b7ffaab18e49)

![image](https://github.com/andreec2/EcoCycleDB/assets/99145156/f04091fa-ffbc-4e8b-a675-0268c248f9a1)



