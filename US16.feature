Feature: Alertas personalizables
    Como usuario, quiero personalizar el tipo y la frecuencia de las alertas que recibo 
    para adaptarlas a mis necesidades.
    
  Scenario: El usuario ajusta las preferencias de alerta
    Given que el usuario está en la configuración de alertas
    And el usuario ajusta la frecuencia y tipo de alertas
    When el usuario guarda los cambios
    Then el usuario recibe alertas según las nuevas configuraciones

  Examples:
    | Frecuencia de alerta | Tipo de alerta  |
    | Cada 1 hora          | Solo severas    |
    | Cada 30 minutos      | Todas           |

  Scenario: El usuario activa alertas para áreas específicas
    Given que el usuario desea recibir alertas para ubicaciones específicas
    And el usuario selecciona las áreas de interés en la configuración
    When se emite una alerta en una de las áreas seleccionadas
    Then el usuario recibe la notificación correspondiente a esas áreas

  Examples:
    | Área seleccionada | Tipo de alerta recibido |
    | Ciudad X          | Sismo Magnitud 6.5      |
    | Ciudad Y          | Inundación              |
