.class public Lcom/android/server/am/VzwActivityMonitor;
.super Ljava/lang/Object;
.source "VzwActivityMonitor.java"


# static fields
.field static final DEBUG:Z = false

.field static final EXTRA_PACKAGENAME:Ljava/lang/String; = "com.lge.intent.extra.PACKAGE_NAME"

.field static final TAG:Ljava/lang/String; = "VzwActivityMonitor"

.field static final VZW_ACTIVITY_MONITOR_RESUME_ACTIVITY_MSG:I = 0x3e8

.field static final VZW_OFFLOADING_TASK_STARTED_INTENT:Ljava/lang/String; = "com.lge.android.intent.action.VZW_OFFLOADING_TASK_STARTED"

.field private static mInstance:Lcom/android/server/am/VzwActivityMonitor;


# instance fields
.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field is1XSRLTE:Z

.field final mHandler:Landroid/os/Handler;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field packageName:Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/VzwActivityMonitor;->mInstance:Lcom/android/server/am/VzwActivityMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->packageName:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/VzwActivityMonitor;->is1XSRLTE:Z

    .line 47
    iput-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->pm:Landroid/content/pm/PackageManager;

    .line 69
    new-instance v0, Lcom/android/server/am/VzwActivityMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/VzwActivityMonitor$1;-><init>(Lcom/android/server/am/VzwActivityMonitor;)V

    iput-object v0, p0, Lcom/android/server/am/VzwActivityMonitor;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/server/am/VzwActivityMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/VzwActivityMonitor$2;-><init>(Lcom/android/server/am/VzwActivityMonitor;)V

    iput-object v0, p0, Lcom/android/server/am/VzwActivityMonitor;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->packageName:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/VzwActivityMonitor;->is1XSRLTE:Z

    .line 47
    iput-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->pm:Landroid/content/pm/PackageManager;

    .line 69
    new-instance v0, Lcom/android/server/am/VzwActivityMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/VzwActivityMonitor$1;-><init>(Lcom/android/server/am/VzwActivityMonitor;)V

    iput-object v0, p0, Lcom/android/server/am/VzwActivityMonitor;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/server/am/VzwActivityMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/VzwActivityMonitor$2;-><init>(Lcom/android/server/am/VzwActivityMonitor;)V

    iput-object v0, p0, Lcom/android/server/am/VzwActivityMonitor;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/VzwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/VzwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method private ShowMessage()V
    .locals 4

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/server/am/VzwActivityMonitor;->notifyTaskVZWOffloadingStart()V

    .line 165
    iget-boolean v1, p0, Lcom/android/server/am/VzwActivityMonitor;->is1XSRLTE:Z

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/VzwActivityMonitor;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/VzwActivityMonitor;->hasNetworkAccess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "VzwActivityMonitor"

    const-string v2, "SRLTE 1X call Alert Dialog showing."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/VzwActivityMonitor;->is1XSRLTE:Z

    .line 177
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/am/VzwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/lge/internal/R$string;->srlte_1x_call_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->srlte_1x_call_message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 183
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/VzwActivityMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/VzwActivityMonitor;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/am/VzwActivityMonitor;->is1XSRLTEMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/VzwActivityMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/VzwActivityMonitor;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/am/VzwActivityMonitor;->ShowMessage()V

    return-void
.end method

.method public static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VzwActivityMonitor;
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/am/VzwActivityMonitor;->mInstance:Lcom/android/server/am/VzwActivityMonitor;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/server/am/VzwActivityMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/am/VzwActivityMonitor;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/VzwActivityMonitor;->mInstance:Lcom/android/server/am/VzwActivityMonitor;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/server/am/VzwActivityMonitor;->mInstance:Lcom/android/server/am/VzwActivityMonitor;

    return-object v0
.end method

.method private hasNetworkAccess(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 128
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/VzwActivityMonitor;->pm:Landroid/content/pm/PackageManager;

    if-nez v7, :cond_0

    .line 129
    iget-object v7, p0, Lcom/android/server/am/VzwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/VzwActivityMonitor;->pm:Landroid/content/pm/PackageManager;

    .line 131
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/VzwActivityMonitor;->pm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1000

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 132
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 133
    .local v5, "requestedPermissions":[Ljava/lang/String;
    if-nez v5, :cond_2

    .line 146
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "requestedPermissions":[Ljava/lang/String;
    :cond_1
    :goto_0
    return v6

    .line 136
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "requestedPermissions":[Ljava/lang/String;
    :cond_2
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 137
    .local v3, "permission":Ljava/lang/String;
    const-string v7, "android.permission.INTERNET"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 141
    const/4 v6, 0x1

    goto :goto_0

    .line 136
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "requestedPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private is1XSRLTEMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v2, p0, Lcom/android/server/am/VzwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 113
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 114
    const-string v2, "VzwActivityMonitor"

    const-string v3, "TelephonyManager is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 123
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v3, p0, Lcom/android/server/am/VzwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 97
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 98
    const-string v3, "VzwActivityMonitor"

    const-string v4, "ConnectivityManager is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return v2

    .line 101
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 102
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 105
    const-string v3, "WIFI"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 106
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private notifyTaskVZWOffloadingStart()V
    .locals 3

    .prologue
    .line 191
    const-string v1, "wifi.lge.offloading"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.VZW_OFFLOADING_TASK_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/server/am/VzwActivityMonitor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.lge.permission.VZW_offloading"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public notifyActivityChanged(Lcom/android/server/am/TaskRecord;Landroid/content/Intent;ZLcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isResumed"    # Z
    .param p4, "topActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    if-eqz p4, :cond_0

    iget-object v1, p4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->packageName:Ljava/lang/String;

    .line 217
    iget-object v1, p4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "realPackageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eqz p3, :cond_0

    .line 226
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/server/am/VzwActivityMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
