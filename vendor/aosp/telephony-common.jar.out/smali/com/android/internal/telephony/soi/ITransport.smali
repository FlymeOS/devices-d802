.class public interface abstract Lcom/android/internal/telephony/soi/ITransport;
.super Ljava/lang/Object;
.source "ITransport.java"


# static fields
.field public static final BEARER_DATA:B = 0x8t

.field public static final BEARER_REPLY_OPTION:B = 0x6t

.field public static final CAUSE_CODES:B = 0x7t

.field public static final DESTINATION_ADDRESS:B = 0x4t

.field public static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field public static final ERROR_PERM:I = 0x3

.field public static final ERROR_TEMP:I = 0x2

.field public static final ERR_BAD_PARM:I = 0x2

.field public static final ERR_GENERIC_ERROR:I = 0x3

.field public static final ERR_MSG_DECODE:I = 0xca

.field public static final ERR_MSG_ENCODE:I = 0xc9

.field public static final ERR_MSG_FORMAT:I = 0xc8

.field public static final ERR_MSG_TPDU_TYPE:I = 0xcb

.field public static final ERR_NONE:I = 0x0

.field public static final ERR_UNSUPPORTED:I = 0x1

.field public static final LEN_OF_TELESERVICE_IDENTIFIER:B = 0x2t

.field public static final MR_FOR_CATPT:I = 0x100

.field public static final MSG_INVOKE_MO_ACK:I = 0x44c

.field public static final MSG_INVOKE_MT:I = 0x3e9

.field public static final MSG_INVOKE_MT_CONCAT:I = 0x3ea

.field public static final MSG_INVOKE_MT_CONCAT_2:I = 0x3eb

.field public static final MSG_INVOKE_SMMA_ACK:I = 0x44d

.field public static final MSG_MO_RETRY_INTERVAL_TIMER:I = 0x9

.field public static final MSG_MO_TIMER:I = 0x5

.field public static final MSG_WAIT_FOR_MT_ACK_TIMER:I = 0x6

.field public static final ORIGINATING_ADDRESS:B = 0x2t

.field public static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field public static final SCADDRESS_FOR_CATPT:Ljava/lang/String; = "0181"

.field public static final SERVICE_CATEGORY:B = 0x1t

.field public static final SMS_ACCESS_BLOCK_S:I = 0x6e

.field public static final SMS_ACCESS_TOO_LARGE_S:I = 0x6c

.field public static final SMS_ACKNOWLEDGE:B = 0x2t

.field public static final SMS_BROADCAST:B = 0x1t

.field public static final SMS_CS_ERROR_S:I = 0x191

.field public static final SMS_DTC_TOO_LARGE_S:I = 0x6d

.field public static final SMS_ESN_MISMATCH_S:I = 0x6f

.field public static final SMS_GENERAL_ERROR_S:I = 0x6

.field public static final SMS_INVALID_CB_DATA_S:I = 0xca

.field public static final SMS_INVALID_FORMAT_S:I = 0x5

.field public static final SMS_INVALID_PARM_SIZE_S:I = 0x64

.field public static final SMS_INVALID_PARM_VALUE_S:I = 0x66

.field public static final SMS_INVALID_TPDU_TYPE_S:I = 0xc8

.field public static final SMS_INVALID_TRANSACTION_ID_S:I = 0x4

.field public static final SMS_INVALID_USER_DATA_SIZE_S:I = 0x65

.field public static final SMS_INVALID_VALIDITY_FORMAT_S:I = 0xc9

.field public static final SMS_MASK_TL_ADDRESS:I = 0x4

.field public static final SMS_MASK_TL_BC_SRV_CATEGORY:I = 0x2

.field public static final SMS_MASK_TL_BEARER_DATA:I = 0x100

.field public static final SMS_MASK_TL_BEARER_REPLY_OPTION:I = 0x40

.field public static final SMS_MASK_TL_CAUSE_CODES:I = 0x80

.field public static final SMS_MASK_TL_NULL:I = 0x0

.field public static final SMS_MASK_TL_SUBADDRESS:I = 0x8

.field public static final SMS_MASK_TL_TELESERVICE_ID:I = 0x1

.field public static final SMS_MISSING_PARM_S:I = 0x67

.field public static final SMS_MO_PREF_CHN_NOT_AVAIL_S:I = 0x70

.field public static final SMS_MO_PREF_CHN_UNSUPPORTED_S:I = 0x71

.field public static final SMS_MT_MSG_FAILED_S:I = 0xcb

.field public static final SMS_NETWORK_FAILURE_S:I = 0x6b

.field public static final SMS_NETWORK_NOT_READY_S:I = 0x68

.field public static final SMS_NOT_ALLOWED_IN_AMPS_S:I = 0x6a

.field public static final SMS_NULL_PTR_S:I = 0x8

.field public static final SMS_OK_S:I = 0x0

.field public static final SMS_OUT_OF_RESOURCES_S:I = 0x1

.field public static final SMS_PHONE_NOT_READY_S:I = 0x69

.field public static final SMS_POINT_TO_POINT:B = 0x0t

.field public static final SMS_RPC_ERROR_S:I = 0x192

.field public static final SMS_SIP_PERM_ERROR_S:I = 0x12c

.field public static final SMS_SIP_TEMP_ERROR_S:I = 0x12d

.field public static final SMS_STATUS_MAX32:I = 0x10000000

.field public static final SMS_TERMINAL_BLOCKED_S:I = 0x2

.field public static final SMS_TERMINAL_BUSY_S:I = 0x3

.field public static final SMS_TL_DUMMY:B = -0x1t

.field public static final SMS_TRANSPORT_NOT_ALLOWED_S:I = 0x1f5

.field public static final SMS_TRANSPORT_NOT_READY_S:I = 0x1f4

.field public static final SMS_UNSUPPORTED_S:I = 0x7

.field public static final SMS_WMSC_ERROR_S:I = 0x190

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_LAYER2_IN_PROGRESS:I = 0x2

.field public static final STATE_WAIT_FOR_ACK:I = 0x1

.field public static final TELESERVICE_IDENTIFIER:B = 0x0t

.field public static final TL_BEARER_REPLY_OPTION_SIZE:B = 0x1t

.field public static final TL_MO_RETRY_INTERVAL_TIMEOUT:I = 0x7d0

.field public static final TL_MO_TIMEOUT:I = 0xea60

.field public static final TL_MT_TIMEOUT:I = 0x4e20

.field public static final TL_PARM_SIZE:B = 0x2t

.field public static final TP_MTI_COMMAND:I = 0x2

.field public static final TP_MTI_DELIVER:I = 0x0

.field public static final TP_MTI_DELIVER_REPORT:I = 0x0

.field public static final TP_MTI_RESERVED:I = 0x3

.field public static final TP_MTI_STATUS_REPORT:I = 0x2

.field public static final TP_MTI_SUBMIT:I = 0x1

.field public static final TP_MTI_SUBMIT_REPORT:I = 0x1

.field public static final TYPE_ACK:I = 0x1

.field public static final TYPE_ACK_WITH_PDU:I = 0x2

.field public static final TYPE_DELIVER:I = 0x3

.field public static final TYPE_REPORT_IND:I = 0x4

.field public static final TYPE_REPORT_SMS_MEMORY_STATUS:I = 0x5

.field public static final TYPE_SUBMIT:I = 0x0

.field public static final WMS_MSG_SMMA_REQUEST_ID:I = 0xffff

.field public static final WMS_TELESERVICE_CATPT:I = 0x1007


# virtual methods
.method public abstract send(Lcom/android/internal/telephony/soi/TransportData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/soi/exception/BaseSoiException;
        }
    .end annotation
.end method
