Feature: Recepción de información actualizada sobre rutas seguras

    Como usuario, quiero recibir actualizaciones en tiempo real sobre las rutas seguras disponibles para evacuar en caso de emergencia, 
    para poder reaccionar rápidamente.
    
  Scenario: El usuario recibe rutas seguras por notificación push
    Given el usuario está en una zona afectada por una emergencia
    When SafeGuard recibe información actualizada sobre rutas seguras
    Then el usuario recibe una notificación push con las rutas sugeridas

  Examples:
    | Tipo de emergencia | Ruta segura recomendada       |
    | Sismo              | Calle A -> Avenida B          |
    | Inundación         | Avenida C -> Zona alta D      |
  Scenario: El usuario accede a rutas seguras desde el mapa interactivo
    Given el usuario abre la aplicación durante una emergencia
    When selecciona la opción de "rutas seguras" en el mapa interactivo
    Then el mapa muestra las rutas de evacuación actualizadas en tiempo real

  Examples:
    | Tipo de emergencia | Rutas seguras mostradas              |
    | Terremoto          | Ruta hacia el parque más cercano     |
    | Incendio           | Ruta hacia la avenida principal      |
