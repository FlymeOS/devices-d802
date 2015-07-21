.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final ALLRECEIVE_MODE:B = 0x3t

.field private static final COMMERCIAL_MODE:B = 0x0t

.field private static final KDDITEST_MODE:B = 0x2t

.field private static final MANUFACTURETEST_MODE:B = 0x1t

.field private static final VDBG:Z


# instance fields
.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 65
    const-string v0, "GsmCellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 66
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method private handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;
    .locals 31
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 111
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v30, v0

    .line 128
    .local v30, "receivedPdu":[B
    new-instance v18, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 129
    .local v18, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 130
    .local v29, "plmn":Ljava/lang/String;
    const/16 v22, -0x1

    .line 131
    .local v22, "lac":I
    const/4 v14, -0x1

    .line 132
    .local v14, "cid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v15

    .line 136
    .local v15, "cl":Landroid/telephony/CellLocation;
    instance-of v3, v15, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_0

    .line 137
    move-object v0, v15

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v13, v0

    .line 138
    .local v13, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v13}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v22

    .line 139
    invoke-virtual {v13}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v14

    .line 143
    .end local v13    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 155
    :pswitch_0
    new-instance v24, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 160
    .local v24, "location":Landroid/telephony/SmsCbLocation;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v26

    .line 161
    .local v26, "pageCount":I
    const/4 v3, 0x1

    move/from16 v0, v26

    if-le v0, v3, :cond_5

    .line 163
    new-instance v16, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 166
    .local v16, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [[B

    .line 168
    .local v28, "pdus":[[B
    if-nez v28, :cond_1

    .line 171
    move/from16 v0, v26

    new-array v0, v0, [[B

    move-object/from16 v28, v0

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput-object v30, v28, v3

    .line 179
    move-object/from16 v12, v28

    .local v12, "arr$":[[B
    array-length v0, v12

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    aget-object v27, v12, v19

    .line 180
    .local v27, "pdu":[B
    if-nez v27, :cond_2

    .line 182
    const/4 v3, 0x0

    .line 229
    .end local v12    # "arr$":[[B
    .end local v14    # "cid":I
    .end local v15    # "cl":Landroid/telephony/CellLocation;
    .end local v16    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v18    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v19    # "i$":I
    .end local v22    # "lac":I
    .end local v23    # "len$":I
    .end local v24    # "location":Landroid/telephony/SmsCbLocation;
    .end local v26    # "pageCount":I
    .end local v27    # "pdu":[B
    .end local v28    # "pdus":[[B
    .end local v29    # "plmn":Ljava/lang/String;
    .end local v30    # "receivedPdu":[B
    :goto_2
    return-object v3

    .line 145
    .restart local v14    # "cid":I
    .restart local v15    # "cl":Landroid/telephony/CellLocation;
    .restart local v18    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v22    # "lac":I
    .restart local v29    # "plmn":Ljava/lang/String;
    .restart local v30    # "receivedPdu":[B
    :pswitch_1
    new-instance v24, Landroid/telephony/SmsCbLocation;

    const/4 v3, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 146
    .restart local v24    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 150
    .end local v24    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v24, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v14}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 151
    .restart local v24    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 179
    .restart local v12    # "arr$":[[B
    .restart local v16    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .restart local v19    # "i$":I
    .restart local v23    # "len$":I
    .restart local v26    # "pageCount":I
    .restart local v27    # "pdu":[B
    .restart local v28    # "pdus":[[B
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 187
    .end local v27    # "pdu":[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v12    # "arr$":[[B
    .end local v16    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v19    # "i$":I
    .end local v23    # "len$":I
    :goto_3
    const/4 v3, 0x0

    const-string v5, "emergency_alert_filtering"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    const/4 v3, 0x0

    const-string v5, "wifi_off_emergency_received"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    .line 197
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v25

    .line 198
    .local v25, "msg_id":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBroadcastSms(), [KDDI] messgeIdentifier = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 199
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->kddiFilterMsgid(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 200
    const/4 v3, 0x0

    goto :goto_2

    .line 190
    .end local v25    # "msg_id":I
    .end local v28    # "pdus":[[B
    :cond_5
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v28, v0

    .line 191
    .restart local v28    # "pdus":[[B
    const/4 v3, 0x0

    aput-object v30, v28, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 227
    .end local v14    # "cid":I
    .end local v15    # "cl":Landroid/telephony/CellLocation;
    .end local v18    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v22    # "lac":I
    .end local v24    # "location":Landroid/telephony/SmsCbLocation;
    .end local v26    # "pageCount":I
    .end local v28    # "pdus":[[B
    .end local v29    # "plmn":Ljava/lang/String;
    .end local v30    # "receivedPdu":[B
    :catch_0
    move-exception v17

    .line 228
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string v3, "Error in decoding SMS CB pdu"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    const/4 v3, 0x0

    goto :goto_2

    .line 203
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v14    # "cid":I
    .restart local v15    # "cl":Landroid/telephony/CellLocation;
    .restart local v18    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v22    # "lac":I
    .restart local v24    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v25    # "msg_id":I
    .restart local v26    # "pageCount":I
    .restart local v28    # "pdus":[[B
    .restart local v29    # "plmn":Ljava/lang/String;
    .restart local v30    # "receivedPdu":[B
    :cond_6
    const/16 v3, 0x1100

    move/from16 v0, v25

    if-eq v0, v3, :cond_7

    const v3, 0xa003

    move/from16 v0, v25

    if-ne v0, v3, :cond_8

    .line 204
    :cond_7
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBroadcastSms(), [KDDI] messageIdentifier = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " broadcast to WIFI!! "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 205
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.SMS_WIFI_OFF"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 215
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v25    # "msg_id":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 217
    .local v21, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_9
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 218
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 220
    .local v20, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_9

    .line 221
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 225
    .end local v20    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    :cond_a
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_2

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private kddiFilterMsgid(I)Z
    .locals 8
    .param p1, "msg_id"    # I

    .prologue
    .line 235
    const-string v5, "kddiFilterMsgid(), [KDDI] kddiFilterMsgid !!"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 236
    const/4 v3, 0x0

    .line 240
    .local v3, "maintenanceMode":I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const-string v6, "com.lge.hiddenmenu"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    const-string v5, "pref"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 243
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v5, "MaintenanceMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 248
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kddiFilterMsgid(, [KDDI] Maintainanace mode value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "isDelivery":Z
    packed-switch v3, :pswitch_data_0

    .line 271
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kddiFilterMsgid(), [KDDI] isDelivery = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 272
    return v2

    .line 244
    .end local v2    # "isDelivery":Z
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "kddiFilterMsgid(), [KDDI] maintenanceMode app not found"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "isDelivery":Z
    :pswitch_0
    const-string v5, "kddiFilterMsgid(), [KDDI] COMMERCIAL_MODE "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 254
    const/16 v5, 0x1100

    if-eq p1, v5, :cond_2

    const/16 v5, 0x1101

    if-eq p1, v5, :cond_2

    const/16 v5, 0x1104

    if-gt v5, p1, :cond_1

    const/16 v5, 0x1107

    if-le p1, v5, :cond_2

    :cond_1
    const v5, 0xa003

    if-eq p1, v5, :cond_2

    const v5, 0xa801

    if-gt v5, p1, :cond_0

    const v5, 0xa8ff

    if-gt p1, v5, :cond_0

    .line 256
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 263
    :pswitch_1
    const-string v5, "kddiFilterMsgid(), [KDDI]TEST_MODE "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 264
    const/4 v2, 0x1

    .line 265
    goto :goto_1

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 82
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 83
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    .line 84
    return-object v0
.end method


# virtual methods
.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 95
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 97
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 99
    const/4 v1, 0x1

    .line 102
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 72
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    .line 73
    return-void
.end method
