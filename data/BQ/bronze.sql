-- Description: Create external tables for bronze dataset in BigQuery
-- please do not forget to replace the bucket path

-- creating a schema  if it is not existed
CREATE SCHEMA IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset`
OPTIONS (location = 'US');


CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.departments_ha` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-a/departments/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.encounters_ha` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-a/encounters/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.patients_ha` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-a/patients/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.providers_ha` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-a/providers/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.transactions_ha` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-a/transactions/*.json']
);

---------------------------------------------------------------------------------------------------------------------------

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.departments_hb` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-b/departments/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.encounters_hb` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-b/encounters/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.patients_hb` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-b/patients/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.providers_hb` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-b/providers/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.transactions_hb` 
OPTIONS (
  format = 'JSON',
  uris = ['gs://healthcare-bucket-27022025/landing/hospital-b/transactions/*.json']
);

---------------------------------------------------------------------------------------------------------------------------


CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.claims` 
OPTIONS (
  format = 'CSV',
  uris = ['gs://healthcare-bucket-27022025/landing/claims/*.csv']
);

---------------------------------------------------------------------------------------------------------------------------



-- CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.providers_hb` 
-- OPTIONS (
--   format = 'JSON',
--   uris = ['gs://healthcare-bucket-27022025/landing/claims/*.json']
-- );

CREATE EXTERNAL TABLE IF NOT EXISTS `project-275c7543-3087-49e0-a9a.bronze_dataset.cptcodes` 
OPTIONS (
  format = 'CSV',
  uris = ['gs://healthcare-bucket-27022025/landing/cptcodes/*.csv']
);