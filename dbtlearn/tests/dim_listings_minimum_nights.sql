SELECT * FROM {{ ref('dim_listings_cleansed') }}
WHERE minimum_nights < 1
LIMIT 10
{# Si se hace en la carpeta test, es concreto para una tabla o modelo.
   En cambio, si se hace en un test macro, se convierte en un generic
   test que se puede incluir en el schema.yml                          #}