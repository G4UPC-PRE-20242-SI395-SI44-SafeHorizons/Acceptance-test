Feature: Historial de alertas recibidas
    Como usuario, quiero poder acceder a un historial de alertas anteriores, 
    para revisar información relevante sobre riesgos pasados y estar mejor preparado.
    
  Scenario: Visualización de alertas pasadas con detalles
    Given el usuario ha recibido alertas previas
    And ha accedido al historial de alertas en la aplicación
    When el usuario selecciona el historial de alertas
    Then se muestra la fecha, hora, tipo de alerta y mapas de riesgo asociados a cada alerta

  Examples:
    | Fecha       | Tipo de alerta | Nivel de riesgo |
    | 10/10/2024  | Sismo          | Alto            |
    | 11/10/2024  | Inundación     | Medio           |

  Scenario: Historial sin alertas recientes
    Given el usuario no ha recibido ninguna alerta previa
    When el historial no contiene datos de alertas anteriores
    Then se muestra el mensaje "No existen alertas previas en el historial" y no se despliega ninguna información adicional

    Examples:
    | Mensaje mostrado                    |
    | "No existen alertas previas en el historial" |

  

