﻿IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = '{sc}' AND  TABLE_NAME = '_chunks')) BEGIN DROP TABLE {sc}.[_chunks] END