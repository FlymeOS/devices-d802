.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final ACTION_RETRY_TOBE_ENABLE_CBMI:Ljava/lang/String; = "android.intent.action.ENABLE_CBMI"

.field public static final CALLBACKURLSPAM_KT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURLSPAM_KT_RECEIVED"

.field public static final CALLBACKURLSPAM_SKT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURLSPAM_SKT_RECEIVED"

.field public static final CALLBACKURL_KT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURL_KT_RECEIVED"

.field public static final CALLBACKURL_SKT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURL_SKT_RECEIVED"

.field public static final CB_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_SMS_RECEIVED"

.field public static final COMMONPUSH_SKT_RECEIVED_ACTION:Ljava/lang/String; = "com.skt.push.SMS_PUSH"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DELETE_SIM_MESSAGE_ACTION:Ljava/lang/String; = "android.provider.Telephony.DELETE_SIM_MESSAGE"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final EXTRA_NET_MODE:Ljava/lang/String; = "netmode"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final FOTA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.FOTA_RECEIVED"

.field public static final LGE_CMAS_RECEIVED_ACTION:Ljava/lang/String; = "com.lge.provider.Telephony.LGE_CMAS_RECEIVED"

.field public static final LGE_MMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_RECEIVED"

.field public static final LMS_PULL_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPULL_RECEIVED"

.field public static final LMS_PULL_SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPULL_SPAM_RECEIVED"

.field public static final LMS_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPUSH_RECEIVED"

.field public static final LMS_PUSH_SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPUSH_SPAM_RECEIVED"

.field public static final NETMODE_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.NETMODE_UPDATED"

.field public static final PORTADDRESS_KT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.PORTADDRESS_KT_RECEIVED"

.field public static final PORTADDRESS_SKT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.PORTADDRESS_SKT_RECEIVED"

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_NOT_HANDLED:I = 0xb

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SELF_REGI_CONFIRM_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.SELF_REGI_SMS_RECEIVED"

.field public static final SEND_SMS_REQUST_BACKGROUND_ACTION:Ljava/lang/String; = "android.provider.Telephony.SEND_SMS_REQUST_BACKGROUND"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SKAF_MMS_RECEIVED_ACTION:Ljava/lang/String; = "com.skt.skaf.ACTION.MMS_RECEIVED"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_CDMA_DAN_DELIVERED:Ljava/lang/String; = "com.lge.kddi.intent.action.DAN_DELIVERED"

.field public static final SMS_CDMA_DAN_FAIL_RETRY:Ljava/lang/String; = "com.lge.kddi.intent.action.DAN_FAIL_RETRY"

.field public static final SMS_CDMA_DAN_OK:Ljava/lang/String; = "com.lge.kddi.intent.action.DAN_SENT_OK"

.field public static final SMS_CDMA_DAN_SENT:Ljava/lang/String; = "com.lge.kddi.intent.action.DAN_SENT"

.field public static final SMS_CDMA_DOMAIN_NOTIFICATION:Ljava/lang/String; = "com.lge.ims.action.DOMAIN_NOTIFICATION"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_FILTER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_FILTER"

.field public static final SMS_OVER_IMS_REGI_INFO:Ljava/lang/String; = "com.lge.kddi.intent.action.IMS_REGI_INFO"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SEND_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SEND"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final SMS_WIFI_OFF:Ljava/lang/String; = "android.intent.action.SMS_WIFI_OFF"

.field public static final SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPAM_RECEIVED"

.field public static final VIDEO_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.VIDEO_RECEIVED"

.field public static final VOICE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.VOICE_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field public static final WAP_PUSH_SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_SPAM_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1817
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 24
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2483
    const-string v20, "pdus"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v11, v20

    check-cast v11, [Ljava/lang/Object;

    .line 2484
    .local v11, "messages":[Ljava/lang/Object;
    const-string v20, "format"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2485
    .local v5, "format":Ljava/lang/String;
    const-string v20, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 2488
    .local v18, "subId":J
    const-string v20, "tag"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " getMessagesFromIntent sub_id : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    const/4 v13, 0x0

    .line 2491
    .local v13, "missingSegIndexArray":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 2492
    .local v9, "isReplaceConcat":Z
    const/4 v12, 0x0

    .line 2493
    .local v12, "missingSegIndex":Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, "concat_stitching"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2494
    const-string v20, "ctreplace"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 2495
    const-string v20, "tag"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Red] isReplaceConcat : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    if-eqz v9, :cond_0

    .line 2497
    const-string v20, "missingSegIndex"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2498
    const-string v20, "tag"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Red] missingSegIndex : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2500
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 2505
    :cond_0
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    .line 2507
    .local v16, "pduObjs":[[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_1

    .line 2508
    aget-object v20, v11, v6

    check-cast v20, [B

    check-cast v20, [B

    aput-object v20, v16, v6

    .line 2507
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2510
    :cond_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 2511
    .local v17, "pdus":[[B
    move-object/from16 v0, v17

    array-length v15, v0

    .line 2512
    .local v15, "pduCount":I
    new-array v14, v15, [Landroid/telephony/SmsMessage;

    .line 2513
    .local v14, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v15, :cond_5

    .line 2514
    aget-object v20, v16, v6

    aput-object v20, v17, v6

    .line 2516
    const/16 v20, 0x0

    const-string v21, "parse_pdu_twice"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2518
    aget-object v20, v17, v6

    invoke-static/range {v20 .. v20}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v20

    aput-object v20, v14, v6

    .line 2542
    :cond_2
    :goto_2
    aget-object v20, v14, v6

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsMessage;->setSubId(J)V

    .line 2513
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2523
    :cond_3
    aget-object v20, v17, v6

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v20

    aput-object v20, v14, v6

    .line 2525
    const/16 v20, 0x0

    const-string v21, "concat_stitching"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2526
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_2

    .line 2527
    if-eqz v13, :cond_2

    .line 2528
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v10, :cond_2

    aget-object v8, v4, v7

    .line 2529
    .local v8, "index":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2530
    const-string v20, "tag"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " [RED] missing seg : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    aget-object v20, v14, v6

    if-eqz v20, :cond_2

    .line 2532
    aget-object v20, v14, v6

    const-string v21, "(...)"

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/SmsMessage;->setMessageBodyWithSpecificString(Ljava/lang/String;)V

    goto :goto_2

    .line 2528
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2544
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "index":Ljava/lang/String;
    .end local v10    # "len$":I
    :cond_5
    return-object v14
.end method
