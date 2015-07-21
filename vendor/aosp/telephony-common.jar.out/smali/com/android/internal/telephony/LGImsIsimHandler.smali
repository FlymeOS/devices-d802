.class public Lcom/android/internal/telephony/LGImsIsimHandler;
.super Landroid/os/Handler;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_ISIM_STATE_CHANGED:Ljava/lang/String; = "com.lge.ims.ISIM_STATE_CHANGED"

.field private static final EVENT_ISIM_RECORDS_LOADED:I = 0x1

.field public static final EXTRA_ISIM_STATE:Ljava/lang/String; = "isimState"

.field public static final ISIM_STATE_LOADED:Ljava/lang/String; = "LOADED"

.field public static final ISIM_STATE_NOT_PRESENT:Ljava/lang/String; = "NOT_PRESENT"

.field public static final ISIM_STATE_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final ISIM_STATE_REFRESH_COMPLETED:Ljava/lang/String; = "REFRESH_COMPLETED"

.field public static final ISIM_STATE_REFRESH_STARTED:Ljava/lang/String; = "REFRESH_STARTED"

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_REFRESHING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LGImsIsimHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mIsimState:I

.field private mSimLoaded:Z

.field private mSimStateReceiver:Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    iput-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    .line 51
    iput-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimLoaded:Z

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimState:I

    .line 54
    new-instance v1, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimStateReceiver:Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "com.android.intent.isim_refresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimStateReceiver:Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const-string v1, "NOT_READY"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->notifyIsimState(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LGImsIsimHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->handleSimReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/LGImsIsimHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->handleSimLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/LGImsIsimHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->handleIsimRefreshStarted()V

    return-void
.end method

.method private handleIsimRefreshStarted()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "IMS-ISIM :: refresh started"

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->setIsimState(I)V

    .line 107
    const-string v0, "REFRESH_STARTED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->notifyIsimState(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method private handleSimLoaded()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimLoaded:Z

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->isIsimPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->setIsimRecordsAndRegisterEvent()V

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->isIsimPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "IMS-ISIM :: no ISIM application"

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->setIsimState(I)V

    .line 121
    const-string v0, "NOT_PRESENT"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->notifyIsimState(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method private handleSimReady()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->setIsimRecordsAndRegisterEvent()V

    .line 129
    return-void
.end method

.method private isIsimPresent()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimLoaded()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimLoaded:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "LGImsIsimHandler"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method private notifyIsimState(Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.ims.ISIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    const-string v1, "isimState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method private setIsimRecordsAndRegisterEvent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 148
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 149
    .local v1, "sc":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 152
    .local v2, "uc":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 155
    .local v0, "isimRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eq v3, v0, :cond_1

    .line 157
    const-string v3, "IMS-ISIM :: IsimRecord is changed"

    invoke-static {v3}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 159
    iput-object v6, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 166
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 168
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    :cond_1
    return-void
.end method

.method private setIsimState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 174
    iget v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimState:I

    if-eq v0, p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS-ISIM :: state - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    .line 176
    iput p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimState:I

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimStateReceiver:Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimStateReceiver:Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 78
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS-ISIM :: handleMessage - event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimState:I

    if-nez v0, :cond_1

    .line 87
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGImsIsimHandler;->setIsimState(I)V

    .line 88
    const-string v0, "LOADED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->notifyIsimState(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 90
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGImsIsimHandler;->setIsimState(I)V

    .line 91
    const-string v0, "REFRESH_COMPLETED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->notifyIsimState(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
