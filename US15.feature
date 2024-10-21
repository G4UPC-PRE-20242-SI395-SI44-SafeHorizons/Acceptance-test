Feature: Visualización de mapas de riesgo
    Como usuario, quiero ver mapas de riesgo actualizados 
    para entender las áreas afectadas y potencialmente peligrosas.
    
  Scenario: El usuario accede al mapa de riesgo
    Given que el usuario está en la sección de mapas de riesgo
    And el mapa de riesgo está actualizado con la información más reciente
    When el usuario visualiza el mapa
    Then el mapa muestra las áreas afectadas y las zonas de riesgo claramente marcadas

  Examples:
    | Tipo de desastre | Zonas afectadas            |
    | Sismo            | Distrito A, Ciudad X       |
    | Inundación       | Distrito B, Ciudad Y       |

  Scenario: El usuario usa filtros en el mapa
    Given que el usuario está en la sección de mapas de riesgo
    And el usuario tiene opciones para aplicar filtros por tipo de desastre
    When el usuario selecciona y aplica un filtro
    Then el mapa muestra únicamente la información relevante para el tipo de desastre seleccionado

  Examples:
    | Filtro aplicado | Zonas mostradas          |
    | Sismos          | Ciudad X, Ciudad Y       |
    | Incendios       | Ciudad Z                 |
