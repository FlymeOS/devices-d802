.class public Lcom/lge/lgdata/LGDctConstants;
.super Ljava/lang/Object;
.source "LGDctConstants.java"


# static fields
.field public static ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String; = null

.field public static final APN_ADMIN_ID:I = 0xf

.field public static final APN_BIP_ID:I = 0x16

.field private static final APN_NUM_TYPES:I = 0xe

.field public static final APN_RCS_ID:I = 0x12

.field public static final APN_TETHERING_ID:I = 0x13

.field public static final APN_USCAPP_ID:I = 0x15

.field public static final APN_VTIMS_ID:I = 0x18

.field public static final APN_VZW800_ID:I = 0x11

.field public static final APN_VZWAPP_ID:I = 0x10

.field public static final APN_WAP_ID:I = 0x17

.field public static final APN_XCAP_ID:I = 0x14

.field public static final BASE:I = 0x42800

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x42840

.field public static final EVENT_CONN_CHECK_ALARM_EXPIRED:I = 0x4281e

.field public static final EVENT_CPA_PACKAGE_CHECK:I = 0x42815

.field public static final EVENT_CT_SET_TDD_STATUS:I = 0x4283e

.field public static final EVENT_DATA_DISABLED_BY_REQUEST:I = 0x42801

.field public static final EVENT_DATA_ERROR_FAIL_CAUSE:I = 0x42808

.field public static final EVENT_DATA_LOCK_STATE_CHANGED:I = 0x4280d

.field public static final EVENT_DATA_PDN_CONN_REJECTED:I = 0x4283c

.field public static final EVENT_DATA_PROFILE_NV:I = 0x42812

.field public static final EVENT_DATA_RADIO_ON:I = 0x42813

.field public static final EVENT_DATA_RESTART_TRYSETUP_WAITING_TIMEOUT_MSG:I = 0x4283d

.field public static final EVENT_DATA_ROAMING_OFF:I = 0x42834

.field public static final EVENT_DATA_ROAMING_ON:I = 0x42833

.field public static final EVENT_DATA_SATE_CONNECTED:I = 0x4281a

.field public static final EVENT_DATA_SATE_DISCONNECTED:I = 0x4281b

.field public static final EVENT_DEFAULT_SETUP:I = 0x42817

.field public static final EVENT_DNS_FAIL_OBSERVED:I = 0x4281c

.field public static final EVENT_FAKE_DATACONNECTION_EVENT:I = 0x42816

.field public static final EVENT_GET_MODEM_PACKET_COUNT_DONE:I = 0x4281f

.field public static final EVENT_GET_MODEM_QOS_STATUS_DONE:I = 0x42822

.field public static final EVENT_GET_W_MODEM_INFO_CS_PROTECTION:I = 0x4280a

.field public static final EVENT_GO_FASTDORMANCY_DELAYED:I = 0x42810

.field public static final EVENT_LTE_EMM_ERRROR_CODE:I = 0x42832

.field public static final EVENT_ODB_REATTACH:I = 0x42821

.field public static final EVENT_OMADM_LOCK_NV:I = 0x42811

.field public static final EVENT_PACKET_PAGING_RECEIVED:I = 0x4280f

.field public static final EVENT_PCSCF_ADDR_CHANGED:I = 0x42807

.field public static final EVENT_PPP_RESYNC_TO_BLOCK_EHRPD_INTERNET_IPV6:I = 0x42820

.field public static final EVENT_PREFERRED_NETWORK_TYPE_CHANGED:I = 0x42804

.field public static final EVENT_PS_RETRY_RESET:I = 0x42803

.field public static final EVENT_RADIO_REGISTERED_TO_NETWORK:I = 0x4280c

.field public static final EVENT_RAT_CHANGED:I = 0x42809

.field public static final EVENT_RESTART_RADIO:I = 0x4283f

.field public static final EVENT_RESYNC:I = 0x42814

.field public static final EVENT_SCREEN_OFF:I = 0x42819

.field public static final EVENT_SCREEN_ON:I = 0x42818

.field public static final EVENT_SETDEFAULT_TOCHANGE_AFTER_DELAY:I = 0x4280b

.field public static final EVENT_SET_MODE_TO_LTE_WCDMA_DONE:I = 0x42838

.field public static final EVENT_SET_MODE_TO_WCDMA_ONLY_DONE:I = 0x42837

.field public static final EVENT_SET_RRC_EST_CAUSE_DONE:I = 0x42802

.field public static final EVENT_STALL_ALARM_EXPIRED:I = 0x4281d

.field public static final EVENT_WAIT_PENDING:I = 0x4280e

.field public static EXTRA_MESSENGER:Ljava/lang/String; = null

.field public static final LG_MAX_APN_NUM_TYPES:I = 0x19

.field public static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x42805

.field public static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x42806


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "com.android.internal.telephony"

    sput-object v0, Lcom/lge/lgdata/LGDctConstants;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    .line 116
    const-string v0, "EXTRA_MESSENGER"

    sput-object v0, Lcom/lge/lgdata/LGDctConstants;->EXTRA_MESSENGER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
