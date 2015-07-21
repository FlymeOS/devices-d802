.class public Lcom/kddi/net/PreferredNetworkService;
.super Landroid/app/Service;
.source "PreferredNetworkService.java"


# static fields
.field private static final ACTION_PREFERRED_NETWORK_GET:Ljava/lang/String; = "GetNetworkMode_KDDI_LTE"

.field private static final ACTION_PREFERRED_NETWORK_SET:Ljava/lang/String; = "SetNetworkMode_KDDI_LTE"

.field private static final EXTRA_NATWORK_RESPONSE:Ljava/lang/String; = "response"

.field private static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field protected static final LOG_TAG:Ljava/lang/String; = "RIL_PreferredNetworkService"

.field public static final NT_MODE_DEFAULT:I = 0x0

.field public static final NT_MODE_LTEOFF:I = 0x1

.field public static final PREFERRED_OTHER_ERROR:I = -0x2

.field public static final PREFERRED_REQUEST_SUCCESS:I = 0x0

.field public static final PREFERRED_SETTING_TYPE_ERROR:I = -0x1

.field public static preNetworkType:I


# instance fields
.field public lteOffNetworkType:[I

.field public mAction:Ljava/lang/Boolean;

.field private final mBinder:Lcom/kddi/net/IPreferredNetworkService$Stub;

.field public mContext:Landroid/content/Context;

.field public mResponse:Landroid/os/Message;

.field private myBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final permName:Ljava/lang/String;

.field preferredNetworkMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const-string v0, "com.kddi.android.permission.PREFERRED_NETWORK_SETTINGS"

    iput-object v0, p0, Lcom/kddi/net/PreferredNetworkService;->permName:Ljava/lang/String;

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Lcom/kddi/net/PreferredNetworkService;->preferredNetworkMode:I

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/kddi/net/PreferredNetworkService;->lteOffNetworkType:[I

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    .line 64
    new-instance v0, Lcom/kddi/net/PreferredNetworkService$1;

    invoke-direct {v0, p0}, Lcom/kddi/net/PreferredNetworkService$1;-><init>(Lcom/kddi/net/PreferredNetworkService;)V

    iput-object v0, p0, Lcom/kddi/net/PreferredNetworkService;->myBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Lcom/kddi/net/PreferredNetworkService$2;

    invoke-direct {v0, p0}, Lcom/kddi/net/PreferredNetworkService$2;-><init>(Lcom/kddi/net/PreferredNetworkService;)V

    iput-object v0, p0, Lcom/kddi/net/PreferredNetworkService;->mBinder:Lcom/kddi/net/IPreferredNetworkService$Stub;

    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const-string v0, "RIL_PreferredNetworkService"

    const-string v1, "binding service implementation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/kddi/net/PreferredNetworkService;->mBinder:Lcom/kddi/net/IPreferredNetworkService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.SetNetWorkMode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "com.lge.intent.action.GetNetWorkMode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService;->myBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void
.end method
