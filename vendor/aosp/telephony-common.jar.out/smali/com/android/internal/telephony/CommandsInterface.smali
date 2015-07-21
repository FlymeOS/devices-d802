.class public interface abstract Lcom/android/internal/telephony/CommandsInterface;
.super Ljava/lang/Object;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CommandsInterface$RadioState;
    }
.end annotation


# static fields
.field public static final CB_ACTION_DISABLE:I = 0x0

.field public static final CB_ACTION_ENABLE:I = 0x1

.field public static final CB_ACTION_ERASURE:I = 0x4

.field public static final CB_ACTION_REGISTRATION:I = 0x3

.field public static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CB_FACILITY_BA_ALL:Ljava/lang/String; = "AB"

.field public static final CB_FACILITY_BA_FD:Ljava/lang/String; = "FD"

.field public static final CB_FACILITY_BA_MO:Ljava/lang/String; = "AG"

.field public static final CB_FACILITY_BA_MT:Ljava/lang/String; = "AC"

.field public static final CB_FACILITY_BA_SIM:Ljava/lang/String; = "SC"

.field public static final CB_REASON_BAIC:I = 0x3

.field public static final CB_REASON_BAICr:I = 0x4

.field public static final CB_REASON_BAOC:I = 0x0

.field public static final CB_REASON_BAOIC:I = 0x1

.field public static final CB_REASON_BAOICxH:I = 0x2

.field public static final CB_REASON_BA_ALL:I = 0x5

.field public static final CB_REASON_BA_FD:I = 0x9

.field public static final CB_REASON_BA_MO:I = 0x6

.field public static final CB_REASON_BA_MT:I = 0x7

.field public static final CB_REASON_BA_SIM:I = 0x8

.field public static final CDMA_SMS_FAIL_CAUSE_ENCODING_PROBLEM:I = 0x60

.field public static final CDMA_SMS_FAIL_CAUSE_INVALID_TELESERVICE_ID:I = 0x4

.field public static final CDMA_SMS_FAIL_CAUSE_OTHER_TERMINAL_PROBLEM:I = 0x27

.field public static final CDMA_SMS_FAIL_CAUSE_RESOURCE_SHORTAGE:I = 0x23

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final GSM_SMS_FAIL_CAUSE_MEMORY_CAPACITY_EXCEEDED:I = 0xd3

.field public static final GSM_SMS_FAIL_CAUSE_UNSPECIFIED_ERROR:I = 0xff

.field public static final GSM_SMS_FAIL_CAUSE_USIM_APP_TOOLKIT_BUSY:I = 0xd4

.field public static final GSM_SMS_FAIL_CAUSE_USIM_DATA_DOWNLOAD_ERROR:I = 0xd5

.field public static final SERVICE_CLASS_DATA:I = 0x2

.field public static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final SERVICE_CLASS_FAX:I = 0x4

.field public static final SERVICE_CLASS_MAX:I = 0x80

.field public static final SERVICE_CLASS_NONE:I = 0x0

.field public static final SERVICE_CLASS_PACKET:I = 0x40

.field public static final SERVICE_CLASS_PAD:I = 0x80

.field public static final SERVICE_CLASS_SMS:I = 0x8

.field public static final SERVICE_CLASS_VOICE:I = 0x1

.field public static final USSD_FAILURE_BY_STK:I = 0x6

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1


# virtual methods
.method public abstract SAPConnectionrequest(ILandroid/os/Message;)V
.end method

.method public abstract SAPrequest(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract acceptCall(Landroid/os/Message;)V
.end method

.method public abstract acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
.end method

.method public abstract cancelManualSearchingRequest(Landroid/os/Message;)V
.end method

.method public abstract cancelPendingUssd(Landroid/os/Message;)V
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract closeImsPdn(ILandroid/os/Message;)V
.end method

.method public abstract conference(Landroid/os/Message;)V
.end method

.method public abstract deactivateDataCall(IILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnRuim(ILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnSim(ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method

.method public abstract emulGetInfomation(I)Ljava/lang/String;
.end method

.method public abstract emulNetworkState(I)V
.end method

.method public abstract enableAutoDCDisconnect(I)V
.end method

.method public abstract exitEmergencyCallbackMode(Landroid/os/Message;)V
.end method

.method public abstract exitVolteE911EmergencyMode(Landroid/os/Message;)V
.end method

.method public abstract explicitCallTransfer(Landroid/os/Message;)V
.end method

.method public abstract getActiveBearer()I
.end method

.method public abstract getApnBlockInfo()[I
.end method

.method public abstract getAtr(Landroid/os/Message;)V
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getBasebandVersion(Landroid/os/Message;)V
.end method

.method public abstract getCDMASubscription(Landroid/os/Message;)V
.end method

.method public abstract getCLIR(Landroid/os/Message;)V
.end method

.method public abstract getCdmaBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getCdmaSubscriptionSource(Landroid/os/Message;)V
.end method

.method public abstract getCellInfoList(Landroid/os/Message;)V
.end method

.method public abstract getCurrentCalls(Landroid/os/Message;)V
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataCallProfile(ILandroid/os/Message;)V
.end method

.method public abstract getDataRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getDebugInfo(II)[I
.end method

.method public abstract getDebugInfoValue(Landroid/os/Message;)V
.end method

.method public abstract getDeviceIdentity(Landroid/os/Message;)V
.end method

.method public abstract getEhrpdInfoForIms(Landroid/os/Message;)V
.end method

.method public abstract getEmcFailCauseInfo(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
.end method

.method public abstract getEmergencyEnableNoSim()Z
.end method

.method public abstract getEngineeringModeInfo(ILandroid/os/Message;)V
.end method

.method public abstract getGPRIItem(ILandroid/os/Message;)V
.end method

.method public abstract getGsmBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getHardwareConfig(Landroid/os/Message;)V
.end method

.method public abstract getIMEI(Landroid/os/Message;)V
.end method

.method public abstract getIMEISV(Landroid/os/Message;)V
.end method

.method public abstract getIMSI(Landroid/os/Message;)V
.end method

.method public abstract getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getIMSPrefState(Landroid/os/Message;)V
.end method

.method public abstract getIccCardStatus(Landroid/os/Message;)V
.end method

.method public abstract getImsRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getLastCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastDataCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastPdpFailCause(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLgDataFeature()Lcom/android/internal/telephony/lgdata/LgDataFeature;
.end method

.method public abstract getLteEmmErrorCode(Landroid/os/Message;)V
.end method

.method public abstract getLteInfoForIms(Landroid/os/Message;)V
.end method

.method public abstract getLteOnCdmaMode()I
.end method

.method public abstract getLteStateInfo(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
.end method

.method public abstract getMipErrorCode(Landroid/os/Message;)V
.end method

.method public abstract getMmsProxy(Landroid/os/Message;)V
.end method

.method public abstract getMmsc(Landroid/os/Message;)V
.end method

.method public abstract getModemCapability(Landroid/os/Message;)V
.end method

.method public abstract getModemIntegerItem(ILandroid/os/Message;)V
.end method

.method public abstract getModemPacketCount(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getModemStringItem(ILandroid/os/Message;)V
.end method

.method public abstract getMute(Landroid/os/Message;)V
.end method

.method public abstract getMyDebugger()Lcom/android/internal/telephony/lgdata/MMdebuger;
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getNetworkSelectionMode(Landroid/os/Message;)V
.end method

.method public abstract getOperator(Landroid/os/Message;)V
.end method

.method public abstract getOrSetEmergencyEnable(ZZ)Z
.end method

.method public abstract getOrSetIMSEnable(ZZ)Z
.end method

.method public abstract getPDPContextList(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPcscfAddress(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getPreferredVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract getRilVersion()I
.end method

.method public abstract getRssiTest(Landroid/os/Message;)V
.end method

.method public abstract getSIBInfoForEPDNInfo(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;
.end method

.method public abstract getSearchStatus(ILandroid/os/Message;)V
.end method

.method public abstract getSearchStatus(Landroid/os/Message;)V
.end method

.method public abstract getSignalStrength(Landroid/os/Message;)V
.end method

.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract getVoiceDomainPref(Landroid/os/Message;)V
.end method

.method public abstract getVoiceRadioTechnology(Landroid/os/Message;)V
.end method

.method public abstract getVoiceRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getVolteAndEPDNSupportInfo(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
.end method

.method public abstract getVolteE911NetworkType(Landroid/os/Message;)V
.end method

.method public abstract handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
.end method

.method public abstract hangupConnection(ILandroid/os/Message;)V
.end method

.method public abstract hangupForegroundResumeBackground(Landroid/os/Message;)V
.end method

.method public abstract hangupWaitingOrBackground(Landroid/os/Message;)V
.end method

.method public abstract iccCloseLogicalChannel(ILandroid/os/Message;)V
.end method

.method public abstract iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract lgeQueryGprsCellEnvironmentDescription(ILandroid/os/Message;)V
.end method

.method public abstract lgeResetEPSLOCI(Landroid/os/Message;)V
.end method

.method public abstract lgeSetMoMessageService(ILandroid/os/Message;)V
.end method

.method public abstract lgeSetMoSMMAService(ILandroid/os/Message;)V
.end method

.method public abstract loadVolteE911ScanList(IILandroid/os/Message;)V
.end method

.method public abstract mocaAlarmEvent([BLandroid/os/Message;)V
.end method

.method public abstract mocaAlarmEventReg(ILandroid/os/Message;)V
.end method

.method public abstract mocaCheckMem(Landroid/os/Message;)V
.end method

.method public abstract mocaGetData(ILandroid/os/Message;)V
.end method

.method public abstract mocaGetMisc(IILandroid/os/Message;)V
.end method

.method public abstract mocaGetRFParameter(IILandroid/os/Message;)V
.end method

.method public abstract mocaSetEvent([BLandroid/os/Message;)V
.end method

.method public abstract mocaSetLog([BLandroid/os/Message;)V
.end method

.method public abstract mocaSetMem(ILandroid/os/Message;)V
.end method

.method public abstract modeminfo(ILandroid/os/Message;)V
.end method

.method public abstract modifyModemProfile([Lcom/android/internal/telephony/lgdata/DataProfileInfo;Landroid/os/Message;)V
.end method

.method public abstract nvReadItem(ILandroid/os/Message;)V
.end method

.method public abstract nvResetConfig(ILandroid/os/Message;)V
.end method

.method public abstract nvWriteCdmaPrl([BLandroid/os/Message;)V
.end method

.method public abstract nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract oemSsaAlarmEvent([BLandroid/os/Message;)V
.end method

.method public abstract oemSsaCheckMem(Landroid/os/Message;)V
.end method

.method public abstract oemSsaGetData(ILandroid/os/Message;)V
.end method

.method public abstract oemSsaHdvAlarmEvent([BLandroid/os/Message;)V
.end method

.method public abstract oemSsaSetEvent([BLandroid/os/Message;)V
.end method

.method public abstract oemSsaSetLog([BLandroid/os/Message;)V
.end method

.method public abstract oemSsaSetMem(ILandroid/os/Message;)V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryCallWaiting(ILandroid/os/Message;)V
.end method

.method public abstract queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaSidChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataQosChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEndQueryAvailableNetwork(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForHDRRoamingIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForHdrLock(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccAppRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLTERoamingIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLockStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLteEhrpdForcedChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLteEmmReject(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLteLock(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLteNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForModemCapEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkErrorDisp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForODBreattach(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOtaSessionFail(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOtaSessionSuccess(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPcscfAddrChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPdnConnRejInd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSetRrcEstCauseDone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimRefreshEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForStartQueryAvailableNetwork(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53ReleaseInfoKddi(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForWcdmaAcceptReceived(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForWcdmaNetChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForWcdmaNetToKoreaChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForWcdmaRejectReceived(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForWpbxStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForWwanIwlanCoexistence(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerGprsCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerIMSPrefStatusInd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerLGECipheringInd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerLGERACInd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerLGEUnsol(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerSsacChangeInfoInd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registorForPacketPaging(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall(Landroid/os/Message;)V
.end method

.method public abstract reportSmsMemoryStatus(ZLandroid/os/Message;)V
.end method

.method public abstract reportStkServiceIsRunning(Landroid/os/Message;)V
.end method

.method public abstract requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestShutdown(Landroid/os/Message;)V
.end method

.method public abstract resetRadio(Landroid/os/Message;)V
.end method

.method public abstract sendApnDisableFlag(IZLandroid/os/Message;)V
.end method

.method public abstract sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract sendDefaultAttachProfile(ILandroid/os/Message;)V
.end method

.method public abstract sendDtmf(CLandroid/os/Message;)V
.end method

.method public abstract sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendIMSRegistate(ILandroid/os/Message;)V
.end method

.method public abstract sendImsCdmaSms([BIILandroid/os/Message;)V
.end method

.method public abstract sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract separateConnection(ILandroid/os/Message;)V
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setCLIR(ILandroid/os/Message;)V
.end method

.method public abstract setCSGSelectionManual(ILandroid/os/Message;)V
.end method

.method public abstract setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZILandroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract setCdmaEriVersion(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaFactoryReset(Landroid/os/Message;)V
.end method

.method public abstract setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaSubscriptionSource(ILandroid/os/Message;)V
.end method

.method public abstract setCellInfoListRate(ILandroid/os/Message;)V
.end method

.method public abstract setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public abstract setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V
.end method

.method public abstract setDataRoamingStatus(ZLandroid/os/Message;)V
.end method

.method public abstract setDebugInfoValue(ILandroid/os/Message;)V
.end method

.method public abstract setE911State(IILandroid/os/Message;)V
.end method

.method public abstract setEhrpdIpv6ControlSetting(ILandroid/os/Message;)V
.end method

.method public abstract setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setEmergencyEnableNoSim(Z)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract setImsStatusForDan(ILandroid/os/Message;)V
.end method

.method public abstract setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setLocalCallHold(I)V
.end method

.method public abstract setLocationUpdates(ZLandroid/os/Message;)V
.end method

.method public abstract setLteACarrierAggregation(ILandroid/os/Message;)V
.end method

.method public abstract setLteBandMode(JLandroid/os/Message;)V
.end method

.method public abstract setMiMoAntennaControlTest(Landroid/os/Message;II)V
.end method

.method public abstract setModemFunctionalityLevel(ILandroid/os/Message;)V
.end method

.method public abstract setModemIntegerItem(IILandroid/os/Message;)V
.end method

.method public abstract setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setMute(ZLandroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setNetworkTypeGWForECall(Landroid/os/Message;)V
.end method

.method public abstract setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnDanStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccAppRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSIB16Time(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPhoneType(I)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setPreferredVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract setPreviousNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setPttDrxMode(ILandroid/os/Message;)V
.end method

.method public abstract setQcril(I)V
.end method

.method public abstract setRadioPower(ZLandroid/os/Message;)V
.end method

.method public abstract setRmnetAutoconnect(ILandroid/os/Message;)V
.end method

.method public abstract setRrcEstCauseForEmergency(Landroid/os/Message;)V
.end method

.method public abstract setRssiTestAntConf(ILandroid/os/Message;)V
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSuppServiceNotifications(ZLandroid/os/Message;)V
.end method

.method public abstract setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setTestMode(I)V
.end method

.method public abstract setTetherDunNai_spr(ILandroid/os/Message;)V
.end method

.method public abstract setUeMode(ILandroid/os/Message;)V
.end method

.method public abstract setUiccSubscription(IIIILandroid/os/Message;)V
.end method

.method public abstract setVoLTERoaming(ILandroid/os/Message;)V
.end method

.method public abstract setVoiceDomainPref(ILandroid/os/Message;)V
.end method

.method public abstract setVolteCallStatus(ILandroid/os/Message;)V
.end method

.method public abstract setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract startDtmf(CLandroid/os/Message;)V
.end method

.method public abstract stopDtmf(Landroid/os/Message;)V
.end method

.method public abstract supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
.end method

.method public abstract testingEmergencyCall()V
.end method

.method public abstract uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V
.end method

.method public abstract uiccApplicationIO(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract uiccDeactivateApplication(ILandroid/os/Message;)V
.end method

.method public abstract uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V
.end method

.method public abstract uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V
.end method

.method public abstract uiccSelectApplication(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract uknightEventSet([BLandroid/os/Message;)V
.end method

.method public abstract uknightGetData(ILandroid/os/Message;)V
.end method

.method public abstract uknightLogSet([BLandroid/os/Message;)V
.end method

.method public abstract uknightMemCheck(Landroid/os/Message;)V
.end method

.method public abstract uknightMemSet(ILandroid/os/Message;)V
.end method

.method public abstract uknightStateChangeSet(ILandroid/os/Message;)V
.end method

.method public abstract unSetOnCallRing(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatCallSetUp(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatEvent(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatProactiveCmd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatSessionEnd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnDanStatus(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnIccSmsFull(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNITZTime(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewCdmaSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewGsmSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSIB16Time(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsOnSim(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsStatus(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSs(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUSSD(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallWaitingInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaSidChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCellInfoList(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataQosChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEndQueryAvailableNetwork(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForHDRRoamingIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForHdrLock(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccAppRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLTERoamingIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLockStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLteEhrpdForcedChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLteEmmReject(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLteLock(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLteNetworkInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForModemCapEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkErrorDisp(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForODBreattach(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOtaSessionFail(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOtaSessionSuccess(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPcscfAddrChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPdnConnRejInd(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRilConnected(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSetRrcEstCauseDone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimRefreshEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSrvccStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForStartQueryAvailableNetwork(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ReleaseInfoKddi(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForWcdmaAcceptReceived(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForWcdmaNetChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForWcdmaNetToKoreaChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForWcdmaRejectReceived(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForWpbxStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForWwanIwlanCoexistence(Landroid/os/Handler;)V
.end method

.method public abstract unregisterGprsCellInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterIMSPrefStatusInd(Landroid/os/Handler;)V
.end method

.method public abstract unregisterLGECipheringInd(Landroid/os/Handler;)V
.end method

.method public abstract unregisterLGERACInd(Landroid/os/Handler;)V
.end method

.method public abstract unregisterLGEUnsol(Landroid/os/Handler;)V
.end method

.method public abstract unregisterSsacChangeInfoInd(Landroid/os/Handler;)V
.end method

.method public abstract unregistorForPacketPaging(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnIccAppRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract updateEmergencyInfo(Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;)V
.end method

.method public abstract updateIMSStateReq(II[I[ILandroid/os/Message;)V
.end method

.method public abstract updateStackBinding(IILandroid/os/Message;)V
.end method

.method public abstract writeSmsToCsim(I[BLandroid/os/Message;)V
.end method

.method public abstract writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method
