Feature: Coordinación con servicios de emergencia
    Como usuario, quiero poder coordinarme fácilmente con los servicios de emergencia a través de la aplicación SafeGuard 
    para obtener ayuda rápida.

  Scenario: El usuario solicita asistencia desde la aplicación
    Given el usuario está en una situación de emergencia
    When selecciona la opción "Solicitar asistencia" en la aplicación
    Then SafeGuard envía automáticamente su ubicación a los servicios de emergencia

  Examples:
    | Tipo de emergencia | Ubicación compartida   |
    | Sismo              | 40.7128° N, 74.0060° W |
    | Inundación         | 34.0522° N, 118.2437° W |
    
  Scenario: El usuario recibe confirmación de su solicitud de asistencia
    Given el usuario ha solicitado asistencia a través de SafeGuard
    When los servicios de emergencia confirman la recepción de la solicitud
    Then el usuario recibe una notificación confirmando que la ayuda está en camino

  Examples:
    | Tipo de emergencia | Confirmación recibida |
    | Sismo              | Ayuda en camino       |
    | Inundación         | Rescate en curso      |
