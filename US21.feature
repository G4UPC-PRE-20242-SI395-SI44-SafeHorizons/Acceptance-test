Feature: Personalización de alertas por tipo de evento

    Como usuario, quiero personalizar las alertas que recibo según el tipo de evento (terremotos, inundaciones, huaicos) 
    para recibir solo la información relevante para mi área.

  Scenario: Personalización aplicada
    Given el usuario ha configurado sus preferencias para recibir alertas solo de ciertos tipos de eventos
    When ocurre un evento que coincide con las preferencias del usuario
    Then SafeGuard envía una alerta solo para ese tipo de evento específico y omite otros tipos de alertas

  Examples:
    | Evento configurado | Tipo de evento recibido |
    | Terremotos         | Sismo                   |
    | Inundaciones       | Inundación              |

  Scenario: Alertas simplemente registradas
    Given el usuario configuró las alertas que prefiere
    When sucede algún tipo de evento variado al de sus preferencias
    Then la aplicación registra por cierto tiempo dicho evento, sin embargo no notifica al usuario

    Examples:
    | Tipo de evento  | Preferencias del usuario | Evento registrado |
    | Inundación      | Solo terremotos          | Sí                |
    | Terremoto       | Solo huracanes           | Sí                |
