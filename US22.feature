Feature: Envío de alertas a través de diferentes medios

    Como usuario, quiero recibir alertas a través de diferentes medios (SMS, notificaciones push, email) 
    para estar informado rápidamente en caso de emergencias.

  Scenario: El usuario recibe alertas por SMS
    Given el usuario se ha registrado en SafeGuard
    And ha configurado su número de teléfono en la aplicación
    When ocurre una emergencia en su área
    Then SafeGuard envía una alerta por SMS con los detalles del evento

  Examples:
    | Tipo de evento | Detalles del mensaje |
    | Sismo          | Magnitud 7.2         |
    | Inundación     | Altura del agua 1.5m |

  Scenario: El usuario recibe notificaciones push
    Given el usuario tiene la aplicación instalada y habilitadas las notificaciones
    When ocurre una emergencia en su área
    Then SafeGuard envía una notificación push con los detalles del evento

  Examples:
    | Tipo de emergencia | Notificación recibida   |
    | Terremoto          | "Sismo detectado en tu área" |
    | Inundación         | "Inundación cercana, toma precauciones" |

