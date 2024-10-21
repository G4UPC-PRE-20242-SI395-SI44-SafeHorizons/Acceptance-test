Feature: Envío de reportes de situación

    Como usuario, quiero poder reportar la situación en mi zona durante una emergencia 
    para que las autoridades locales puedan tomar acciones.
    
  Scenario: El usuario envía un reporte a través de un formulario
  Given el usuario está en una zona afectada por una emergencia
  And abre la aplicación SafeGuard
  When selecciona la opción "Enviar reporte"
  Then la aplicación le muestra un formulario para describir la situación y enviar el reporte

  Examples:
    | Tipo de emergencia | Descripción del reporte           |
    | Terremoto          | "Edificios derrumbados, sin acceso a vías principales" |
    | Inundación         | "Calles inundadas, vecinos atrapados en sus casas"     |

  Scenario: El usuario adjunta imágenes en su reporte
    Given el usuario está completando el formulario de reporte en la aplicación
    When selecciona la opción para adjuntar imágenes
    Then la aplicación permite cargar fotos desde su dispositivo para complementar el reporte

  Examples:
    | Tipo de emergencia | Imágenes adjuntas                     |
    | Terremoto          | "Fotos de edificios colapsados"       |
    | Inundación         | "Fotos de calles completamente inundadas" |
