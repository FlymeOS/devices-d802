.class public interface abstract Lcom/android/internal/telephony/soi/IRelay;
.super Ljava/lang/Object;
.source "IRelay.java"


# static fields
.field public static final ABORT_SM_REQ:I = 0x33

.field public static final IDLE:I = 0x0

.field public static final IMS_ERROR_IND:I = 0x3

.field public static final MEMORY_AVAIL_NOTIFICATION_REQ:I = 0x32

.field public static final MSG_FROM_SOI_TO_TL:I = 0x65

.field public static final MSG_FROM_TL_TO_SOI:I = 0x66

.field public static final MSG_IMS_ERROR_IND:I = 0x67

.field public static final MSG_INVOKE_MO_ACK:I = 0x834

.field public static final MSG_INVOKE_MT:I = 0x7d1

.field public static final MSG_INVOKE_MT_CONCAT:I = 0x7d2

.field public static final MSG_INVOKE_MT_CONCAT_2:I = 0x7d3

.field public static final MSG_INVOKE_SMMA_ACK:I = 0x835

.field public static final MSG_SMMA_REQUEST_IDENTIFIER_BASE:I = 0xffff

.field public static final MSG_TR1M_TIMER:I = 0xc9

.field public static final MSG_TR2M_TIMER:I = 0xca

.field public static final MSG_TRAM_TIMER:I = 0xcb

.field public static final MT_ACK_REPORT_IDENTIFIER_BASE:I = 0x2000

.field public static final MT_MESSAGE_IDENTIFIER_BASE:I = 0x1000

.field public static final MT_SMS_RES:I = 0x60

.field public static final NO_ERROR_ABORT_SM_COMPLETE:I = 0x1

.field public static final NO_ERROR_CP_ACK:I = 0xa

.field public static final NO_ERROR_RP_ACK:I = 0x0

.field public static final NO_ERROR_SMMA_ABORT_SENT:I = 0x2

.field public static final RL_SEND:I = 0x0

.field public static final RPT_1X_AND_VOICE_NOT_ALLOWED:I = 0xd

.field public static final RPT_ACCESS_BLOCK:I = 0xc

.field public static final RPT_ACCESS_TOO_LARGE:I = 0x8

.field public static final RPT_CANNOT_SEND_BROADCAST:I = 0xb

.field public static final RPT_CDMA_TL_ERROR:I = 0x7

.field public static final RPT_CP_ERROR:I = 0x65

.field public static final RPT_DC_TOO_LARGE:I = 0x9

.field public static final RPT_GENERAL_ERROR:I = 0x2

.field public static final RPT_INVALID_AS_ID:I = 0x12c

.field public static final RPT_LL_ERROR:I = 0x1

.field public static final RPT_MO_CONTROL_DISALLOW:I = 0x69

.field public static final RPT_MO_CONTROL_ERROR:I = 0x6a

.field public static final RPT_MO_RETRY_PERIOD_EXPIRED:I = 0x6b

.field public static final RPT_NETWORK_NOT_READY:I = 0x4

.field public static final RPT_NOT_ALLOWED_IN_AMPS:I = 0xa

.field public static final RPT_NO_ACK:I = 0x6

.field public static final RPT_NO_RESPONSE_FROM_NETWORK:I = 0x6c

.field public static final RPT_NO_RESPONSE_FROM_NEWTWORK_FOR_SUBMIT_REPORT:I = 0x6e

.field public static final RPT_OK:I = 0x0

.field public static final RPT_OUT_OF_RESOURCES:I = 0x3

.field public static final RPT_PHONE_NOT_READY:I = 0x5

.field public static final RPT_PREF_CHN_NOT_AVAIL_ERROR:I = 0xe

.field public static final RPT_RADIO_LINK_ENDED_FOR_SUBMIT_REPORT:I = 0x6d

.field public static final RPT_RADIO_UNAVAILABLE:I = 0x12d

.field public static final RPT_RP_ERROR:I = 0x64

.field public static final RPT_SIP_PERM_ERROR:I = 0xc8

.field public static final RPT_SIP_TEMP_ERROR:I = 0xc9

.field public static final RPT_SMR_NO_RESOURCES:I = 0x68

.field public static final RPT_SMR_TR1M_TIMEOUT:I = 0x66

.field public static final RPT_SMR_TR2M_TIMEOUT:I = 0x67

.field public static final RPT_TRANSPORT_NOT_ALLOWED:I = 0x191

.field public static final RPT_TRANSPORT_NOT_READY:I = 0x190

.field public static final RP_CAUSE_LENGTH_1:I = 0x1

.field public static final RP_CAUSE_LENGTH_2:I = 0x2

.field public static final SMR_ERROR_NO_SM_RESOURCES:I = 0x3

.field public static final SMR_ERROR_TR1M_TIMEOUT:I = 0x4

.field public static final SMR_ERROR_TR2M_TIMEOUT:I = 0x5

.field public static final SMS_CONF:I = 0xa0

.field public static final SMS_CP_ERROR:I = 0x7

.field public static final SMS_IMS_ERROR_IND:I = 0x0

.field public static final SMS_IMS_RPDU_IND:I = 0x1

.field public static final SMS_LL_ERROR:I = 0x8

.field public static final SMS_NO_RESPONSE_FROM_NETWORK:I = 0x9

.field public static final SMS_NO_RESPONSE_FROM_NEWTWORK_FOR_SUBMIT_REPORT:I = 0xd

.field public static final SMS_RADIO_LINK_ENDED_FOR_SUBMIT_REPORT:I = 0xc

.field public static final SMS_REQ:I = 0x30

.field public static final SMS_RPT_RADIO_UNAVAILABLE:I = 0xb

.field public static final SMS_RP_ERROR:I = 0x6

.field public static final SM_DATA_IND:I = 0xf1

.field public static final SM_DATA_REQ:I = 0x31

.field public static final SM_IND:I = 0xf0

.field public static final SM_LINK_CONTROL_IND:I = 0xf3

.field public static final SM_LINK_CONTROL_REQ:I = 0x35

.field public static final SM_REPORT_IND:I = 0xf2

.field public static final SM_REPORT_REQ:I = 0x34

.field public static final SOI_TO_RL:I = 0x1

.field public static final TL_TO_RL:I = 0x2

.field public static final TR1M_TIMEOUT_VALUE:I

.field public static final TR2M_TIMEOUT_VALUE:I

.field public static final TRAM_TIMEOUT_VALUE:I = 0x7530

.field public static final WAIT_FOR_RETRANS_TIMER:I = 0x4

.field public static final WAIT_FOR_RP_ACK:I = 0x1

.field public static final WAIT_TO_SEND_RP_ACK:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_TR1M_TEST_ENABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    sput v0, Lcom/android/internal/telephony/soi/IRelay;->TR1M_TIMEOUT_VALUE:I

    .line 202
    sget-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MT_TR2M_TEST_ENABLE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2bc

    :goto_1
    sput v0, Lcom/android/internal/telephony/soi/IRelay;->TR2M_TIMEOUT_VALUE:I

    return-void

    .line 200
    :cond_0
    const v0, 0xafc8

    goto :goto_0

    .line 202
    :cond_1
    const/16 v0, 0x4e20

    goto :goto_1
.end method


# virtual methods
.method public abstract notifyRelayEvent(I)V
.end method

.method public abstract notifyRelayEvent(ILjava/lang/Object;)V
.end method

.method public abstract registerRelayEventListener(Lcom/android/internal/telephony/soi/IRelayEventListener;)V
.end method

.method public abstract send(Lcom/android/internal/telephony/soi/RelayData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/soi/exception/BaseSoiException;
        }
    .end annotation
.end method
