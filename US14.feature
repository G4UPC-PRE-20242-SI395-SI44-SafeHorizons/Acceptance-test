Feature: Recepción de alertas en tiempo real
    Como usuario, quiero recibir alertas en tiempo real sobre desastres naturales 
    para estar informado de manera oportuna.

  Scenario: El usuario recibe una alerta de desastre
    Given que se ha emitido una alerta de desastre
    And el usuario ha habilitado las notificaciones en la aplicación
    When la alerta es emitida
    Then el usuario recibe una notificación en su dispositivo con detalles del desastre

  Examples:
    | Tipo de desastre | Detalles              |
    | Sismo            | Magnitud 7.2, epicentro a 10 km |
    | Tsunami          | Olas de hasta 10 metros |

  Scenario: El usuario configura preferencias de alerta
    Given que el usuario está en la configuración de alertas
    And el usuario selecciona las categorías de alertas que desea recibir
    When se emite una alerta que coincide con las preferencias
    Then el usuario recibe la notificación de acuerdo a sus configuraciones

  Examples:
    | Categoría de alerta | Notificación recibida                  |
    | Sismos              | Magnitud 6.5, epicentro a 20 km        |
    | Incendios           | Incendio forestal a 30 km de distancia |
