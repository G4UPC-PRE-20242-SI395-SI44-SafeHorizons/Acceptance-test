Feature: Notificaciones de cambios en el estado de alerta
    Como usuario, quiero recibir notificaciones cuando el estado de alerta cambie 
    para estar informado de la situación, por ejemplo, de advertencia a emergencia.
    
  Scenario: El usuario recibe una notificación de cambio de estado
    Given que el estado de alerta cambia
    And el usuario ha habilitado notificaciones para cambios de estado
    When el cambio de estado ocurre
    Then el usuario recibe una notificación actualizada sobre el nuevo estado

  Examples:
    | Estado anterior | Nuevo estado   |
    | Advertencia     | Emergencia     |
    | Emergencia      | Controlado     |

  Scenario: El usuario revisa el historial de cambios de estado
    Given que el usuario desea revisar los cambios de estado anteriores
    And el usuario accede al historial de alertas
    When el usuario consulta el historial
    Then el usuario puede ver una lista detallada de los cambios de estado y las fechas correspondientes

  Examples:
    | Fecha          | Cambio de estado       |
    | 12/10/2024     | Advertencia a emergencia |
    | 14/10/2024     | Emergencia a controlado |
