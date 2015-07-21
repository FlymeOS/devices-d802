.class public Lcom/lge/nfcaddon/GsmaNfcController;
.super Ljava/lang/Object;
.source "GsmaNfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GsmaNfcController"

.field private static sService:Lcom/lge/nfcaddon/IGsmaNfcController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/nfcaddon/IGsmaNfcController;Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/lge/nfcaddon/IGsmaNfcController;
    .param p3, "recovery"    # Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    .line 29
    sput-object p2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    .line 30
    iput-object p3, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/lge/nfcaddon/IGsmaNfcController;)V
    .locals 1
    .param p1, "service"    # Lcom/lge/nfcaddon/IGsmaNfcController;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 37
    :cond_0
    sput-object p1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    .line 38
    return-void
.end method

.method private attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    invoke-interface {v0, p1}, Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 183
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    invoke-interface {v0}, Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;->getGsmaNfcControllerServiceInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    goto :goto_0
.end method

.method private getService()Lcom/lge/nfcaddon/IGsmaNfcController;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    return-object v0
.end method


# virtual methods
.method public commitGsmaOffHostService(ILcom/lge/nfcaddon/GsmaOffHostServiceInfo;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "serviceInfo"    # Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;

    .prologue
    .line 157
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1, p2}, Lcom/lge/nfcaddon/IGsmaNfcController;->commitGsmaOffHostService(ILcom/lge/nfcaddon/GsmaOffHostServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public disableNfcCard(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 3
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/nfcaddon/GsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 88
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_1

    .line 89
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->disableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :cond_1
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableMultiEvt_transactionReception(Ljava/lang/String;)V
    .locals 2
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableMultiEvt_transactionReception(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableNfcCard(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 3
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/nfcaddon/GsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 72
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 73
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :cond_1
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableNfcController(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 3
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .prologue
    const/4 v1, 0x0

    .line 43
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 44
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableNfcControllerCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableNfcControllerConfirmPopup(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 3
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .prologue
    const/4 v1, 0x0

    .line 56
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableNfcControllerPopupCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getActiveSecureElement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1}, Lcom/lge/nfcaddon/IGsmaNfcController;->getActiveSecureElement()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProperty(I)Z
    .locals 2
    .param p1, "feature"    # I

    .prologue
    .line 169
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 170
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->getProperty(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGSMACertificateAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 135
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGSMACertificateAllowed([Ljava/lang/String;)[Z
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->isGSMACertificateAllowedArray([Ljava/lang/String;)[Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEvt_TransactionFgDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "intentfilter"    # [Landroid/content/IntentFilter;

    .prologue
    .line 101
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method
