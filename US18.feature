Feature: Alertas de proximidad
    Como usuario, quiero recibir alertas si un desastre natural se aproxima a mi ubicación actual 
    para poder tomar medidas preventivas a tiempo.
    
  Scenario: El usuario recibe una alerta de proximidad
    Given que se detecta un desastre en las cercanías de la ubicación del usuario
    And el usuario ha habilitado alertas de proximidad
    When el desastre se acerca a la ubicación del usuario
    Then el usuario recibe una notificación informándole de la proximidad del desastre

  Examples:
    | Ubicación del usuario | Tipo de alerta     |
    | Ciudad A              | Sismo a 5 km       |
    | Ciudad B              | Inundación a 2 km  |

  Scenario: El usuario ajusta el radio de proximidad
    Given que el usuario quiere ajustar el rango de proximidad para las alertas
    And el usuario configura el radio de proximidad en la configuración
    When un desastre ocurre dentro del radio configurado
    Then el usuario recibe una notificación basada en el nuevo radio de proximidad

  Examples:
    | Radio configurado | Tipo de alerta          |
    | 5 km              | Sismo Magnitud 6.0      |
    | 10 km             | Inundación              |
