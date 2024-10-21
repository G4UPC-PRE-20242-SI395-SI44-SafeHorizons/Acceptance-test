Feature: Envío de reportes de zonas afectadas
    Como usuario, quiero poder enviar reportes sobre zonas afectadas por un desastre 
    para ayudar a las autoridades a priorizar las áreas más críticas.
    
  Scenario: El usuario envía un reporte con su ubicación actual
    Given el usuario está en una zona afectada
    When selecciona la opción de "Enviar reporte de zona afectada"
    Then su ubicación se adjunta automáticamente al reporte enviado a las autoridades

  Examples:
    | Zona afectada | Ubicación compartida   |
    | Área 1        | 37.7749° N, 122.4194° W |
    | Área 2        | 51.5074° N, 0.1278° W   |

  Scenario: El usuario añade comentarios detallados sobre la situación
    Given el usuario está completando el reporte de zona afectada
    When selecciona la opción para añadir comentarios
    Then puede escribir una descripción detallada sobre la situación

  Examples:
    | Zona afectada | Comentario                          |
    | Área 1        | Derrumbes en varias calles          |
    | Área 2        | Inundaciones en los barrios bajos   |
