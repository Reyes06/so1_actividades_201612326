# Actividad 1 Sistemas Operativos 1 - 201612326

## Tipos de kernel

Es posible categorizar a los kernel en dos grandes grupos, siendos estos los kernel escenciales y los kernel no escenciales.

La diferencia entre estos grupos es si el kernel cumple con lo mínimo necesario para actuar como una capa de comunicación entre el software y el hardware o si por otro lado proporciona herramientas adicionales que no son necesariamente necesarias pero que pueden resultar de utilidad al usuario del sistema.

## Escenciales

### Kernel monolítico 

El nombre de monolítico hace referencia a que es un elemento de software de una sóla pieza, no está formado por elementos desacoplados que interactúan entre si sino que cada uno de sus componentes se encuentran fuertemente entrelazados entre si.

### Microkernel

Es un elemento de software el cual es el resultado de multiples elementos de kernel que cumplen una función en concreto y que se entrelazan para comunicarse entre elementos pero sin mezclar funciones y responsabilidades entre ellos.

### Kernel hibrido

Es un kernel que resulta de la combinación de elementos construidos como un kernel monolítico y otros elementos construidos como un microkernel.

## No Escenciales

### Nanokernel

Kernel de menores dimensiones a las que se proponen en un microkernel, lo que aumenta la fiabilidad de los elementos que lo componen.

### Exokernel

Kernel que propone una arquitectura de crecimiento en vertical, en donde los recursos de hardware pueden ser gestionados por software y no por el sistema operativo unicamente.

### Unikernel

Kernel orientado en la eliminación entre hardware y software, de manera que se optimice lo máxiimo posible los recursos con los que se cuentan. Mayoritariamente utilizado en soluciones de IoT.

### Anykernel

Kernel que toma como base un kernel monolítico pero agregando capas de seguridad y de herramientas que le brindan mayor comodidad al usuario.

## Tipo de kernel Linux

Linux entra dentro de la categoría de un kernel monolítico ya que ofrece lo mínimo necesario para brindar una capa de interacción entre hardware y software, además de que cada una de las piezas que lo conforman se encuentran estrechamente relacionadas

## User Mode vs Kernel Mode

Los sistemas operativos tienen dos maneras de permitir que algún elemento de software acceda a las capas más bajas del hardware, siendo estas en modo usuario o en modo kernel, a continuación se describen las diferencias entre ellos.
### User Mode

El modo usuario es el nivel de privilegios que otorga el sistema operativo a todos los programas con los que interactúa el usuario final. Este nivel de privilegio restringe lo que el software puede o no puede hacer, de manera que todas las acciones se realizan utilizando las syscalls que provee el kernel.

Se dice que este modo es restrictivo porque si hay alguna acción que se desee realizar que no se encuentre disponible por las syscalls del kernel esta acción no será posible realizarla.

### Kernel Mode

El modo kernel es el nivel de privilegios que otorga el sistema operativo a algún elemento de software que le permite acceder a los componentes de hardware sin la necesidad de utilizar las syscalls del kernel.

Este nivel de privilegio es únicamente otorgado a los elementos de software que son incorporados como parte del kernel del sistema operativo, de manera que elementos de software de más alto nivel tenga que utilizar las syscalls obligatoriamente.

## Referencias

https://www.thepowermba.com/es/blog/que-es-el-kernel-cual-es-su-trabajo-y-como-funciona

https://www.geeksforgeeks.org/difference-between-user-mode-and-kernel-mode/