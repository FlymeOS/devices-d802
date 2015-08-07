.class public Lcom/android/server/location/LgeGpsIndicator;
.super Ljava/lang/Object;
.source "LgeGpsIndicator.java"


# static fields
.field private static final DEBUG:Z

.field private static final GPS_NOTIFICATION_ID:I = 0x3d8d7

.field public static final LGE_LOCATION_STATUS_ICON:Ljava/lang/String; = "location"

.field public static final LOCATION_FIX_ICON_ID:I

.field public static final LOCATION_FIX_ICON_ID_VZW:I

.field public static final LOCATION_SEARCH_ICON_ID:I

.field public static final LOCATION_SEARCH_ICON_ID_VZW:I

.field private static final STATE_DONE:I = 0x0

.field private static final STATE_FIX:I = 0x2

.field private static final STATE_SEARCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LgeGpsIndicator"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPreIconState:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "LgeGpsIndicator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z

    .line 38
    sget v0, Lcom/lge/internal/R$drawable;->stat_sys_device_access_location_searching:I

    sput v0, Lcom/android/server/location/LgeGpsIndicator;->LOCATION_SEARCH_ICON_ID:I

    .line 39
    sget v0, Lcom/lge/internal/R$drawable;->stat_sys_device_access_location_found:I

    sput v0, Lcom/android/server/location/LgeGpsIndicator;->LOCATION_FIX_ICON_ID:I

    .line 41
    sget v0, Lcom/lge/internal/R$drawable;->stat_notify_device_access_location_searching_anim:I

    sput v0, Lcom/android/server/location/LgeGpsIndicator;->LOCATION_SEARCH_ICON_ID_VZW:I

    .line 42
    sget v0, Lcom/lge/internal/R$drawable;->stat_notify_device_access_location_found:I

    sput v0, Lcom/android/server/location/LgeGpsIndicator;->LOCATION_FIX_ICON_ID_VZW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mPreIconState:I

    .line 73
    new-instance v0, Lcom/android/server/location/LgeGpsIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/LgeGpsIndicator$1;-><init>(Lcom/android/server/location/LgeGpsIndicator;)V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 58
    const-string v0, "LgeGpsIndicator"

    const-string v1, "LGE Location Indicator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/android/server/location/LgeGpsIndicator;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mIntentFilter:Landroid/content/IntentFilter;

    .line 63
    iget-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/LgeGpsIndicator;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/location/LgeGpsIndicator;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 69
    iget-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mNotificationManager:Landroid/app/NotificationManager;

    .line 70
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LgeGpsIndicator;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsIndicator;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsIndicator;->setGpsIndicator(Ljava/lang/String;Z)V

    return-void
.end method

.method private isInValidGPSIndicatorTransition(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "res":Z
    iget v1, p0, Lcom/android/server/location/LgeGpsIndicator;->mPreIconState:I

    if-nez v1, :cond_0

    .line 161
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 166
    :cond_0
    return v0
.end method

.method private setGPSIndicatorState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/android/server/location/LgeGpsIndicator;->mPreIconState:I

    .line 155
    return-void
.end method

.method private setGpsIndicator(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 89
    const-string v0, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    if-eqz p2, :cond_1

    .line 91
    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsIndicator;->viewGpsIndicator(I)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/LgeGpsIndicator;->viewGpsIndicator(I)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    if-eqz p2, :cond_3

    .line 98
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/LgeGpsIndicator;->viewGpsIndicator(I)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsIndicator;->viewGpsIndicator(I)V

    goto :goto_0
.end method

.method private viewGpsIndicator(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "inValidSate":Z
    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsIndicator;->viewGpsIndicatorVzw(I)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsIndicator;->isInValidGPSIndicatorTransition(I)Z

    move-result v0

    .line 116
    if-ne v0, v7, :cond_2

    .line 117
    sget-boolean v1, Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "LgeGpsIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InValid GPS Indicator Transition ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsIndicator;->mPreIconState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")->("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsIndicator;->setGPSIndicatorState(I)V

    goto :goto_0

    .line 125
    :pswitch_0
    sget-boolean v1, Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 126
    const-string v1, "LgeGpsIndicator"

    const-string v2, "STATE_SEARCH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/LgeGpsIndicator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "location"

    sget v3, Lcom/android/server/location/LgeGpsIndicator;->LOCATION_SEARCH_ICON_ID:I

    iget-object v4, p0, Lcom/android/server/location/LgeGpsIndicator;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->accessibility_location_active:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/server/location/LgeGpsIndicator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "location"

    invoke-virtual {v1, v2, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 134
    :pswitch_1
    sget-boolean v1, Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 135
    const-string v1, "LgeGpsIndicator"

    const-string v2, "STATE_FIX"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/LgeGpsIndicator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "location"

    sget v3, Lcom/android/server/location/LgeGpsIndicator;->LOCATION_FIX_ICON_ID:I

    iget-object v4, p0, Lcom/android/server/location/LgeGpsIndicator;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->accessibility_location_active:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/server/location/LgeGpsIndicator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "location"

    invoke-virtual {v1, v2, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 143
    :pswitch_2
    sget-boolean v1, Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 144
    const-string v1, "LgeGpsIndicator"

    const-string v2, "STATE_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_5
    iget-object v1, p0, Lcom/android/server/location/LgeGpsIndicator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "location"

    invoke-virtual {v1, v2, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private viewGpsIndicatorVzw(I)V
    .locals 14
    .param p1, "state"    # I

    .prologue
    const v13, 0x3d8d7

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 171
    const/4 v7, 0x0

    .line 172
    .local v7, "iconId":I
    const/4 v10, 0x0

    .line 173
    .local v10, "textId":I
    const/4 v11, 0x0

    .line 175
    .local v11, "visible":Z
    packed-switch p1, :pswitch_data_0

    .line 202
    :goto_0
    if-eqz v11, :cond_3

    .line 203
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "vzwIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 206
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "notificationTitle":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/location/LgeGpsIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 215
    .local v6, "gpsNotification":Landroid/app/Notification;
    iput-object v4, v6, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 216
    iput-object v4, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 217
    iput v12, v6, Landroid/app/Notification;->priority:I

    .line 219
    iget-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v13, v6, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 223
    .end local v2    # "vzwIntent":Landroid/content/Intent;
    .end local v6    # "gpsNotification":Landroid/app/Notification;
    .end local v8    # "notificationTitle":Ljava/lang/String;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 177
    :pswitch_0
    sget-boolean v0, Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "LgeGpsIndicator"

    const-string v3, "VZW, STATE_SEARCH"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    sget v7, Lcom/android/server/location/LgeGpsIndicator;->LOCATION_SEARCH_ICON_ID_VZW:I

    .line 181
    sget v10, Lcom/lge/internal/R$string;->gps_notification_searching_text_vzw:I

    .line 182
    const/4 v11, 0x1

    .line 183
    goto :goto_0

    .line 186
    :pswitch_1
    sget-boolean v0, Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "LgeGpsIndicator"

    const-string v3, "VZW, STATE_FIX"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    sget v7, Lcom/android/server/location/LgeGpsIndicator;->LOCATION_FIX_ICON_ID_VZW:I

    .line 190
    sget v10, Lcom/lge/internal/R$string;->gps_notification_found_text_vzw:I

    .line 191
    const/4 v11, 0x1

    .line 192
    goto :goto_0

    .line 195
    :pswitch_2
    sget-boolean v0, Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 196
    const-string v0, "LgeGpsIndicator"

    const-string v3, "VZW, STATE_DONE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/LgeGpsIndicator;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
