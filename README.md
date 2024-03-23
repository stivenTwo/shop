# Convenciones de Git

En este repositorio, seguimos algunas convenciones específicas al hacer commits para mantener un historial de cambios limpio y comprensible. A continuación se detallan nuestras convenciones principales:

## Separación del título y el cuerpo

Un mensaje de commit típicamente se divide en un título y un cuerpo separados por una línea en blanco. El título debe ser breve y descriptivo, mientras que el cuerpo puede proporcionar detalles adicionales si es necesario.

## Longitud del mensaje

Es recomendable mantener el título del commit corto, generalmente menos de 50 caracteres, para que sea fácil de leer en varios contextos. El cuerpo del mensaje puede ser más largo, pero se debe evitar que sea excesivamente largo y preferiblemente se deberían utilizar párrafos concisos.

## Imperativo en presente

El título del commit debe comenzar con un verbo en tiempo presente en lugar de pasado, y debe describir lo que se hace, no lo que se hizo. Por ejemplo, "Corregir el error de ortografía" en lugar de "Corregido el error de ortografía".

## Descripción clara y concisa

El cuerpo del mensaje debe proporcionar suficiente contexto para que otros desarrolladores comprendan por qué se realizó el cambio y cómo afecta al código. Se pueden incluir referencias a problemas de seguimiento, solicitudes de extracción relacionadas o explicaciones de diseño.

## Referencias a problemas y solicitudes de extracción

Si el commit se relaciona con un problema específico o una solicitud de extracción, es útil incluir referencias a estos en el mensaje de commit para vincular el trabajo realizado con el contexto más amplio del proyecto.

## Limitar a una tarea o cambio por commit

Es una buena práctica realizar commits pequeños y atómicos, cada uno enfocado en una tarea o cambio específico. Esto facilita la revisión del código y la identificación de los cambios relevantes.

## Ejemplo de Commit
```markdown
git commit -m "Añadir función de búsqueda de usuarios

Esta función permite a los usuarios buscar otros usuarios por nombre de usuario o dirección de correo electrónico. Se implementó una barra de búsqueda en la interfaz de usuario y se agregó lógica en el backend para manejar las consultas de búsqueda.

Se resuelve #45"


