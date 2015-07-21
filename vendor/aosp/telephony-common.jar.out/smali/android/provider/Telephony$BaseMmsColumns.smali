.class public interface abstract Landroid/provider/Telephony$BaseMmsColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseMmsColumns"
.end annotation


# static fields
.field public static final ADAPTATION_ALLOWED:Ljava/lang/String; = "adp_a"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final ALERTING:Ljava/lang/String; = "alerting"

.field public static final ALERT_TIME:Ljava/lang/String; = "alert_time"

.field public static final APPLIC_ID:Ljava/lang/String; = "apl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUX_APPLIC_ID:Ljava/lang/String; = "aux_apl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCC:Ljava/lang/String; = "bcc"

.field public static final CANCEL_ID:Ljava/lang/String; = "cl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CANCEL_STATUS:Ljava/lang/String; = "cl_st"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CC:Ljava/lang/String; = "cc"

.field public static final CHATTING_READ_REPLY:Ljava/lang/String; = "chatting_read_reply"

.field public static final CONTENT_CLASS:Ljava/lang/String; = "ct_cls"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "ct_l"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "ct_t"

.field public static final CREATOR:Ljava/lang/String; = "creator"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DATE_SENT:Ljava/lang/String; = "date_sent"

.field public static final DELIVERY_CONFIRMED:I = 0x1

.field public static final DELIVERY_READ_CONFIRM:Ljava/lang/String; = "delivery_read_confirm"

.field public static final DELIVERY_READ_CONFIRMED:I = 0x3

.field public static final DELIVERY_REPORT:Ljava/lang/String; = "d_rpt"

.field public static final DELIVERY_TIME:Ljava/lang/String; = "d_tm"

.field public static final DELIVERY_TIME_TOKEN:Ljava/lang/String; = "d_tm_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISTRIBUTION_INDICATOR:Ljava/lang/String; = "d_ind"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRM_CONTENT:Ljava/lang/String; = "drm_c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EHTTP_RESPONSE:Ljava/lang/String; = "ehttp_resp"

.field public static final ELEMENT_DESCRIPTOR:Ljava/lang/String; = "e_des"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXPIRY:Ljava/lang/String; = "exp"

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final KTAPPLICATIONDATA:Ljava/lang/String; = "ktapplicationdata"

.field public static final KTAUTHRAND:Ljava/lang/String; = "ktauthrand"

.field public static final KTAUTHS1:Ljava/lang/String; = "ktauths1"

.field public static final LIMIT:Ljava/lang/String; = "limit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final MBOX_QUOTAS:Ljava/lang/String; = "mb_qt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MBOX_QUOTAS_TOKEN:Ljava/lang/String; = "mb_qt_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MBOX_TOTALS:Ljava/lang/String; = "mb_t"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MBOX_TOTALS_TOKEN:Ljava/lang/String; = "mb_t_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_BOX:Ljava/lang/String; = "msg_box"

.field public static final MESSAGE_BOX_ADV:I = 0x11

.field public static final MESSAGE_BOX_ALL:I = 0x0

.field public static final MESSAGE_BOX_DRAFTS:I = 0x3

.field public static final MESSAGE_BOX_FAILED:I = 0x5

.field public static final MESSAGE_BOX_INBOX:I = 0x1

.field public static final MESSAGE_BOX_OUTBOX:I = 0x4

.field public static final MESSAGE_BOX_RESERVED:I = 0x8

.field public static final MESSAGE_BOX_SAVE:I = 0xd

.field public static final MESSAGE_BOX_SAVETEMP:I = 0x28

.field public static final MESSAGE_BOX_SENT:I = 0x2

.field public static final MESSAGE_BOX_SPAM:I = 0x7

.field public static final MESSAGE_CLASS:Ljava/lang/String; = "m_cls"

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "m_cnt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_ID:Ljava/lang/String; = "m_id"

.field public static final MESSAGE_SIZE:Ljava/lang/String; = "m_size"

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "m_type"

.field public static final MESSAGE_TYPE_FAILED:I = 0x5

.field public static final MMS_VERSION:Ljava/lang/String; = "v"

.field public static final MM_FLAGS:Ljava/lang/String; = "mm_flg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MM_FLAGS_TOKEN:Ljava/lang/String; = "mm_flg_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MM_STATE:Ljava/lang/String; = "mm_st"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSGBOX_TYPE:Ljava/lang/String; = "msg_boxtype"

.field public static final MSGBOX_TYPE_INFOLDER:I = 0x1

.field public static final MSGBOX_TYPE_MISSSENTFOLDER:I = 0x5

.field public static final MSGBOX_TYPE_NONE:I = 0x0

.field public static final MSGBOX_TYPE_OUTFOLDER:I = 0x2

.field public static final MSGBOX_TYPE_SAVEFOLDER:I = 0x4

.field public static final MSGBOX_TYPE_SPAMFOLDER:I = 0x3

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NOTHING_CONFIRMED:I = 0x0

.field public static final PHONE_ID:Ljava/lang/String; = "phone_id"

.field public static final PREVIOUSLY_SENT_BY:Ljava/lang/String; = "p_s_by"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PREVIOUSLY_SENT_DATE:Ljava/lang/String; = "p_s_d"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY:Ljava/lang/String; = "pri"

.field public static final QUOTAS:Ljava/lang/String; = "qt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final READ:Ljava/lang/String; = "read"

.field public static final READ_CONFIRMED:I = 0x2

.field public static final READ_REPORT:Ljava/lang/String; = "rr"

.field public static final READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final RECOMMENDED_RETRIEVAL_MODE:Ljava/lang/String; = "r_r_mod"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECOMMENDED_RETRIEVAL_MODE_TEXT:Ljava/lang/String; = "r_r_mod_txt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLACE_ID:Ljava/lang/String; = "repl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLY_APPLIC_ID:Ljava/lang/String; = "r_apl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLY_CHARGING:Ljava/lang/String; = "r_chg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLY_CHARGING_DEADLINE:Ljava/lang/String; = "r_chg_dl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLY_CHARGING_DEADLINE_TOKEN:Ljava/lang/String; = "r_chg_dl_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLY_CHARGING_ID:Ljava/lang/String; = "r_chg_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLY_CHARGING_SIZE:Ljava/lang/String; = "r_chg_sz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_ALLOWED:Ljava/lang/String; = "rpt_a"

.field public static final RESERVE_TIME:Ljava/lang/String; = "reserve_time"

.field public static final RESPONSE_STATUS:Ljava/lang/String; = "resp_st"

.field public static final RESPONSE_TEXT:Ljava/lang/String; = "resp_txt"

.field public static final RETRIEVE_STATUS:Ljava/lang/String; = "retr_st"

.field public static final RETRIEVE_TEXT:Ljava/lang/String; = "retr_txt"

.field public static final RETRIEVE_TEXT_CHARSET:Ljava/lang/String; = "retr_txt_cs"

.field public static final SAVE_CALL_INBOX:I = 0x1

.field public static final SAVE_CALL_NONE:I = 0x0

.field public static final SAVE_CALL_OUTBOX:I = 0x2

.field public static final SAVE_CALL_TYPE:Ljava/lang/String; = "save_call_type"

.field public static final SEEN:Ljava/lang/String; = "seen"

.field public static final SENDER_NUM:Ljava/lang/String; = "sender_num"

.field public static final SENDER_VISIBILITY:Ljava/lang/String; = "s_vis"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SPAM_REPORT:Ljava/lang/String; = "spam_report"

.field public static final SPAM_REPORT_COMPLETE:I = 0x1

.field public static final SPAM_REPORT_NOT_YET:I = 0x0

.field public static final START:Ljava/lang/String; = "start"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS:Ljava/lang/String; = "st"

.field public static final STATUS_TEXT:Ljava/lang/String; = "st_txt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STORE:Ljava/lang/String; = "store"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STORED:Ljava/lang/String; = "stored"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STORE_STATUS:Ljava/lang/String; = "store_st"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STORE_STATUS_TEXT:Ljava/lang/String; = "store_st_txt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUBJECT:Ljava/lang/String; = "sub"

.field public static final SUBJECT_CHARSET:Ljava/lang/String; = "sub_cs"

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TAG_ENG:Ljava/lang/String; = "tag_eng"

.field public static final TEXT_ONLY:Ljava/lang/String; = "text_only"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TO:Ljava/lang/String; = "to"

.field public static final TOTALS:Ljava/lang/String; = "totals"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSACTION_ID:Ljava/lang/String; = "tr_id"

.field public static final TYPE:Ljava/lang/String; = "type"
