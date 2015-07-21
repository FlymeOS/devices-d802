.class public interface abstract Lcom/android/internal/telephony/Phone;
.super Ljava/lang/Object;
.source "Phone.java"

# interfaces
.implements Lcom/android/internal/telephony/ILGPhone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Phone$SuppService;,
        Lcom/android/internal/telephony/Phone$DataActivityState;
    }
.end annotation


# static fields
.field public static final APN_TYPE_ADMIN:Ljava/lang/String; = "admin"

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_BIP:Ljava/lang/String; = "bip"

.field public static final APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_ENTITLEMENT:Ljava/lang/String; = "entitlement"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_INTERNET:Ljava/lang/String; = "internet"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_RCS:Ljava/lang/String; = "rcs"

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final APN_TYPE_TETHERING:Ljava/lang/String; = "tethering"

.field public static final APN_TYPE_VTIMS:Ljava/lang/String; = "vtims"

.field public static final APN_TYPE_VZW800:Ljava/lang/String; = "vzw800"

.field public static final APN_TYPE_VZWAPP:Ljava/lang/String; = "vzwapp"

.field public static final APN_TYPE_XCAP:Ljava/lang/String; = "xcap"

.field public static final BM_AUS2_BAND:I = 0x5

.field public static final BM_AUS_BAND:I = 0x4

.field public static final BM_BOUNDARY:I = 0x6

.field public static final BM_EURO_BAND:I = 0x1

.field public static final BM_JPN_BAND:I = 0x3

.field public static final BM_UNSPECIFIED:I = 0x0

.field public static final BM_US_BAND:I = 0x2

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CDMA_OTA_PROVISION_STATUS_A_KEY_EXCHANGED:I = 0x2

.field public static final CDMA_OTA_PROVISION_STATUS_COMMITTED:I = 0x8

.field public static final CDMA_OTA_PROVISION_STATUS_IMSI_DOWNLOADED:I = 0x6

.field public static final CDMA_OTA_PROVISION_STATUS_MDN_DOWNLOADED:I = 0x5

.field public static final CDMA_OTA_PROVISION_STATUS_NAM_DOWNLOADED:I = 0x4

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_ABORTED:I = 0xb

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_COMMITED:I = 0xc

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STARTED:I = 0x9

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STOPPED:I = 0xa

.field public static final CDMA_OTA_PROVISION_STATUS_PRL_DOWNLOADED:I = 0x7

.field public static final CDMA_OTA_PROVISION_STATUS_SPC_RETRIES_EXCEEDED:I = 0x1

.field public static final CDMA_OTA_PROVISION_STATUS_SPL_UNLOCKED:I = 0x0

.field public static final CDMA_OTA_PROVISION_STATUS_SSD_UPDATED:I = 0x3

.field public static final CDMA_RM_AFFILIATED:I = 0x1

.field public static final CDMA_RM_ANY:I = 0x2

.field public static final CDMA_RM_HOME:I = 0x0

.field public static final CDMA_SUBSCRIPTION_NV:I = 0x1

.field public static final CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0

.field public static final CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_APN_TYPE_STATE:Ljava/lang/String; = "apnTypeState"

.field public static final DATA_GW_ADDRESS_KEY:Ljava/lang/String; = "igwaddress"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_IPVERSION_KEY:Ljava/lang/String; = "ipVersion"

.field public static final DATA_IP_ADDRESS_KEY:Ljava/lang/String; = "ipaddress"

.field public static final DATA_LINK_CAPABILITIES_KEY:Ljava/lang/String; = "linkCapabilities"

.field public static final DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final DATA_NETWORK_ROAMING_KEY:Ljava/lang/String; = "networkRoaming"

.field public static final DEBUG_PHONE:Z = true

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final FAILURE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final FEATURE_ENABLE_ADMIN:Ljava/lang/String; = "enableADMIN"

.field public static final FEATURE_ENABLE_BIP:Ljava/lang/String; = "enableBIP"

.field public static final FEATURE_ENABLE_CBS:Ljava/lang/String; = "enableCBS"

.field public static final FEATURE_ENABLE_CMMAIL:Ljava/lang/String; = "enableCMMAIL"

.field public static final FEATURE_ENABLE_DM:Ljava/lang/String; = "enableDM"

.field public static final FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field public static final FEATURE_ENABLE_DUN_ALWAYS:Ljava/lang/String; = "enableDUNAlways"

.field public static final FEATURE_ENABLE_EMERGENCY:Ljava/lang/String; = "enableEMERGENCY"

.field public static final FEATURE_ENABLE_FOTA:Ljava/lang/String; = "enableFOTA"

.field public static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final FEATURE_ENABLE_IMS:Ljava/lang/String; = "enableIMS"

.field public static final FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final FEATURE_ENABLE_NET:Ljava/lang/String; = "enableNET"

.field public static final FEATURE_ENABLE_RCS:Ljava/lang/String; = "enableRCS"

.field public static final FEATURE_ENABLE_RCSE:Ljava/lang/String; = "enableRCSE"

.field public static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final FEATURE_ENABLE_TETHERING:Ljava/lang/String; = "enableTETHERING"

.field public static final FEATURE_ENABLE_USCAPP:Ljava/lang/String; = "enableUSCAPP"

.field public static final FEATURE_ENABLE_VTIMS:Ljava/lang/String; = "enableVTIMS"

.field public static final FEATURE_ENABLE_VZW800:Ljava/lang/String; = "enable800APN"

.field public static final FEATURE_ENABLE_VZWAPP:Ljava/lang/String; = "enableVZWAPP"

.field public static final FEATURE_ENABLE_WAP:Ljava/lang/String; = "enableWAP"

.field public static final FEATURE_ENABLE_XCAP:Ljava/lang/String; = "enableXCAP"

.field public static final LOGPARSS:Z

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final NT_MODE_CDMA:I = 0x4

.field public static final NT_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NT_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NT_MODE_GLOBAL:I = 0x7

.field public static final NT_MODE_GSM_ONLY:I = 0x1

.field public static final NT_MODE_GSM_UMTS:I = 0x3

.field public static final NT_MODE_LTE_CDMA_AND_EVDO:I = 0x8

.field public static final NT_MODE_LTE_CDMA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NT_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NT_MODE_LTE_ONLY:I = 0xb

.field public static final NT_MODE_LTE_WCDMA:I = 0xc

.field public static final NT_MODE_TD_SCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x15

.field public static final NT_MODE_TD_SCDMA_GSM:I = 0x10

.field public static final NT_MODE_TD_SCDMA_GSM_LTE:I = 0x11

.field public static final NT_MODE_TD_SCDMA_GSM_WCDMA:I = 0x12

.field public static final NT_MODE_TD_SCDMA_GSM_WCDMA_LTE:I = 0x14

.field public static final NT_MODE_TD_SCDMA_LTE:I = 0xf

.field public static final NT_MODE_TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x16

.field public static final NT_MODE_TD_SCDMA_ONLY:I = 0xd

.field public static final NT_MODE_TD_SCDMA_WCDMA:I = 0xe

.field public static final NT_MODE_TD_SCDMA_WCDMA_LTE:I = 0x13

.field public static final NT_MODE_WCDMA_ONLY:I = 0x2

.field public static final NT_MODE_WCDMA_PREF:I = 0x0

.field public static final PHONE_CDMA_REQUEST_FACTORY_RESET_COMPLETED:Ljava/lang/String; = "phoneCdmaRequestFactoryResetCompleted"

.field public static final PHONE_ERI_VERSION_WRITE:Ljava/lang/String; = "phoneEriVersionWrite"

.field public static final PHONE_IN_ECM_STATE:Ljava/lang/String; = "phoneinECMState"

.field public static final PHONE_NAME_KEY:Ljava/lang/String; = "phoneName"

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I

.field public static final PREFERRED_NT_MODE:I

.field public static final REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final REASON_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field public static final REASON_APN_SWITCHED:Ljava/lang/String; = "apnSwitched"

.field public static final REASON_CDMA_DATA_ATTACHED:Ljava/lang/String; = "cdmaDataAttached"

.field public static final REASON_CDMA_DATA_DETACHED:Ljava/lang/String; = "cdmaDataDetached"

.field public static final REASON_CONNECTED:Ljava/lang/String; = "connected"

.field public static final REASON_CONNECTION_MANGER_HANDLE_DATA:Ljava/lang/String; = "connectionManagerHandleData"

.field public static final REASON_CONNECTION_MIP_ERROR_CHECK:Ljava/lang/String; = "connectionMipErrorCheck"

.field public static final REASON_DATA_ATTACHED:Ljava/lang/String; = "dataAttached"

.field public static final REASON_DATA_DEPENDENCY_MET:Ljava/lang/String; = "dependencyMet"

.field public static final REASON_DATA_DEPENDENCY_UNMET:Ljava/lang/String; = "dependencyUnmet"

.field public static final REASON_DATA_DETACHED:Ljava/lang/String; = "dataDetached"

.field public static final REASON_DATA_DISABLED:Ljava/lang/String; = "dataDisabled"

.field public static final REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final REASON_DATA_SPECIFIC_DISABLED:Ljava/lang/String; = "specificDisabled"

.field public static final REASON_EHRPD_TIMER_EXPIRED:Ljava/lang/String; = "ehrpdTimerExpired"

.field public static final REASON_EPDN_FAILED:Ljava/lang/String; = "EpdnFailed"

.field public static final REASON_IWLAN_AVAILABLE:Ljava/lang/String; = "iwlanAvailable"

.field public static final REASON_LOST_DATA_CONNECTION:Ljava/lang/String; = "lostDataConnection"

.field public static final REASON_NV_READY:Ljava/lang/String; = "nvReady"

.field public static final REASON_NW_TYPE_CHANGED:Ljava/lang/String; = "nwTypeChanged"

.field public static final REASON_PDP_RESET:Ljava/lang/String; = "pdpReset"

.field public static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field public static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field public static final REASON_RADIO_TURNED_OFF:Ljava/lang/String; = "radioTurnedOff"

.field public static final REASON_RESTORE_DEFAULT_APN:Ljava/lang/String; = "restoreDefaultApn"

.field public static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field public static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field public static final REASON_SIM_LOADED:Ljava/lang/String; = "simLoaded"

.field public static final REASON_SINGLE_PDN_ARBITRATION:Ljava/lang/String; = "SinglePdnArbitration"

.field public static final REASON_TETHERED_MODE_STATE_CHANGED:Ljava/lang/String; = "tetheredModeStateChanged"

.field public static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field public static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field public static final REASON_WIFI_CONNECTED:Ljava/lang/String; = "WiFiConnected"

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final STATE_KEY:Ljava/lang/String; = "state"

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    const-string v0, "ro.build.type"

    const-string v3, "user"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/Phone;->LOGPARSS:Z

    .line 293
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    sput v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 320
    const/4 v0, 0x0

    const-string v3, "CHANGE_CDMA_SUBSCRIPTION_TO_RUIM"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/android/internal/telephony/Phone;->PREFERRED_CDMA_SUBSCRIPTION:I

    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v1, v2

    .line 320
    goto :goto_1
.end method


# virtual methods
.method public abstract PlayVZWERISound()V
.end method

.method public abstract StopVZWERISound()V
.end method

.method public abstract acceptCall(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract acquireOwnershipOfImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
.end method

.method public abstract activateCellBroadcastSms(ILandroid/os/Message;)V
.end method

.method public abstract addParticipant(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract akaAuthenticate([B[BLandroid/os/Message;)V
.end method

.method public abstract canConference()Z
.end method

.method public abstract canTransfer()Z
.end method

.method public abstract cancelManualSearchingRequest()V
.end method

.method public abstract changePlmnNameForESAME(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract changePlmnNameForMVNO(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract changePlmnNameForSwedish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract checkDataProfileEx(II)Z
.end method

.method public abstract clearDataDisabledFlag(I)I
.end method

.method public abstract clearDisconnected()V
.end method

.method public abstract closeImsPdn(I)V
.end method

.method public abstract conference()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract deflectCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dialForVolte(Ljava/lang/String;)Z
.end method

.method public abstract disableDnsCheck(Z)V
.end method

.method public abstract disableLocationUpdates()V
.end method

.method public abstract dispose()V
.end method

.method public abstract enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract enableLocationUpdates()V
.end method

.method public abstract exitEmergencyCallbackMode()V
.end method

.method public abstract exitVolteE911EmergencyMode()V
.end method

.method public abstract explicitCallTransfer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
.end method

.method public abstract gbaAuthenticateNaf([BLandroid/os/Message;)V
.end method

.method public abstract getAPNList()Ljava/lang/String;
.end method

.method public abstract getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActiveApnTypes()[Ljava/lang/String;
.end method

.method public abstract getAlertId()I
.end method

.method public abstract getAllCellInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getBackgroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getCallBarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getCallForwardingIndicator()Z
.end method

.method public abstract getCallForwardingOption(ILandroid/os/Message;)V
.end method

.method public abstract getCallForwardingUncondTimerOption(ILandroid/os/Message;)V
.end method

.method public abstract getCallWaiting(Landroid/os/Message;)V
.end method

.method public abstract getCdmaEriHomeSystems()Ljava/lang/String;
.end method

.method public abstract getCdmaEriIconIndex()I
.end method

.method public abstract getCdmaEriIconMode()I
.end method

.method public abstract getCdmaEriText()Ljava/lang/String;
.end method

.method public abstract getCdmaInfo()[Ljava/lang/String;
.end method

.method public abstract getCdmaLteEhrpdForced()Ljava/lang/String;
.end method

.method public abstract getCdmaMin()Ljava/lang/String;
.end method

.method public abstract getCdmaPrlVersion()Ljava/lang/String;
.end method

.method public abstract getCellBroadcastSmsConfig(Landroid/os/Message;)V
.end method

.method public abstract getCellLocation()Landroid/telephony/CellLocation;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
.end method

.method public abstract getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
.end method

.method public abstract getDataEnabled()Z
.end method

.method public abstract getDataRoamingEnabled()Z
.end method

.method public abstract getDebugInfo(II)[I
.end method

.method public abstract getDebugInfoValue(Landroid/os/Message;)V
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceSvn()Ljava/lang/String;
.end method

.method public abstract getDmNodeHandlerDiagMonNetwork(ZII)Ljava/lang/String;
.end method

.method public abstract getEmodeInfoPage(I)Ljava/lang/String;
.end method

.method public abstract getEngineeringModeInfo(ILandroid/os/Message;)V
.end method

.method public abstract getEnhancedVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract getEriFileVersion()I
.end method

.method public abstract getEsn()Ljava/lang/String;
.end method

.method public abstract getForegroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getGPRIItem(ILandroid/os/Message;)V
.end method

.method public abstract getGroupIdLevel1()Ljava/lang/String;
.end method

.method public abstract getHDRRoamingIndicator()I
.end method

.method public abstract getIMSPrefState()V
.end method

.method public abstract getIccCard()Lcom/android/internal/telephony/IccCard;
.end method

.method public abstract getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end method

.method public abstract getIccRecordsLoaded()Z
.end method

.method public abstract getIccSerialNumber()Ljava/lang/String;
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImsPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public abstract getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
.end method

.method public abstract getLTEDataRoamingEnable()Z
.end method

.method public abstract getLTERoamingIndicator()I
.end method

.method public abstract getLine1AlphaTag()Ljava/lang/String;
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
.end method

.method public abstract getLteInfo()[Ljava/lang/String;
.end method

.method public abstract getLteOnCdmaMode()I
.end method

.method public abstract getMSIN()Ljava/lang/String;
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getMessageWaitingIndicator()Z
.end method

.method public abstract getMipErrorCode(Landroid/os/Message;)V
.end method

.method public abstract getModemIntegerItem(ILandroid/os/Message;)V
.end method

.method public abstract getModemStringItem(ILandroid/os/Message;)V
.end method

.method public abstract getMsisdn()Ljava/lang/String;
.end method

.method public abstract getMute()Z
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
.end method

.method public abstract getOutgoingCallerIdDisplay(Landroid/os/Message;)V
.end method

.method public abstract getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getPendingMmiCodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getPhoneName()Ljava/lang/String;
.end method

.method public abstract getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getRingingCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getSearchStatus(ILandroid/os/Message;)V
.end method

.method public abstract getSearchStatus(Landroid/os/Message;)V
.end method

.method public abstract getServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract getSignalStrength()Landroid/telephony/SignalStrength;
.end method

.method public abstract getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
.end method

.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method public abstract getStatusId()I
.end method

.method public abstract getSubId()J
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getSubscription()I
.end method

.method public abstract getTimeFromSIB16String()[J
.end method

.method public abstract getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
.end method

.method public abstract getUnitTestMode()Z
.end method

.method public abstract getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
.end method

.method public abstract getValueFromSIB16String()[I
.end method

.method public abstract getVoiceDomainPref()V
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public abstract getVoiceMessageUrgent()Z
.end method

.method public abstract getVoicePhoneServiceState()I
.end method

.method public abstract getVolteE911NetworkType()V
.end method

.method public abstract handleDataInterface(Ljava/lang/String;)I
.end method

.method public abstract handleInCallMmiCommands(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract handlePinMmi(Ljava/lang/String;)Z
.end method

.method public abstract hangUpForVolte(Z)Z
.end method

.method public abstract hasIsim()Z
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract isCspPlmnEnabled()Z
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public abstract isDataConnectivityPossible(Ljava/lang/String;)Z
.end method

.method public abstract isDnsCheckDisabled()Z
.end method

.method public abstract isEmergencyAttachSupportedOnLte()Z
.end method

.method public abstract isEmergencyCallBarringOnLte()Z
.end method

.method public abstract isEmergencyCallSupportedOnLte()Z
.end method

.method public abstract isImsVtCallPresent()Z
.end method

.method public abstract isInternetPDNconnected()Z
.end method

.method public abstract isLTEDataRoamingAvailable()Z
.end method

.method public abstract isManualNetSelAllowed()Z
.end method

.method public abstract isMinInfoReady()Z
.end method

.method public abstract isOnDemandDataPossible(Ljava/lang/String;)Z
.end method

.method public abstract isOtaAttachedOnLte()Z
.end method

.method public abstract isOtaSpNumber(Ljava/lang/String;)Z
.end method

.method public abstract isRadioAvailable()Z
.end method

.method public abstract isSystemInPrl()Z
.end method

.method public abstract isUiccInserted()Z
.end method

.method public abstract isVoiceCallSupprotedOnLte()Z
.end method

.method public abstract lgeQueryGprsCellEnvironmentDescription(ILandroid/os/Message;)V
.end method

.method public abstract lgeRegisterGprsCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract lgeResetEPSLOCI(Landroid/os/Message;)V
.end method

.method public abstract lgeUnregisterGprsCellInfo(Landroid/os/Handler;)V
.end method

.method public abstract loadVolteE911ScanList(II)V
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

.method public abstract needsOtaServiceProvisioning()Z
.end method

.method public abstract notifyDataActivity()V
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

.method public abstract prepareEri()V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
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

.method public abstract rejectCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract relinquishOwnershipOfImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
.end method

.method public abstract removeReferences()V
.end method

.method public abstract requestChangeCbPsw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract resetVoiceMessageCount()V
.end method

.method public abstract selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
.end method

.method public abstract selectPreviousNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
.end method

.method public abstract sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendDtmf(C)V
.end method

.method public abstract sendIMSRegistate(I)V
.end method

.method public abstract sendUssdResponse(Ljava/lang/String;)V
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setCSGSelectionManual(ILandroid/os/Message;)V
.end method

.method public abstract setCallBarringOption(ILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallBarringOption(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallBarringPass(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaFactoryReset(Landroid/os/Message;)V
.end method

.method public abstract setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaSubscription(ILandroid/os/Message;)V
.end method

.method public abstract setCellBroadcastSmsConfig([ILandroid/os/Message;)V
.end method

.method public abstract setCellInfoListRate(I)V
.end method

.method public abstract setDataConnection(Z)V
.end method

.method public abstract setDataDisabledFlag(II)I
.end method

.method public abstract setDataEnabled(Z)V
.end method

.method public abstract setDataRoamingEnabled(Z)V
.end method

.method public abstract setDebugInfoValue(ILandroid/os/Message;)V
.end method

.method public abstract setE911State(IILandroid/os/Message;)V
.end method

.method public abstract setEchoSuppressionEnabled()V
.end method

.method public abstract setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method public abstract setImsStatusForDan(ILandroid/os/Message;)V
.end method

.method public abstract setLTEDataRoamingEnable(Z)V
.end method

.method public abstract setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setLocalCallHold(I)V
.end method

.method public abstract setLteACarrierAggregation(ILandroid/os/Message;)V
.end method

.method public abstract setLteBandMode(JLandroid/os/Message;)V
.end method

.method public abstract setMiMoAntennaControlTest(Landroid/os/Message;I)V
.end method

.method public abstract setMiMoAntennaControlTest(Landroid/os/Message;II)V
.end method

.method public abstract setModemIntegerItem(IILandroid/os/Message;)V
.end method

.method public abstract setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOperatorBrandOverride(Ljava/lang/String;)Z
.end method

.method public abstract setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setPttDrxMode(I)Z
.end method

.method public abstract setRadioPower(Z)V
.end method

.method public abstract setRmnetAutoconnect(ILandroid/os/Message;)V
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setTddStatus(ILandroid/os/Message;)V
.end method

.method public abstract setUeMode(ILandroid/os/Message;)V
.end method

.method public abstract setUiTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setUnitTestMode(Z)V
.end method

.method public abstract setVoLTERoaming(ILandroid/os/Message;)V
.end method

.method public abstract setVoiceDomainPref(I)V
.end method

.method public abstract setVoiceDomainPref(ILandroid/os/Message;)V
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public abstract setVolteCallStatus(I)V
.end method

.method public abstract shutdownRadio()V
.end method

.method public abstract startDtmf(C)V
.end method

.method public abstract stopDtmf()V
.end method

.method public abstract switchHoldingAndActive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
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

.method public abstract unregisterForCallWaiting(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisconnect(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEcmTimerReset(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForHandoverStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIncomingRing(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMmiComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMmiInitiate(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNewRingingConnection(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOnHoldTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForServiceStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSuppServiceFailed(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUnknownConnection(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V
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

.method public abstract unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
.end method

.method public abstract updateIMSStateReq(II[I[I)V
.end method

.method public abstract updatePhoneObject(I)V
.end method

.method public abstract updateServiceLocation()V
.end method

.method public abstract registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
.end method
