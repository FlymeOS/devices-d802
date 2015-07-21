.class public Lcom/android/server/DataServiceQualityMonitor;
.super Landroid/os/Handler;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;,
        Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;,
        Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;,
        Lcom/android/server/DataServiceQualityMonitor$ThreadPingToDnsServer;,
        Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;,
        Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static DNSproblemNotiEnabled:Z = false

.field static final DSQN_PROPERTY:Ljava/lang/String; = "persist.lg.data.dsqn"

.field static final EVENT_INTERNET_CHECK_ENABLE:I = 0x13c3

.field static final EVENT_INTERNET_CHECK_REQUEST:I = 0x13c2

.field static final EVENT_SETTING_CHANGED_DATA_ENABLED:I = 0x13c5

.field static final EVENT_SETTING_CHANGED_DCF:I = 0x13c4

.field public static final EXTRA_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final EXTRA_RESULT_STATUS:Ljava/lang/String; = "resultStatus"

.field static final INTERNETCHECK_GUARD_TIME:J = 0x3e8L

.field public static final L3_DATA_SERVICE_QUALITY:Ljava/lang/String; = "android.net.L3_DATA_SERVICE_QUALITY"

.field static final PLAYEREV_BUFFERINGEND:I = 0x13c0

.field static final PLAYEREV_BUFFERINGSTART:I = 0x13bf

.field static final PLAYEREV_MIN:I = 0x13ba

.field static final PLAYEREV_NEWPLAY:I = 0x13bb

.field static final PLAYEREV_RENDERING:I = 0x13bd

.field static final PLAYEREV_SKIPPED:I = 0x13c1

.field static final PLAYEREV_STARTED:I = 0x13bc

.field static final PLAYEREV_STOPPED:I = 0x13be

.field static PoorStreamQualNotiEnabled:Z = false

.field static SocketConnFailNotiEnabled:Z = false

.field static final TAG:Ljava/lang/String; = "DSQN"

.field static bUsePlayerEVHSM:Z

.field static mDCFEnabled:Z

.field static mDataEnabled:Z

.field static mInternetcheckProgress:Z

.field static mNMObserverEx:Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;

.field static mNMService:Landroid/os/INetworkManagementService;


# instance fields
.field private DataContinuityFeatureOb:Landroid/database/ContentObserver;

.field private DataEnabledOb:Landroid/database/ContentObserver;

.field mContext:Landroid/content/Context;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPEHSM:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

.field private mSMHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    sput-object v1, Lcom/android/server/DataServiceQualityMonitor;->mNMService:Landroid/os/INetworkManagementService;

    .line 61
    sput-object v1, Lcom/android/server/DataServiceQualityMonitor;->mNMObserverEx:Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;

    .line 62
    sput-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->DNSproblemNotiEnabled:Z

    .line 63
    sput-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->SocketConnFailNotiEnabled:Z

    .line 64
    sput-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->PoorStreamQualNotiEnabled:Z

    .line 65
    sput-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    .line 66
    sput-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->mDCFEnabled:Z

    .line 67
    sput-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    .line 68
    sput-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->bUsePlayerEVHSM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 109
    new-instance v5, Lcom/android/server/DataServiceQualityMonitor$1;

    invoke-direct {v5, p0, p0}, Lcom/android/server/DataServiceQualityMonitor$1;-><init>(Lcom/android/server/DataServiceQualityMonitor;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->DataContinuityFeatureOb:Landroid/database/ContentObserver;

    .line 116
    new-instance v5, Lcom/android/server/DataServiceQualityMonitor$2;

    invoke-direct {v5, p0, p0}, Lcom/android/server/DataServiceQualityMonitor$2;-><init>(Lcom/android/server/DataServiceQualityMonitor;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->DataEnabledOb:Landroid/database/ContentObserver;

    .line 841
    new-instance v5, Lcom/android/server/DataServiceQualityMonitor$3;

    invoke-direct {v5, p0}, Lcom/android/server/DataServiceQualityMonitor$3;-><init>(Lcom/android/server/DataServiceQualityMonitor;)V

    iput-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    .line 126
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "test"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/DataServiceQualityMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    sget-object v5, Lcom/android/server/DataServiceQualityMonitor;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_0

    .line 130
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 131
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    sput-object v5, Lcom/android/server/DataServiceQualityMonitor;->mNMService:Landroid/os/INetworkManagementService;

    .line 134
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    new-instance v5, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;-><init>(Lcom/android/server/DataServiceQualityMonitor;Lcom/android/server/DataServiceQualityMonitor$1;)V

    sput-object v5, Lcom/android/server/DataServiceQualityMonitor;->mNMObserverEx:Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;

    .line 137
    :try_start_0
    sget-object v5, Lcom/android/server/DataServiceQualityMonitor;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v5, :cond_1

    .line 138
    sget-object v5, Lcom/android/server/DataServiceQualityMonitor;->mNMService:Landroid/os/INetworkManagementService;

    sget-object v8, Lcom/android/server/DataServiceQualityMonitor;->mNMObserverEx:Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;

    invoke-interface {v5, v8}, Landroid/os/INetworkManagementService;->registerObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_1
    :goto_0
    sget-boolean v5, Lcom/android/server/DataServiceQualityMonitor;->bUsePlayerEVHSM:Z

    if-ne v5, v6, :cond_2

    .line 144
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "PlayerEventHandleSM"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 145
    .local v3, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 146
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 147
    .local v4, "looper":Landroid/os/Looper;
    if-eqz v4, :cond_4

    .line 148
    new-instance v5, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v8, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    const-string v9, "PlayerEventHandleSM"

    invoke-direct {v5, p0, v8, v9, v4}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;-><init>(Lcom/android/server/DataServiceQualityMonitor;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mPEHSM:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .line 151
    iget-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mPEHSM:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    invoke-virtual {v5}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->start()V

    .line 152
    iget-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mPEHSM:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    invoke-virtual {v5}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;

    .line 159
    .end local v3    # "handlerThread":Landroid/os/HandlerThread;
    .end local v4    # "looper":Landroid/os/Looper;
    :cond_2
    :goto_1
    const-string v5, "persist.lg.data.dsqn"

    const-string v8, "0"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_data_continuity_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    :goto_2
    sput-boolean v5, Lcom/android/server/DataServiceQualityMonitor;->mDCFEnabled:Z

    .line 163
    iget-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "mobile_data"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v7, v6

    :cond_3
    sput-boolean v7, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    .line 167
    iget-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "wifi_data_continuity_enabled"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/DataServiceQualityMonitor;->DataContinuityFeatureOb:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-object v5, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "mobile_data"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/DataServiceQualityMonitor;->DataEnabledOb:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not register InterfaceObserver "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "handlerThread":Landroid/os/HandlerThread;
    .restart local v4    # "looper":Landroid/os/Looper;
    :cond_4
    const-string v5, "unable to create PlayerEventHandleSM "

    invoke-static {v5}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    goto :goto_1

    .end local v3    # "handlerThread":Landroid/os/HandlerThread;
    .end local v4    # "looper":Landroid/os/Looper;
    :cond_5
    move v5, v7

    .line 161
    goto :goto_2
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DataServiceQualityMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/DataServiceQualityMonitor;->sendDSqualityIntent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/DataServiceQualityMonitor;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/DataServiceQualityMonitor;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/DataServiceQualityMonitor;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/DataServiceQualityMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 1153
    .local v9, "runtime":Ljava/lang/Runtime;
    const/4 v3, 0x0

    .line 1154
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1155
    .local v4, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 1156
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getshelllog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 1158
    :try_start_0
    invoke-virtual {v9, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 1159
    .local v8, "process":Ljava/lang/Process;
    const-string v10, "getshelllog:1"

    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1161
    const-string v10, "getshelllog:2"

    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 1162
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .local v5, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    const-string v10, "getshelllog:3"

    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 1164
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1165
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    const-string v10, "getshelllog:4"

    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 1168
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1169
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getshelllog:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1174
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1175
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "process":Ljava/lang/Process;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting i/o stream. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1177
    if-eqz v0, :cond_0

    .line 1179
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1184
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 1186
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1191
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 1193
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1199
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getshelllog:5"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 1200
    return-object v7

    .line 1177
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "process":Ljava/lang/Process;
    :cond_3
    if-eqz v1, :cond_4

    .line 1179
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1184
    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 1186
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1191
    :cond_5
    :goto_6
    if-eqz v3, :cond_9

    .line 1193
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1196
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 1194
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1196
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 1177
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "process":Ljava/lang/Process;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v0, :cond_6

    .line 1179
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1184
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 1186
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1191
    :cond_7
    :goto_9
    if-eqz v3, :cond_8

    .line 1193
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 1196
    :cond_8
    :goto_a
    throw v10

    .line 1180
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "process":Ljava/lang/Process;
    :catch_2
    move-exception v10

    goto :goto_5

    .line 1187
    :catch_3
    move-exception v10

    goto :goto_6

    .line 1180
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "process":Ljava/lang/Process;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v10

    goto :goto_2

    .line 1187
    :catch_5
    move-exception v10

    goto :goto_3

    .line 1194
    :catch_6
    move-exception v10

    goto :goto_4

    .line 1180
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v11

    goto :goto_8

    .line 1187
    :catch_8
    move-exception v11

    goto :goto_9

    .line 1194
    :catch_9
    move-exception v11

    goto :goto_a

    .line 1177
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "process":Ljava/lang/Process;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 1174
    .end local v8    # "process":Ljava/lang/Process;
    :catch_a
    move-exception v2

    goto :goto_1

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "process":Ljava/lang/Process;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_9
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v0, "DSQN"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1135
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1140
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 1141
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 1143
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :goto_1
    return-object v0

    .line 1136
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/net/UnknownHostException;
    move-object v0, v6

    .line 1137
    goto :goto_1

    .line 1140
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 1143
    goto :goto_1
.end method

.method private sendDSqualityIntent(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 1120
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.L3_DATA_SERVICE_QUALITY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "resultStatus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1122
    const-string v2, "dataEnabled"

    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L3_DATA_SERVICE_QUALITY STATUS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DataEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 1125
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v1

    .line 1127
    .local v1, "se":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentBroadcast() SecurityException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public disableDataServiceNotify()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    const-string v0, "disableDataServiceNotify"

    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 290
    sput-boolean v1, Lcom/android/server/DataServiceQualityMonitor;->DNSproblemNotiEnabled:Z

    .line 291
    sput-boolean v1, Lcom/android/server/DataServiceQualityMonitor;->SocketConnFailNotiEnabled:Z

    .line 292
    sput-boolean v1, Lcom/android/server/DataServiceQualityMonitor;->PoorStreamQualNotiEnabled:Z

    .line 293
    sput-boolean v1, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    .line 294
    const/16 v0, 0x13c3

    invoke-virtual {p0, v0}, Lcom/android/server/DataServiceQualityMonitor;->removeMessages(I)V

    .line 295
    const-string v0, "stop dsqn bin"

    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 297
    const-string v0, "persist.lg.data.dsqn"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/DataServiceQualityMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    sget-object v2, Lcom/android/server/DataServiceQualityMonitor;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    .line 179
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 181
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    sput-object v2, Lcom/android/server/DataServiceQualityMonitor;->mNMService:Landroid/os/INetworkManagementService;

    .line 186
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/DataServiceQualityMonitor;->mNMObserverEx:Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/DataServiceQualityMonitor;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_1

    .line 187
    sget-object v2, Lcom/android/server/DataServiceQualityMonitor;->mNMService:Landroid/os/INetworkManagementService;

    sget-object v3, Lcom/android/server/DataServiceQualityMonitor;->mNMObserverEx:Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->unregisterObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_1
    :goto_0
    const-string v2, "stop dsqn bin"

    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 195
    const-string v2, "persist.lg.data.dsqn"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DataServiceQualityMonitor;->DataContinuityFeatureOb:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DataServiceQualityMonitor;->DataEnabledOb:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 199
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unregister InterfaceObserver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableDataServiceNotify(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDataServiceNotify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 256
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    .line 258
    const-string v0, "start dsqn bin"

    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 259
    const-string v0, "persist.lg.data.dsqn"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 260
    const-string v0, "persist.lg.data.dsqn"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "dsqn is running restart"

    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 263
    :cond_0
    const-string v0, "persist.lg.data.dsqn"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const-string v0, "dns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    sput-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->DNSproblemNotiEnabled:Z

    .line 266
    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    goto :goto_0

    .line 267
    :cond_3
    const-string v0, "sockconn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    .line 270
    const-string v0, "start dsqn bin"

    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 272
    const-string v0, "persist.lg.data.dsqn"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_4
    const-string v0, "streaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    sput-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->PoorStreamQualNotiEnabled:Z

    goto :goto_0

    .line 275
    :cond_5
    const-string v0, "internet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    .line 279
    const-string v0, "start dsqn bin"

    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 280
    const-string v0, "persist.lg.data.dsqn"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 281
    const-string v0, "persist.lg.data.dsqn"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "dsqn is running restart"

    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 284
    :cond_6
    const-string v0, "persist.lg.data.dsqn"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 203
    monitor-enter p0

    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefine Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 243
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 206
    :pswitch_0
    :try_start_1
    const-string v3, "EVENT_INTERNET_CHECK_REQUEST received"

    invoke-static {v3}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 207
    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mDCFEnabled:Z

    if-ne v3, v2, :cond_0

    .line 208
    const-string v2, "try Internet connection check"

    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;

    invoke-direct {v0, p0}, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;-><init>(Lcom/android/server/DataServiceQualityMonitor;)V

    .line 210
    .local v0, "ICthread":Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;
    invoke-virtual {v0}, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v0    # "ICthread":Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 215
    :pswitch_1
    :try_start_2
    const-string v2, "EVENT_INTERNET_CHECK_ENABLE received"

    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    goto :goto_0

    .line 220
    :pswitch_2
    const-string v4, "EVENT_SETTING_CHANGED_DCF received"

    invoke-static {v4}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_data_continuity_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 223
    .local v1, "enabled":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DCF enabled changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/DataServiceQualityMonitor;->mDCFEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 224
    if-ne v1, v2, :cond_2

    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mDCFEnabled:Z

    if-nez v3, :cond_2

    const-string v3, "persist.lg.data.dsqn"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 225
    const-string v2, "DCF setting enabled during Wi-Fi has Main route. Do internet check"

    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;

    invoke-direct {v0, p0}, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;-><init>(Lcom/android/server/DataServiceQualityMonitor;)V

    .line 227
    .restart local v0    # "ICthread":Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;
    invoke-virtual {v0}, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;->start()V

    goto :goto_0

    .end local v0    # "ICthread":Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;
    .end local v1    # "enabled":Z
    :cond_1
    move v1, v3

    .line 221
    goto :goto_1

    .line 228
    .restart local v1    # "enabled":Z
    :cond_2
    if-nez v1, :cond_0

    .line 229
    sput-boolean v1, Lcom/android/server/DataServiceQualityMonitor;->mDCFEnabled:Z

    .line 230
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    goto/16 :goto_0

    .line 235
    .end local v1    # "enabled":Z
    :pswitch_3
    const-string v4, "EVENT_SETTING_CHANGED_DATA_ENABLED received"

    invoke-static {v4}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_data"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_2
    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data enabled changed to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 236
    goto :goto_2

    .line 203
    :pswitch_data_0
    .packed-switch 0x13c2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V

    .line 303
    sput-boolean p1, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    .line 304
    return-void
.end method
