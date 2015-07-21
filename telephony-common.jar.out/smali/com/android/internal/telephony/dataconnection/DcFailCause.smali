.class public final enum Lcom/android/internal/telephony/dataconnection/DcFailCause;
.super Ljava/lang/Enum;
.source "DcFailCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_BY_FDN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum APN_RESTRICTION_VALUE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum BEARER_HANDLING_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum EMEREGNCY_CALL_ATTACH_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum EMERGENCY_CALL_PDN_CONNECTION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum EMM_DETACHED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ESM_INFORMATION_NOT_RECEIVED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INTERNAL_REASON:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PPP_ERR_AUTH_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PPP_ERR_INTERNAL_FAIL_A:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PPP_ERR_INTERNAL_FAIL_B:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PPP_ERR_INTERNAL_FAIL_C:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PPP_ERR_INTERNAL_FAIL_D:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PPP_ERR_INTERNAL_FAIL_E:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PPP_ERR_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PS_NET_DOWN_REASON_CLOSE_IN_PROGRESS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_ACTIVATION_REJECTED_BCM_VIOLATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_CONDITIONAL_IE_ERR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_FEATURE_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_IE_NON_EXISTENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_INVALID_TRANS_ID:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_LLC_SNDCP_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_MBMS_BEARER_CAP_INSUFFICIENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_MBMS_GROUP_MEMBERSHIP_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_MESG_NOT_COMPATIBLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_MESG_TYPE_NON_EXISTENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_MESG_TYPE_NOT_COMPATIBLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_NETWORK_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_PDN_CONN_DOES_NOT_EXIST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_PDP_WITHOUT_TFT_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_PROC_TIME_OUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_QOS_NOT_ACCEPTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_REACTIVATION_REQUIRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_SEMANTIC_ERR_IN_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_SEMANTIC_ERR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_SEMANTIC_INCORRECT_MESG:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_SYNTACTIC_ERR_IN_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_SYNTACTIC_ERR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SM_UNKNOWN_PDP_CONTEXT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_ADMIN_PROHIBIT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_GEN_ERROR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_INSUFF_PARAM:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_NO_PDN_GW:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_PDN_EXISTS_FOR_THIS_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_PDN_GW_REJ:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_PDN_GW_UNREACH:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_PDN_ID_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_RESOURCE_UNAVAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_SUBSCR_LIMITATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_3GPP2I_UNAUTH_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private static final sErrorCodeToFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
            ">;"
        }
    .end annotation
.end field

.field private static final sErrorTextToFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestartRadioOnRegularDeactivation:Z

.field private mRilErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x7

    const/4 v10, 0x6

    const/4 v9, 0x0

    const/16 v8, 0x24

    .line 48
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v9, v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 50
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_GEN_ERROR"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v10}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_GEN_ERROR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 51
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_UNAUTH_APN"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_UNAUTH_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 52
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_NO_PDN_GW"

    const/4 v6, 0x3

    const/16 v7, 0x9

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_NO_PDN_GW:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 53
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_PDN_GW_UNREACH"

    const/4 v6, 0x4

    const/16 v7, 0xa

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_PDN_GW_UNREACH:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 54
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_PDN_GW_REJ"

    const/4 v6, 0x5

    const/16 v7, 0xb

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_PDN_GW_REJ:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 55
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_INSUFF_PARAM"

    const/16 v6, 0xc

    invoke-direct {v4, v5, v10, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_INSUFF_PARAM:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 56
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_RESOURCE_UNAVAIL"

    const/16 v6, 0xd

    invoke-direct {v4, v5, v11, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_RESOURCE_UNAVAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 57
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_ADMIN_PROHIBIT"

    const/16 v6, 0xe

    invoke-direct {v4, v5, v12, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_ADMIN_PROHIBIT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 58
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_PDN_ID_IN_USE"

    const/16 v6, 0x9

    const/16 v7, 0xf

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_PDN_ID_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 59
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_SUBSCR_LIMITATION"

    const/16 v6, 0xa

    const/16 v7, 0x10

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_SUBSCR_LIMITATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 60
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "VSNCP_3GPP2I_PDN_EXISTS_FOR_THIS_APN"

    const/16 v6, 0xb

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_PDN_EXISTS_FOR_THIS_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 64
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "OPERATOR_BARRED"

    const/16 v6, 0xc

    invoke-direct {v4, v5, v6, v12}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 65
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "INSUFFICIENT_RESOURCES"

    const/16 v6, 0xd

    const/16 v7, 0x1a

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 66
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "MISSING_UNKNOWN_APN"

    const/16 v6, 0xe

    const/16 v7, 0x1b

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 67
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "UNKNOWN_PDP_ADDRESS_TYPE"

    const/16 v6, 0xf

    const/16 v7, 0x1c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 68
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "USER_AUTHENTICATION"

    const/16 v6, 0x10

    const/16 v7, 0x1d

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 69
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ACTIVATION_REJECT_GGSN"

    const/16 v6, 0x11

    const/16 v7, 0x1e

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 70
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ACTIVATION_REJECT_UNSPECIFIED"

    const/16 v6, 0x12

    const/16 v7, 0x1f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 71
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v6, 0x13

    const/16 v7, 0x20

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 72
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v6, 0x14

    const/16 v7, 0x21

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 73
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v6, 0x15

    const/16 v7, 0x22

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 74
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "NSAPI_IN_USE"

    const/16 v6, 0x16

    const/16 v7, 0x23

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 75
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "REGULAR_DEACTIVATION"

    const/16 v6, 0x17

    invoke-direct {v4, v5, v6, v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 76
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ONLY_IPV4_ALLOWED"

    const/16 v6, 0x18

    const/16 v7, 0x32

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 77
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ONLY_IPV6_ALLOWED"

    const/16 v6, 0x19

    const/16 v7, 0x33

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 78
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ONLY_SINGLE_BEARER_ALLOWED"

    const/16 v6, 0x1a

    const/16 v7, 0x34

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 79
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PROTOCOL_ERRORS"

    const/16 v6, 0x1b

    const/16 v7, 0x6f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 81
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "EMM_DETACHED"

    const/16 v6, 0x1c

    const/16 v7, 0x404

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->EMM_DETACHED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 84
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "APN_RESTRICTION_VALUE"

    const/16 v6, 0x1d

    const/16 v7, 0x70

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->APN_RESTRICTION_VALUE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 86
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_MBMS_BEARER_CAP_INSUFFICIENT"

    const/16 v6, 0x1e

    const/16 v7, 0x18

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MBMS_BEARER_CAP_INSUFFICIENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 87
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_LLC_SNDCP_FAILURE"

    const/16 v6, 0x1f

    const/16 v7, 0x19

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_LLC_SNDCP_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 88
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_REGULAR_DEACTIVATION"

    const/16 v6, 0x20

    invoke-direct {v4, v5, v6, v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 89
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_QOS_NOT_ACCEPTED"

    const/16 v6, 0x21

    const/16 v7, 0x25

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_QOS_NOT_ACCEPTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 90
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_NETWORK_FAILURE"

    const/16 v6, 0x22

    const/16 v7, 0x26

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_NETWORK_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 91
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_REACTIVATION_REQUIRED"

    const/16 v6, 0x23

    const/16 v7, 0x27

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_REACTIVATION_REQUIRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 92
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_FEATURE_NOT_SUPPORTED"

    const/16 v6, 0x28

    invoke-direct {v4, v5, v8, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_FEATURE_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 93
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_SEMANTIC_ERR_IN_TFT"

    const/16 v6, 0x25

    const/16 v7, 0x29

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SEMANTIC_ERR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 94
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_SYNTACTIC_ERR_IN_TFT"

    const/16 v6, 0x26

    const/16 v7, 0x2a

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SYNTACTIC_ERR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 95
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_UNKNOWN_PDP_CONTEXT"

    const/16 v6, 0x27

    const/16 v7, 0x2b

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_UNKNOWN_PDP_CONTEXT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 96
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_SEMANTIC_ERR_IN_FILTER"

    const/16 v6, 0x28

    const/16 v7, 0x2c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SEMANTIC_ERR_IN_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 97
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_SYNTACTIC_ERR_IN_FILTER"

    const/16 v6, 0x29

    const/16 v7, 0x2d

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SYNTACTIC_ERR_IN_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 98
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_PDP_WITHOUT_TFT_ACTIVE"

    const/16 v6, 0x2a

    const/16 v7, 0x2e

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_PDP_WITHOUT_TFT_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 99
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_MBMS_GROUP_MEMBERSHIP_TIMEOUT"

    const/16 v6, 0x2b

    const/16 v7, 0x2f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MBMS_GROUP_MEMBERSHIP_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 100
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_ACTIVATION_REJECTED_BCM_VIOLATION"

    const/16 v6, 0x2c

    const/16 v7, 0x30

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_ACTIVATION_REJECTED_BCM_VIOLATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 101
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_INVALID_TRANS_ID"

    const/16 v6, 0x2d

    const/16 v7, 0x51

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_INVALID_TRANS_ID:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 102
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_SEMANTIC_INCORRECT_MESG"

    const/16 v6, 0x2e

    const/16 v7, 0x5f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SEMANTIC_INCORRECT_MESG:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 103
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_INVALID_MANDATORY_INFO"

    const/16 v6, 0x2f

    const/16 v7, 0x60

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 104
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_MESG_TYPE_NON_EXISTENT"

    const/16 v6, 0x30

    const/16 v7, 0x61

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_TYPE_NON_EXISTENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 105
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_MESG_TYPE_NOT_COMPATIBLE"

    const/16 v6, 0x31

    const/16 v7, 0x62

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_TYPE_NOT_COMPATIBLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 106
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_IE_NON_EXISTENT"

    const/16 v6, 0x32

    const/16 v7, 0x63

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_IE_NON_EXISTENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 107
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_CONDITIONAL_IE_ERR"

    const/16 v6, 0x33

    const/16 v7, 0x64

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_CONDITIONAL_IE_ERR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 108
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_MESG_NOT_COMPATIBLE"

    const/16 v6, 0x34

    const/16 v7, 0x65

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_NOT_COMPATIBLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 109
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PS_NET_DOWN_REASON_CLOSE_IN_PROGRESS"

    const/16 v6, 0x35

    const/16 v7, 0xcd

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PS_NET_DOWN_REASON_CLOSE_IN_PROGRESS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 110
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "INTERNAL_REASON"

    const/16 v6, 0x36

    const/16 v7, 0x378

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INTERNAL_REASON:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 113
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_PDN_CONN_DOES_NOT_EXIST"

    const/16 v6, 0x37

    const/16 v7, 0x36

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_PDN_CONN_DOES_NOT_EXIST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 114
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SM_PROC_TIME_OUT"

    const/16 v6, 0x38

    const/16 v7, 0x42d

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_PROC_TIME_OUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 118
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ESM_INFORMATION_NOT_RECEIVED"

    const/16 v6, 0x39

    const/16 v7, 0x35

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ESM_INFORMATION_NOT_RECEIVED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 119
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "BEARER_HANDLING_NOT_SUPPORTED"

    const/16 v6, 0x3a

    const/16 v7, 0x3c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->BEARER_HANDLING_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 124
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "REGISTRATION_FAIL"

    const/16 v6, 0x3b

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 125
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "GPRS_REGISTRATION_FAIL"

    const/16 v6, 0x3c

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 126
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SIGNAL_LOST"

    const/16 v6, 0x3d

    const/4 v7, -0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 127
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PREF_RADIO_TECH_CHANGED"

    const/16 v6, 0x3e

    const/4 v7, -0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 128
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "RADIO_POWER_OFF"

    const/16 v6, 0x3f

    const/4 v7, -0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 129
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "TETHERED_CALL_ACTIVE"

    const/16 v6, 0x40

    const/4 v7, -0x6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 131
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "EMERGENCY_CALL_PDN_CONNECTION_FAIL"

    const/16 v6, 0x41

    const/16 v7, 0xfa

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->EMERGENCY_CALL_PDN_CONNECTION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 132
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "EMEREGNCY_CALL_ATTACH_FAIL"

    const/16 v6, 0x42

    const/16 v7, 0xfb

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->EMEREGNCY_CALL_ATTACH_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 135
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ACTIVATION_REJECT_BY_FDN"

    const/16 v6, 0x43

    const/16 v7, 0x12c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_BY_FDN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 137
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ERROR_UNSPECIFIED"

    const/16 v6, 0x44

    const v7, 0xffff

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 139
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PPP_ERR_TIMEOUT"

    const/16 v6, 0x45

    const/16 v7, 0xbb9

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 140
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PPP_ERR_AUTH_FAILURE"

    const/16 v6, 0x46

    const/16 v7, 0xbba

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_AUTH_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 141
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PPP_ERR_INTERNAL_FAIL_A"

    const/16 v6, 0x47

    const/16 v7, 0xd6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_A:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 142
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PPP_ERR_INTERNAL_FAIL_B"

    const/16 v6, 0x48

    const/16 v7, 0xda

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_B:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 143
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PPP_ERR_INTERNAL_FAIL_C"

    const/16 v6, 0x49

    const/16 v7, 0x7d6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_C:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 144
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PPP_ERR_INTERNAL_FAIL_D"

    const/16 v6, 0x4a

    const/16 v7, 0x9ca

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_D:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 145
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PPP_ERR_INTERNAL_FAIL_E"

    const/16 v6, 0x4b

    const/16 v7, 0xdb

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_E:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 150
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "UNKNOWN"

    const/16 v6, 0x4c

    const/high16 v7, 0x10000

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 151
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "RADIO_NOT_AVAILABLE"

    const/16 v6, 0x4d

    const v7, 0x10001

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 152
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "UNACCEPTABLE_NETWORK_PARAMETER"

    const/16 v6, 0x4e

    const v7, 0x10002

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 153
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "CONNECTION_TO_DATACONNECTIONAC_BROKEN"

    const/16 v6, 0x4f

    const v7, 0x10003

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 154
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "LOST_CONNECTION"

    const/16 v6, 0x50

    const v7, 0x10004

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 155
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "RESET_BY_FRAMEWORK"

    const/16 v6, 0x51

    const v7, 0x10005

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 47
    const/16 v4, 0x52

    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v9

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_GEN_ERROR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_UNAUTH_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_NO_PDN_GW:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_PDN_GW_UNREACH:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_PDN_GW_REJ:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_INSUFF_PARAM:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_RESOURCE_UNAVAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v11

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_ADMIN_PROHIBIT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v12

    const/16 v5, 0x9

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_PDN_ID_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_SUBSCR_LIMITATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_3GPP2I_PDN_EXISTS_FOR_THIS_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x15

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x16

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x17

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x18

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x19

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->EMM_DETACHED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->APN_RESTRICTION_VALUE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MBMS_BEARER_CAP_INSUFFICIENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_LLC_SNDCP_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x20

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x21

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_QOS_NOT_ACCEPTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x22

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_NETWORK_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x23

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_REACTIVATION_REQUIRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_FEATURE_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v8

    const/16 v5, 0x25

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SEMANTIC_ERR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x26

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SYNTACTIC_ERR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x27

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_UNKNOWN_PDP_CONTEXT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x28

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SEMANTIC_ERR_IN_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x29

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SYNTACTIC_ERR_IN_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_PDP_WITHOUT_TFT_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MBMS_GROUP_MEMBERSHIP_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_ACTIVATION_REJECTED_BCM_VIOLATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_INVALID_TRANS_ID:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SEMANTIC_INCORRECT_MESG:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x30

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_TYPE_NON_EXISTENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x31

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_TYPE_NOT_COMPATIBLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x32

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_IE_NON_EXISTENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x33

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_CONDITIONAL_IE_ERR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x34

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_NOT_COMPATIBLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x35

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PS_NET_DOWN_REASON_CLOSE_IN_PROGRESS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x36

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INTERNAL_REASON:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x37

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_PDN_CONN_DOES_NOT_EXIST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x38

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_PROC_TIME_OUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x39

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ESM_INFORMATION_NOT_RECEIVED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->BEARER_HANDLING_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x40

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x41

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->EMERGENCY_CALL_PDN_CONNECTION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x42

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->EMEREGNCY_CALL_ATTACH_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x43

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_BY_FDN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x44

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x45

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x46

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_AUTH_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x47

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_A:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x48

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_B:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x49

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_C:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x4a

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_D:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x4b

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_E:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x4c

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x4d

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x4e

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x4f

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x50

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x51

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 168
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    .line 169
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/DcFailCause;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 170
    .local v1, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorTextToFailCauseMap:Ljava/util/HashMap;

    .line 178
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 179
    .restart local v1    # "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorTextToFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    .end local v1    # "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRilErrorCode:I

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 193
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    .line 194
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 413
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 414
    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    if-nez v0, :cond_0

    .line 415
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 417
    :cond_0
    return-object v0
.end method

.method public static fromText(Ljava/lang/String;)I
    .locals 2
    .param p0, "errorText"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorTextToFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 185
    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    if-nez v0, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 188
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DcFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    return v0
.end method

.method public getRilErrorCode()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRilErrorCode:I

    return v0
.end method

.method public isEventLoggable()Z
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailT3402Needed()Z
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_NETWORK_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_PDN_CONN_DOES_NOT_EXIST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SEMANTIC_INCORRECT_MESG:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_TYPE_NON_EXISTENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_TYPE_NOT_COMPATIBLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_IE_NON_EXISTENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_CONDITIONAL_IE_ERR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_NOT_COMPATIBLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_PROC_TIME_OUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentFail()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 230
    const-string v8, "ril.card_operator"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "operator":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v6

    .line 236
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    const-string v8, "false"

    const-string v9, "gsm.operator.isroaming"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "LGU"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 238
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_0

    move v6, v7

    .line 239
    goto :goto_0

    .line 245
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    .line 247
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_0

    :cond_3
    move v6, v7

    .line 252
    goto :goto_0

    .line 260
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CLEAR_CAUSE_FOR_TCL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 261
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 262
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "numeric":Ljava/lang/String;
    :goto_1
    const-string v8, "334020"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 264
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_0

    :cond_5
    move v6, v7

    goto/16 :goto_0

    .line 262
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_6
    const-string v2, ""

    goto :goto_1

    .line 276
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FDN_DATA_CALL_BLOCK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_BY_FDN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_8

    move v6, v7

    .line 278
    goto/16 :goto_0

    .line 283
    :cond_8
    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_TEL_AU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 284
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_NETWORK_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_0

    :cond_9
    move v6, v7

    goto/16 :goto_0

    .line 295
    :cond_a
    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 296
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_0

    :cond_b
    move v6, v7

    goto/16 :goto_0

    .line 307
    :cond_c
    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 308
    const-string v8, "persist.lg.data.lastnumeric"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .restart local v2    # "numeric":Ljava/lang/String;
    const-string v8, "ril.current.datatech"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "networkType":Ljava/lang/String;
    const-string v8, "DcFailCause"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "numeric : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v8, "311480"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "00101"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "001010"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 314
    :cond_d
    const-string v8, "14"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 315
    const-string v7, "DcFailCause"

    const-string v8, "will be handle"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :cond_e
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_f

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_f

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_f

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_f

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_0

    :cond_f
    move v6, v7

    goto/16 :goto_0

    .line 327
    .end local v1    # "networkType":Ljava/lang/String;
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 328
    .local v0, "context":Landroid/content/Context;
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_11

    .line 329
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto/16 :goto_0

    .line 331
    :cond_11
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_12

    .line 332
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112008d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto/16 :goto_0

    .line 336
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_14

    .line 337
    const-string v8, "gsm.network.type"

    const-string v9, "unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "radioString":Ljava/lang/String;
    const-string v8, "eHRPD"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "CDMA-IS95A"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "CDMA-IS95B"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "1xRTT"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "EvDo-rev.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "EvDo-rev.A"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 341
    :cond_13
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_14

    .line 342
    const-string v7, "DcFailCause"

    const-string v8, "IGNORE_3GPP2_UNEXPECTED_PERMANET_FAIL"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 348
    .end local v5    # "radioString":Ljava/lang/String;
    :cond_14
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v8, :cond_0

    :cond_15
    move v6, v7

    goto/16 :goto_0
.end method

.method public isRestartRadioFail()Z
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetryNeededWithIPv4Failure()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 388
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 394
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 398
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 400
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_NETWORK_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ESM_INFORMATION_NOT_RECEIVED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->BEARER_HANDLING_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_SEMANTIC_INCORRECT_MESG:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SM_MESG_TYPE_NON_EXISTENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public needEhrpdImsRetry()Z
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_AUTH_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_A:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_B:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_C:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_D:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PPP_ERR_INTERNAL_FAIL_E:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRilErrorCode(I)I
    .locals 0
    .param p1, "ec"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRilErrorCode:I

    return p1
.end method
