﻿SELECT distinct [SOURCE_CODE], [TARGET_CONCEPT_ID]
FROM {sc}.[SOURCE_TO_CONCEPT_MAP]
where source_vocabulary_id in ('JNJ_CPRD_PROV_SPEC', 'JNJ_CPRD_PROV_CMS2')