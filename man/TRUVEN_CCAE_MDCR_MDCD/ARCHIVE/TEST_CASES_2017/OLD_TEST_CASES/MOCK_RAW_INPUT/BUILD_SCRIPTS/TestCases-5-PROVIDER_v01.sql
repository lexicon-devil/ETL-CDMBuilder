/*501*/
INSERT            [dbo].[FACILITY_HEADER](AGE, AGEGRP, BILLTYP, CAP_SVC, CASEID, COB, COINS, COPAY, DATATYP, DEDUCT, DOBYR, DSTATUS, DX1, DX2, DX3, DX4, DX5, DX6, 
                         DX7, DX8, DX9, EECLASS, EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, FACHDID, HLTHPLAN, INDSTRY, MDC, MHSACOVG, MSA, NETPAY, 
                         NTWKPROV, PAIDNTWK, PDDATE, PHYFLAG, PLANKEY, PLANTYP, PROC1, PROC2, PROC3, PROC4, PROC5, PROC6, PROVID, REGION, RX, SEQNUM, SEX, 
                         STDPLAC, STDPROV, SVCDATE, TSVCDAT, VERSION, WGTKEY, YEAR, EFAMID)
VALUES        (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                          NULL, NULL, 501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
                         1234567,NULL,NULL,NULL,NULL,NULL,220,NULL,NULL,NULL,NULL,NULL,NULL)

/*502*/
INSERT            [dbo].[OUTPATIENT_SERVICES](AGE, AGEGRP, CAP_SVC, COB, COINS, COPAY, DATATYP, DEDUCT, DOBYR, DX1, DX2, DX3, DX4, DX5, EECLASS, EESTATU, EGEOLOC, 
                         EIDFLAG, EMPREL, ENRFLAG, ENROLID, FACHDID, FACPROF, HLTHPLAN, INDSTRY, MDC, MHSACOVG, MSA, NETPAY, NTWKPROV, PAIDNTWK, PAY, PDDATE, 
                         PHYFLAG, PLANKEY, PLANTYP, PROC1, PROCGRP, PROCMOD, PROCTYP, PROVID, QTY, REGION, REVCODE, RX, SEQNUM, SEX, STDPLAC, STDPROV, SVCDATE, 
                         SVCSCAT, TSVCDAT, VERSION, WGTKEY, YEAR, EFAMID)
VALUES        (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 502,
						 NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
                         2345678,NULL,NULL,NULL,NULL,NULL,NULL,NULL,285,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

/*503*/
INSERT            [dbo].[INPATIENT_SERVICES](ADMDATE, ADMTYP, AGE, AGEGRP, CAP_SVC, CASEID, COB, COINS, COPAY, DATATYP, DEDUCT, DISDATE, DOBYR, DSTATUS, DX1, DX2,
                          DX3, DX4, DX5, EECLASS, EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, FACHDID, FACPROF, HLTHPLAN, INDSTRY, MDC, MHSACOVG, MSA, 
                         NETPAY, NTWKPROV, PAIDNTWK, PAY, PDDATE, PDX, PHYFLAG, PLANKEY, PLANTYP, PPROC, PROC1, PROCMOD, PROCTYP, PROVID, QTY, REGION, REVCODE, 
                         RX, SEQNUM, SEX, STDPLAC, STDPROV, SVCDATE, SVCSCAT, TSVCDAT, VERSION, WGTKEY, YEAR, EFAMID, DRG)
VALUES        (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                          NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
                         NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3456789, NULL, NULL, NULL, 
                         NULL, NULL, NULL, NULL, 540, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

/*504*/
INSERT            [dbo].[LAB](ENROLID, SEQNUM, ABNORMAL, AGEGRP, EECLASS, EESTATU, EIDFLAG, EMPREL, ENRFLAG, HLTHPLAN, INDSTRY, MHSACOVG, PHYFLAG, PROCTYP, 
                         REGION, RX, SEX, EGEOLOC, MDC, VERSION, RESLTCAT, DX1, PROC1, PDDATE, SVCDATE, MSA, ORDERID, PROVID, REFHIGH, REFLOW, RESULT, TESTCNT, 
                         DOBYR, PLANKEY, STDPROV, WGTKEY, YEAR, AGE, DATATYP, PLANTYP, STDPLAC, LOINCCD, RESUNIT, EFAMID)
VALUES        (504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
                         NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4567890, NULL, NULL, NULL, NULL, 
                         NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
	 


