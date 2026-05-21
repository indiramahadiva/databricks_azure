CREATE OR REFRESH STREAMING TABLE supply_chain_yt.bronze.metadata
  COMMENT "Raw access Dataco" AS
SELECT
  *
FROM
  STREAM read_files(
    "/Volumes/supply_chain_demo/default/raw/metadata",
    format => "csv",
    header => true,
    inferSchema => true
  )