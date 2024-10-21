Feature: Acceso a mensajes de alerta enviados por autoridades
    Como usuario, quiero tener acceso a los mensajes de alerta enviados por las autoridades locales 
    para estar informado de las decisiones y recomendaciones.

Scenario: El usuario visualiza mensajes de alerta desde la pantalla principal
  Given el usuario recibe una alerta de las autoridades locales
  When abre SafeGuard
  Then puede ver el mensaje completo en la sección de alertas recientes

Examples:
  | Tipo de alerta | Mensaje mostrado                         |
  | Terremoto      | "Evacúa hacia las zonas seguras al sur de la ciudad" |
  | Inundación     | "Dirígete a áreas altas, riesgo de inundación grave" |

Scenario: El usuario recibe mensajes de alerta por correo electrónico
  Given el usuario ha configurado SafeGuard para recibir notificaciones por correo
  When ocurre una emergencia en su área
  Then SafeGuard envía un correo con las alertas y recomendaciones de las autoridades

Examples:
  | Tipo de alerta | Asunto del correo                       |
  | Terremoto      | "Alerta: Sismo detectado, recomendaciones de evacuación" |
  | Inundación     | "Alerta: Inundación cercana, medidas de seguridad"       |
