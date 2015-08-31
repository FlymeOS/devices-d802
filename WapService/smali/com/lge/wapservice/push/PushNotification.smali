.class public Lcom/lge/wapservice/push/PushNotification;
.super Ljava/lang/Object;
.source "PushNotification.java"


# static fields
.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static clearNotification(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 263
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 265
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 268
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isEmotionalLEDSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-static {p0, v2}, Lcom/lge/wapservice/utils/LgeUtils;->stopEmotionalLEDService(Landroid/content/Context;I)V

    .line 272
    :cond_0
    return-void
.end method

.method public static createNotification(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;II)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # Lcom/lge/wapservice/push/message/WapPushDoc;
    .param p2, "actionType"    # I
    .param p3, "mSimID"    # I

    .prologue
    const/high16 v8, 0x10000

    const/4 v5, 0x1

    .line 65
    invoke-static {p2, v8}, Lcom/lge/wapservice/push/PushHandler;->isFlagSet(II)Z

    move-result v4

    if-nez v4, :cond_0

    const/high16 v4, 0x20000

    invoke-static {p2, v4}, Lcom/lge/wapservice/push/PushHandler;->isFlagSet(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    :goto_0
    return-void

    .line 70
    :cond_0
    const v4, 0x7f070021

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "tickerText":Ljava/lang/String;
    const v4, 0x7f070023

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/lge/wapservice/utils/DBManager;->GetUnreadPushMessage(Landroid/content/Context;)I

    move-result v3

    .line 75
    .local v3, "unRead":I
    if-le v3, v5, :cond_3

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f070070

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "title":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isCurrentUserIsOwner()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    sput-object v4, Lcom/lge/wapservice/push/PushNotification;->mPowerManager:Landroid/os/PowerManager;

    .line 87
    sget-object v4, Lcom/lge/wapservice/push/PushNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_1

    .line 88
    sget-object v4, Lcom/lge/wapservice/push/PushNotification;->mPowerManager:Landroid/os/PowerManager;

    const v6, 0x3000001a

    const-string v7, "WAP Prov_Noti"

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/lge/wapservice/push/PushNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 94
    :cond_1
    sget-object v4, Lcom/lge/wapservice/push/PushNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_2

    .line 95
    sget-object v4, Lcom/lge/wapservice/push/PushNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 105
    :cond_2
    const-string v6, "WapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<createNotification> Indicator flag is = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2, v8}, Lcom/lge/wapservice/push/PushHandler;->isFlagSet(II)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p0, p2, p3}, Lcom/lge/wapservice/push/PushNotification;->createSoundNotification(Landroid/content/Context;II)V

    .line 108
    invoke-static {p0, p1, p2}, Lcom/lge/wapservice/push/PushNotification;->createTextNotification(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;I)V

    goto/16 :goto_0

    .line 78
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    const v4, 0x7f070022

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_1

    .line 105
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static createPendingNotification(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # Lcom/lge/wapservice/push/message/WapPushDoc;

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.wapservice.push"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "pushIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.wapservice.push"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static createSoundNotification(Landroid/content/Context;II)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionType"    # I
    .param p2, "sim"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 112
    const/high16 v7, 0x20000

    invoke-static {p1, v7}, Lcom/lge/wapservice/push/PushHandler;->isFlagSet(II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 181
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isPhoneInUse()Z

    move-result v7

    if-ne v7, v10, :cond_2

    .line 119
    :try_start_0
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 120
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v4, Landroid/media/ToneGenerator;

    const/16 v8, 0x8

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x3c

    :goto_1
    invoke-direct {v4, v8, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 125
    .local v4, "toneGenerator":Landroid/media/ToneGenerator;
    const/16 v7, 0x1c

    invoke-virtual {v4, v7}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 126
    const-string v7, "PushNotification"

    const-string v8, "ToneGenerator.TONE_PROP_BEEP2"

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v4    # "toneGenerator":Landroid/media/ToneGenerator;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v7, "PushNotification"

    const-string v8, "RuntimeException on ToneGenerator"

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    const/16 v7, 0x50

    goto :goto_1

    .line 135
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_2
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 137
    .local v3, "notification":Landroid/app/Notification;
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/app/Notification;->when:J

    .line 141
    const-string v6, "content://settings/system/notification_sound"

    .line 142
    .local v6, "uriString":Ljava/lang/String;
    if-ne p2, v10, :cond_3

    .line 143
    const-string v6, "content://settings/system/notification_sound_sim2"

    .line 145
    :cond_3
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 147
    .local v5, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 159
    :goto_2
    iput-object v5, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 161
    const/high16 v7, 0x40000

    invoke-static {p1, v7}, Lcom/lge/wapservice/push/PushHandler;->isFlagSet(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 162
    iget v7, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/app/Notification;->defaults:I

    .line 165
    :cond_4
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 166
    .local v2, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 169
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isEmotionalLEDSupported()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 170
    invoke-static {p0, v10}, Lcom/lge/wapservice/utils/LgeUtils;->startEmotionalLEDService(Landroid/content/Context;I)V

    .line 180
    :goto_3
    invoke-virtual {v2, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 148
    .end local v2    # "manager":Landroid/app/NotificationManager;
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/FileNotFoundException;
    if-ne p2, v10, :cond_5

    .line 150
    sget-object v7, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v7

    invoke-static {v7}, Lcom/lge/media/RingtoneManagerEx;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .line 153
    :cond_5
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v7

    invoke-static {v7}, Lcom/lge/media/RingtoneManagerEx;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .line 156
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 172
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "manager":Landroid/app/NotificationManager;
    :cond_6
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 173
    iget v7, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v3, Landroid/app/Notification;->defaults:I

    .line 174
    const v7, -0xff0100

    iput v7, v3, Landroid/app/Notification;->ledARGB:I

    .line 175
    const/16 v7, 0x1f4

    iput v7, v3, Landroid/app/Notification;->ledOnMS:I

    .line 176
    const/16 v7, 0x7d0

    iput v7, v3, Landroid/app/Notification;->ledOffMS:I

    goto :goto_3
.end method

.method private static createTextNotification(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # Lcom/lge/wapservice/push/message/WapPushDoc;
    .param p2, "actionType"    # I

    .prologue
    const/4 v8, 0x1

    .line 184
    const/high16 v5, 0x10000

    invoke-static {p2, v5}, Lcom/lge/wapservice/push/PushHandler;->isFlagSet(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 216
    :goto_0
    return-void

    .line 188
    :cond_0
    const v5, 0x7f070022

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f070023

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "message":Ljava/lang/String;
    const v5, 0x7f070021

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "tickerText":Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 193
    .local v2, "notification":Landroid/app/Notification;
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 195
    const v5, 0x7f020002

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 196
    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 198
    invoke-static {p0, p1}, Lcom/lge/wapservice/push/PushNotification;->createPendingNotification(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 200
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 201
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 204
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isEmotionalLEDSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    invoke-static {p0, v8}, Lcom/lge/wapservice/utils/LgeUtils;->startEmotionalLEDService(Landroid/content/Context;I)V

    .line 215
    :goto_1
    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 207
    :cond_1
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 208
    iget v5, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 209
    const v5, -0xff0100

    iput v5, v2, Landroid/app/Notification;->ledARGB:I

    .line 210
    const/16 v5, 0x1f4

    iput v5, v2, Landroid/app/Notification;->ledOnMS:I

    .line 211
    const/16 v5, 0x7d0

    iput v5, v2, Landroid/app/Notification;->ledOffMS:I

    goto :goto_1
.end method
