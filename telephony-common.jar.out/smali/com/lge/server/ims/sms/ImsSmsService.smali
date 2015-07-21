.class public final Lcom/lge/server/ims/sms/ImsSmsService;
.super Lcom/lge/ims/sms/IImsSmsService$Stub;
.source "ImsSmsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/server/ims/sms/ImsSmsService$1;,
        Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsSmsService"

.field private static sImsSmsService:Lcom/lge/server/ims/sms/ImsSmsService;

.field private static sIntentForImsSmsServiceUp:Landroid/content/Intent;


# instance fields
.field private mCallback:Lcom/lge/ims/sms/IImsSmsCallback;

.field private mContext:Landroid/content/Context;

.field private final mListenerProxy:Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;

.field private mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/lge/server/ims/sms/ImsSmsService;->sImsSmsService:Lcom/lge/server/ims/sms/ImsSmsService;

    .line 45
    sput-object v0, Lcom/lge/server/ims/sms/ImsSmsService;->sIntentForImsSmsServiceUp:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/lge/ims/sms/IImsSmsService$Stub;-><init>()V

    .line 49
    new-instance v0, Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;-><init>(Lcom/lge/server/ims/sms/ImsSmsService;Lcom/lge/server/ims/sms/ImsSmsService$1;)V

    iput-object v0, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mListenerProxy:Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;

    .line 98
    iput-object p1, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/lge/server/ims/sms/ImsSmsService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/server/ims/sms/ImsSmsService;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/server/ims/sms/ImsSmsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/server/ims/sms/ImsSmsService;->sendSmsMo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v0, "ImsSmsService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, "ImsSmsService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    const-string v0, "ImsSmsService"

    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    return-void
.end method

.method private sendSmsMo(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "format"    # I
    .param p2, "sms"    # Ljava/lang/String;
    .param p3, "targetAddress"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x2

    .line 219
    iget-object v2, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mCallback:Lcom/lge/ims/sms/IImsSmsCallback;

    if-nez v2, :cond_0

    .line 220
    const-string v2, "No ImsSms callback"

    invoke-static {v2}, Lcom/lge/server/ims/sms/ImsSmsService;->loge(Ljava/lang/String;)V

    .line 231
    :goto_0
    return v1

    .line 225
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mCallback:Lcom/lge/ims/sms/IImsSmsCallback;

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/ims/sms/IImsSmsCallback;->sendSmsMo(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    const/4 v1, 0x0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException :: sendSmsMo"

    invoke-static {v2, v0}, Lcom/lge/server/ims/sms/ImsSmsService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/lge/server/ims/sms/ImsSmsService;->sImsSmsService:Lcom/lge/server/ims/sms/ImsSmsService;

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "start :: imssms service is already running..."

    invoke-static {v0}, Lcom/lge/server/ims/sms/ImsSmsService;->log(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/lge/server/ims/sms/ImsSmsService;

    invoke-direct {v0, p0}, Lcom/lge/server/ims/sms/ImsSmsService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/server/ims/sms/ImsSmsService;->sImsSmsService:Lcom/lge/server/ims/sms/ImsSmsService;

    .line 63
    const-string v0, "com.lge.server.ims.sms"

    sget-object v1, Lcom/lge/server/ims/sms/ImsSmsService;->sImsSmsService:Lcom/lge/server/ims/sms/ImsSmsService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.ims.SMS_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/server/ims/sms/ImsSmsService;->sIntentForImsSmsServiceUp:Landroid/content/Intent;

    .line 66
    sget-object v0, Lcom/lge/server/ims/sms/ImsSmsService;->sIntentForImsSmsServiceUp:Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    sget-object v0, Lcom/lge/server/ims/sms/ImsSmsService;->sIntentForImsSmsServiceUp:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 70
    const-string v0, "start :: imssms service runs"

    invoke-static {v0}, Lcom/lge/server/ims/sms/ImsSmsService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 80
    sget-object v1, Lcom/lge/server/ims/sms/ImsSmsService;->sImsSmsService:Lcom/lge/server/ims/sms/ImsSmsService;

    if-nez v1, :cond_0

    .line 81
    const-string v1, "stop :: imssms service is not running..."

    invoke-static {v1}, Lcom/lge/server/ims/sms/ImsSmsService;->log(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v1, Lcom/lge/server/ims/sms/ImsSmsService;->sIntentForImsSmsServiceUp:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 86
    sget-object v1, Lcom/lge/server/ims/sms/ImsSmsService;->sIntentForImsSmsServiceUp:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 87
    sput-object v2, Lcom/lge/server/ims/sms/ImsSmsService;->sIntentForImsSmsServiceUp:Landroid/content/Intent;

    .line 90
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.ims.SMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    sput-object v2, Lcom/lge/server/ims/sms/ImsSmsService;->sImsSmsService:Lcom/lge/server/ims/sms/ImsSmsService;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/soi/ISoiManager;->registerSmsEventListener(Lcom/android/internal/telephony/soi/ISmsEventListener;)V

    .line 132
    iput-object v1, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    .line 134
    :cond_0
    return-void
.end method

.method public notifySmsMoStatus(III)I
    .locals 1
    .param p1, "result"    # I
    .param p2, "format"    # I
    .param p3, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    if-nez v0, :cond_0

    .line 148
    const-string v0, "No ISoiManager"

    invoke-static {v0}, Lcom/lge/server/ims/sms/ImsSmsService;->loge(Ljava/lang/String;)V

    .line 149
    const/16 v0, -0x63

    .line 152
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/soi/ISoiManager;->reportMoStatus(III)I

    move-result v0

    goto :goto_0
.end method

.method public notifySmsMt(ILjava/lang/String;)I
    .locals 2
    .param p1, "format"    # I
    .param p2, "sms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    if-nez v1, :cond_0

    .line 166
    const-string v1, "No ISoiManager"

    invoke-static {v1}, Lcom/lge/server/ims/sms/ImsSmsService;->loge(Ljava/lang/String;)V

    .line 167
    const/16 v1, -0x63

    .line 175
    :goto_0
    return v1

    .line 170
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/soi/ImsPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>()V

    .line 172
    .local v0, "pdu":Lcom/android/internal/telephony/soi/ImsPdu;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/ImsPdu;->setSmsFormat(I)V

    .line 173
    const/4 v1, 0x1

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/soi/ImsPdu;->setData([B)V

    .line 175
    iget-object v1, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/ISoiManager;->reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    move-result v1

    goto :goto_0
.end method

.method public open(I)I
    .locals 3
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/soi/SoiManagerFactory;->createSoiManager(I)Lcom/android/internal/telephony/soi/ISoiManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    .line 116
    iget-object v1, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    if-nez v1, :cond_1

    .line 117
    const/16 v0, -0x63

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    iget-object v2, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mListenerProxy:Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/soi/ISoiManager;->registerSmsEventListener(Lcom/android/internal/telephony/soi/ISmsEventListener;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/lge/ims/sms/IImsSmsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/lge/ims/sms/IImsSmsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mCallback:Lcom/lge/ims/sms/IImsSmsCallback;

    .line 186
    return-void
.end method

.method public updateServiceStatus(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    if-nez v0, :cond_0

    .line 196
    const-string v0, "No ISoiManager"

    invoke-static {v0}, Lcom/lge/server/ims/sms/ImsSmsService;->loge(Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/soi/ISoiManager;->updateServiceStatus(I)I

    goto :goto_0
.end method

.method public updateSmsFormat(I)V
    .locals 1
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    if-nez v0, :cond_0

    .line 211
    const-string v0, "No ISoiManager"

    invoke-static {v0}, Lcom/lge/server/ims/sms/ImsSmsService;->loge(Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/lge/server/ims/sms/ImsSmsService;->mSoiManager:Lcom/android/internal/telephony/soi/ISoiManager;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/soi/ISoiManager;->updateSmsFormat(I)I

    goto :goto_0
.end method
