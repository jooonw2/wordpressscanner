# WordPress Security Scanner

Este script realiza un conjunto de escaneos de seguridad en un sitio web basado en WordPress utilizando herramientas comunes como **Nmap**, **Nikto** y **WPScan**. Es útil para administradores de sistemas, desarrolladores y especialistas en seguridad que deseen realizar auditorías de seguridad en sitios de WordPress.

## Características

- Realiza un **escaneo de puertos y servicios** con Nmap.
- Realiza un **escaneo de vulnerabilidades web** con Nikto.
- Realiza un **escaneo de vulnerabilidades específicas de WordPress** con WPScan.

## Requisitos

- **Nmap**: herramienta de escaneo de redes.
- **Nikto**: escáner de seguridad web.
- **WPScan**: herramienta de escaneo de vulnerabilidades específicas de WordPress.
- **Token API de WPScan**: se requiere un token de API para utilizar WPScan.

### Instalación de dependencias

Si no tienes instalados los programas requeridos, puedes instalarlos con los siguientes comandos (dependiendo de tu sistema operativo):

- Para **Nmap**:
  ```bash
  sudo apt-get install nmap
  ```

- Para **Nikto**:
  ```bash
  sudo apt-get install nikto
  ```

- Para **WPScan**:
  ```bash
  sudo apt-get install wpscan
  ```

## Uso

Ejecuta el script desde la línea de comandos proporcionando la URL del sitio web de WordPress.

### Argumentos

- **$1** (obligatorio): URL del sitio de WordPress a escanear (sin `https://`).

### Ejemplo de Uso

Para ejecutar el script, pasa la URL de un sitio WordPress como argumento:

```bash
./wordpressscanner.sh example.com
```

Este comando realizará lo siguiente:

1. Escaneará el dominio utilizando **Nmap** para detectar puertos y servicios abiertos.
2. Ejecutará **Nikto** para buscar vulnerabilidades comunes en aplicaciones web.
3. Realizará un **WPScan** en el sitio de WordPress para buscar vulnerabilidades específicas relacionadas con WordPress.

### Ejemplo de Salida

La salida de este script generará tres archivos:

1. **nmap.txt**: Contendrá el resultado del escaneo de Nmap, mostrando los puertos y servicios encontrados.
2. **nikto.txt**: Contendrá el resultado del escaneo de Nikto, mostrando posibles vulnerabilidades en la aplicación web.
3. **wpscan.txt**: Contendrá el resultado del escaneo de WPScan, con información sobre vulnerabilidades relacionadas con WordPress.

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.

---

**Licencia MIT**

```plaintext
Copyright (c) 2024

Por la presente se concede permiso, de forma gratuita, a cualquier persona que obtenga una copia de este software y los archivos de documentación asociados (el "Software"), para utilizar el Software sin restricciones, incluyendo sin limitación los derechos de usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender copias del Software, y permitir a las personas a las que se les proporcione el Software que lo hagan, sujeto a las siguientes condiciones:

El aviso de copyright anterior y este aviso de permiso se incluirán en todas las copias o partes sustanciales del Software.

EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O IMPLÍCITA, INCLUYENDO PERO NO LIMITADO A GARANTÍAS DE COMERCIABILIDAD, IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO INFRACCIÓN. EN NINGÚN CASO LOS AUTORES O TITULARES DEL COPYRIGHT SERÁN RESPONSABLES DE NINGUNA RECLAMACIÓN, DAÑO U OTRA RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRO TIPO, QUE SURJA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTRO TIPO DE ACCIONES EN EL SOFTWARE.
```
