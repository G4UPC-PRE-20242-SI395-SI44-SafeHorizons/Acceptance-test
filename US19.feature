Feature: Actualización en tiempo real de datos de riesgo
    Como usuario, quiero que los datos sobre el riesgo se actualicen en tiempo real 
    para obtener la información más precisa.

  Scenario: El usuario recibe datos actualizados en tiempo real
    Given que los datos de riesgo se actualizan constantemente
    And el usuario tiene acceso a los datos en tiempo real
    When el usuario revisa la sección de datos de riesgo
    Then el usuario ve la información más reciente y precisa disponible

  Examples:
    | Tipo de riesgo | Nivel de riesgo |
    | Sismo          | Alto            |
    | Inundación     | Medio           |

  Scenario: El usuario recibe una notificación de actualización de datos
    Given que hay una actualización importante en los datos de riesgo
    And el usuario ha habilitado notificaciones para actualizaciones
    When la actualización ocurre
    Then el usuario recibe una notificación informando de los nuevos datos y cambios relevantes

  Examples:
    | Tipo de riesgo | Cambio en el nivel |
    | Sismo          | Moderado a alto    |
    | Inundación     | Bajo a medio       |
