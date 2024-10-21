Feature: Consulta de contactos de emergencia

    Como usuario, quiero tener acceso rápido a una lista de contactos de emergencia locales, 
    para poder comunicarme en caso de desastre.

  Scenario: El usuario accede a contactos de emergencia desde el menú principal
    Given el usuario abre la aplicación
    And selecciona la opción de "Contactos de emergencia"
    When elige el contacto deseado
    Then la aplicación muestra el número de teléfono y permite realizar una llamada

  Examples:
    | Contacto de emergencia | Número de teléfono |
    | Bomberos               | 123-456-7890       |
    | Policía                | 098-765-4321       |

  Scenario: El usuario recibe contactos de emergencia a través de notificaciones
    Given el usuario ha configurado SafeGuard para recibir notificaciones importantes
    When ocurre una emergencia en su área
    Then recibe una notificación con la lista de contactos de emergencia locales

  Examples:
    | Tipo de emergencia | Contacto de emergencia recibido           |
    | Terremoto          | "Bomberos: 123, Policía: 195"             |
    | Inundación         | "Protección Civil: 555-1234, Cruz Roja: 555-5678" |
