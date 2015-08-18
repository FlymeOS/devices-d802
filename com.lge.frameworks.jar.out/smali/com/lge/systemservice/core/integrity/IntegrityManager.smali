.class public final Lcom/lge/systemservice/core/integrity/IntegrityManager;
.super Ljava/lang/Object;
.source "IntegrityManager.java"


# static fields
.field private static final DEBUG:Z

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final ERROR:I = -0x1

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.integrity"

.field private static final PRELOG_LGIS:Ljava/lang/String; = "[LGIS] "

.field public static final RES_BYPASS_PACKAGE:I = -0x2

.field public static final RES_DISABLED:I = -0x1

.field public static final RES_EXCEPTION_ERROR:I = -0x3

.field public static final RES_FAILURE:I = 0x0

.field public static final RES_PERMISSION_DENIED:I = -0x5

.field public static final RES_SERVICE_NOT_WORK:I = -0x4

.field public static final RES_SUCCESS:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "integrity"

.field private static final TAG:Ljava/lang/String;

.field private static mIntegrityManager:Lcom/lge/systemservice/core/integrity/IntegrityManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->DEBUG:Z

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mIntegrityManager:Lcom/lge/systemservice/core/integrity/IntegrityManager;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "new IntegrityManager"

    invoke-direct {p0, v0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-boolean v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGIS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/systemservice/core/integrity/IntegrityManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mIntegrityManager:Lcom/lge/systemservice/core/integrity/IntegrityManager;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v1, "integrity"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;

    check-cast v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;

    sput-object v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mIntegrityManager:Lcom/lge/systemservice/core/integrity/IntegrityManager;

    .line 93
    :cond_0
    sget-object v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mIntegrityManager:Lcom/lge/systemservice/core/integrity/IntegrityManager;

    return-object v0
.end method

.method private getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    .locals 2

    .prologue
    .line 72
    const-string v1, "integrity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v0

    .line 75
    .local v0, "service":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v0, :cond_0

    .line 76
    const-string v1, "getService : Integrity service didn\'t work!!"

    invoke-direct {p0, v1}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clearFingerprintForApplication(Ljava/lang/String;)I
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x3

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearFingerprintForApplication : packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 206
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_0

    .line 207
    const-string v3, "clearFingerprintForApplication : service call Fail!!"

    invoke-direct {p0, v3}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 208
    const/4 v3, -0x4

    .line 220
    :goto_0
    return v3

    .line 212
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->clearFingerprintForApplication(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "clearFingerprintForApplication : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "clearFingerprintForApplication : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public generateFingerprintForApplication(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "sourcedir"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x3

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateFingerprintForApplication : packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sourcedir"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 160
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_0

    .line 161
    const-string v3, "generateFingerprintForApplication : service call Fail!!"

    invoke-direct {p0, v3}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 162
    const/4 v3, -0x4

    .line 174
    :goto_0
    return v3

    .line 166
    :cond_0
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->generateFingerprintForApplication(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "generateFingerprintForApplication : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "generateFingerprintForApplication : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIntegrityVerificationEnabled()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 133
    const-string v4, "getIntegrityVerificationEnabled"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 136
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_0

    .line 137
    const-string v4, "getIntegrityVerificationEnabled : service call Fail!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 150
    :goto_0
    return v3

    .line 142
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->getIntegrityVerificationEnabled()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "getIntegrityVerificationEnabled : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "getIntegrityVerificationEnabled : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public listen(Landroid/content/Context;Lcom/lge/systemservice/core/integrity/IntegrityListener;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lge/systemservice/core/integrity/IntegrityListener;
    .param p3, "events"    # I

    .prologue
    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listen : events = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 236
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_0

    .line 237
    const-string v4, "clearFingerprintForApplication : service call Fail!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 242
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "pkgForDebug":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listen : calling package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 245
    iget-object v4, p2, Lcom/lge/systemservice/core/integrity/IntegrityListener;->callback:Lcom/lge/systemservice/core/integrity/IIntegrityListener;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, p3, v5}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->listen(Ljava/lang/String;Lcom/lge/systemservice/core/integrity/IIntegrityListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 248
    .end local v3    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "listen : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v3, "<unknown>"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 251
    :catch_1
    move-exception v1

    .line 252
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "listen : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIntegrityVerificationEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIntegrityVerificationEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 108
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_0

    .line 109
    const-string v4, "setIntegrityVerificationEnabled : service call Fail!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 121
    :goto_0
    return v3

    .line 113
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->setIntegrityVerificationEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "setIntegrityVerificationEnabled : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 119
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "setIntegrityVerificationEnabled : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public verifyIntegrityForApplication(Ljava/lang/String;)I
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x3

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyIntegrityForApplication : packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 183
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_0

    .line 184
    const-string v3, "verifyIntegrityForApplication : service call Fail!!"

    invoke-direct {p0, v3}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 185
    const/4 v3, -0x4

    .line 197
    :goto_0
    return v3

    .line 189
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->verifyIntegrityForApplication(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "verifyIntegrityForApplication : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "verifyIntegrityForApplication : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
