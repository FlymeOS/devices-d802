.class public Lcom/lge/wapservice/prov/ProvisioningNotification;
.super Ljava/lang/Object;
.source "ProvisioningNotification.java"


# static fields
.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static clearNotification(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    .line 204
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 206
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-static {p0}, Lcom/lge/wapservice/utils/DBManager;->GetUnreadOTAMessage(Landroid/content/Context;)I

    move-result v1

    .line 207
    .local v1, "unReadMsg":I
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearNotification msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 209
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 213
    :cond_0
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isEmotionalLEDSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-static {p0, v5}, Lcom/lge/wapservice/utils/LgeUtils;->stopEmotionalLEDService(Landroid/content/Context;I)V

    .line 217
    :cond_1
    return-void
.end method

.method public static createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sec"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "document"    # [B
    .param p4, "phoneId"    # I

    .prologue
    .line 60
    invoke-static/range {p0 .. p4}, Lcom/lge/wapservice/prov/StoreProvisioning;->parsingSaveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BI)Landroid/net/Uri;

    move-result-object v9

    .line 61
    .local v9, "insertUri":Landroid/net/Uri;
    if-nez v9, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const v2, 0x7f070071

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, "tickerText":Ljava/lang/String;
    const v2, 0x7f070074

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 68
    .local v12, "message":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/lge/wapservice/utils/DBManager;->GetUnreadOTAMessage(Landroid/content/Context;)I

    move-result v17

    .line 70
    .local v17, "unRead":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_7

    .line 71
    const v2, 0x7f070073

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 79
    .local v15, "title":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isCurrentUserIsOwner()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mPowerManager:Landroid/os/PowerManager;

    .line 82
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_2

    .line 83
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3000001a

    const-string v4, "WAP Prov_Noti"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 89
    :cond_2
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_3

    .line 90
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 95
    :cond_3
    const-string v2, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 96
    .local v11, "manager":Landroid/app/NotificationManager;
    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    .line 97
    .local v13, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v13, Landroid/app/Notification;->when:J

    .line 98
    iput-object v14, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 99
    const v2, 0x7f020001

    iput v2, v13, Landroid/app/Notification;->icon:I

    .line 102
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_RECEIVE_NOTI_POPUP:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v2}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->getIntValue(Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 103
    iget v2, v13, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v13, Landroid/app/Notification;->flags:I

    .line 110
    :goto_2
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/lge/wapservice/prov/ProvisioningNotification;->createPendingValidation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v15, v12, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 114
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 118
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isPhoneInUse()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 120
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 122
    .local v10, "mAudioManager":Landroid/media/AudioManager;
    :try_start_0
    invoke-virtual {v10}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 123
    new-instance v16, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    const/16 v3, 0x3c

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v16, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_3
    if-eqz v16, :cond_4

    .line 133
    const/16 v2, 0x1c

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 134
    const-string v2, "ProvisioningNotification"

    const-string v3, "ToneGenerator.TONE_PROP_BEEP2"

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_4
    const/4 v2, 0x0

    iput-object v2, v13, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 170
    .end local v16    # "toneGenerator":Landroid/media/ToneGenerator;
    :cond_5
    :goto_4
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isEmotionalLEDSupported()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 171
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/lge/wapservice/utils/LgeUtils;->startEmotionalLEDService(Landroid/content/Context;I)V

    .line 181
    :goto_5
    const/4 v2, 0x2

    invoke-virtual {v11, v2, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 184
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isCurrentUserIsOwner()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mPowerManager:Landroid/os/PowerManager;

    .line 187
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_6

    .line 188
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3000001a

    const-string v4, "Provisioning Noti"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    const-string v2, "WapService"

    const-string v3, "<ProvisioningPushReceiver> mWakeLock = null"

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_6
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 196
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 197
    const-string v2, "WapService"

    const-string v3, "<ProvisioningPushReceiver> mWakeLock !=null "

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 73
    .end local v10    # "mAudioManager":Landroid/media/AudioManager;
    .end local v11    # "manager":Landroid/app/NotificationManager;
    .end local v13    # "notification":Landroid/app/Notification;
    .end local v15    # "title":Ljava/lang/String;
    :cond_7
    const v2, 0x7f070072

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 105
    .restart local v11    # "manager":Landroid/app/NotificationManager;
    .restart local v13    # "notification":Landroid/app/Notification;
    :cond_8
    iget v2, v13, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v13, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .line 125
    .restart local v10    # "mAudioManager":Landroid/media/AudioManager;
    :cond_9
    :try_start_1
    new-instance v16, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    const/16 v3, 0x50

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v16    # "toneGenerator":Landroid/media/ToneGenerator;
    goto :goto_3

    .line 127
    .end local v16    # "toneGenerator":Landroid/media/ToneGenerator;
    :catch_0
    move-exception v8

    .line 128
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string v2, "ProvisioningNotification"

    const-string v3, "RuntimeException on ToneGenerator"

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/16 v16, 0x0

    .restart local v16    # "toneGenerator":Landroid/media/ToneGenerator;
    goto/16 :goto_3

    .line 139
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "mAudioManager":Landroid/media/AudioManager;
    .end local v16    # "toneGenerator":Landroid/media/ToneGenerator;
    :cond_a
    const-string v19, "content://settings/system/notification_sound"

    .line 140
    .local v19, "uriString":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_b

    .line 141
    const-string v19, "content://settings/system/notification_sound_sim2"

    .line 143
    :cond_b
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 145
    .local v18, "uri":Landroid/net/Uri;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    :goto_6
    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 161
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 162
    .restart local v10    # "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 163
    iget v2, v13, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/app/Notification;->defaults:I

    goto/16 :goto_4

    .line 146
    .end local v10    # "mAudioManager":Landroid/media/AudioManager;
    :catch_1
    move-exception v8

    .line 147
    .local v8, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_c

    .line 148
    sget-object v2, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    invoke-static {v2}, Lcom/lge/media/RingtoneManagerEx;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v18

    goto :goto_6

    .line 151
    :cond_c
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    invoke-static {v2}, Lcom/lge/media/RingtoneManagerEx;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v18

    goto :goto_6

    .line 154
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    .line 155
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 173
    .end local v8    # "e":Ljava/io/IOException;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "uriString":Ljava/lang/String;
    .restart local v10    # "mAudioManager":Landroid/media/AudioManager;
    :cond_d
    iget v2, v13, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v13, Landroid/app/Notification;->flags:I

    .line 174
    iget v2, v13, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v13, Landroid/app/Notification;->defaults:I

    .line 175
    const v2, -0xff0100

    iput v2, v13, Landroid/app/Notification;->ledARGB:I

    .line 176
    const/16 v2, 0x1f4

    iput v2, v13, Landroid/app/Notification;->ledOnMS:I

    .line 177
    const/16 v2, 0x7d0

    iput v2, v13, Landroid/app/Notification;->ledOffMS:I

    goto/16 :goto_5
.end method

.method private static createPendingValidation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)Landroid/app/PendingIntent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sec"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "document"    # [B
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .prologue
    const/high16 v5, 0x10000000

    const/4 v4, 0x0

    .line 221
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_RECEIVE_NOTI_POPUP:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v2}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->getIntValue(Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/wapservice/utils/ReceiveDialog;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v1, "receiveDialogIntent":Landroid/content/Intent;
    const-string v2, "dialogid"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v2, "msguri"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "data"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 227
    const-string v2, "sec"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "mac"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v2, "appid"

    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v2, "phone"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    invoke-static {p0}, Lcom/lge/wapservice/prov/ProvisioningNotification;->clearNotification(Landroid/content/Context;)V

    .line 236
    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 244
    .end local v1    # "receiveDialogIntent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 239
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.wapservice.cp"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "pushViewerIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.wapservice.cp"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-static {p0}, Lcom/lge/wapservice/prov/ProvisioningNotification;->clearNotification(Landroid/content/Context;)V

    .line 244
    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0
.end method
