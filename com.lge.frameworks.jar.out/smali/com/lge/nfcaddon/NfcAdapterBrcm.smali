.class public Lcom/lge/nfcaddon/NfcAdapterBrcm;
.super Ljava/lang/Object;
.source "NfcAdapterBrcm.java"


# static fields
.field private static final CHECK_LOOP_MAX_COUNT:I = 0x2

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NfcBrcm"

.field private static sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

.field private static sSingleton:Lcom/lge/nfcaddon/NfcAdapterBrcm;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/nfc/NfcAdapter;)Lcom/lge/nfcaddon/NfcAdapterBrcm;
    .locals 4
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 97
    const-string v1, "NfcBrcm"

    const-string v2, "get()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You must pass a context to your NfcAdapter to use the NFC AdapterBrcm APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    const-class v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;

    monitor-enter v2

    .line 106
    :try_start_0
    invoke-static {p0}, Lcom/lge/nfcaddon/NfcAdapterBrcm;->initServivce(Landroid/nfc/NfcAdapter;)V

    .line 107
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sSingleton:Lcom/lge/nfcaddon/NfcAdapterBrcm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 109
    :try_start_1
    new-instance v1, Lcom/lge/nfcaddon/NfcAdapterBrcm;

    invoke-direct {v1}, Lcom/lge/nfcaddon/NfcAdapterBrcm;-><init>()V

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sSingleton:Lcom/lge/nfcaddon/NfcAdapterBrcm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sSingleton:Lcom/lge/nfcaddon/NfcAdapterBrcm;

    if-nez v1, :cond_1

    .line 112
    const/4 v1, 0x0

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    .line 116
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sSingleton:Lcom/lge/nfcaddon/NfcAdapterBrcm;

    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    :try_start_3
    sget-object v3, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sSingleton:Lcom/lge/nfcaddon/NfcAdapterBrcm;

    if-nez v3, :cond_2

    .line 112
    const/4 v3, 0x0

    sput-object v3, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    :cond_2
    throw v1

    .line 116
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static getNfcAdapterBrcmInterface()Lcom/lge/nfcaddon/INfcAdapterBrcm;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string v2, "lge.nfc.vendor"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "brcm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    .local v0, "binder":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 53
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    const-string v2, "nfcvendor"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .restart local v0    # "binder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 55
    const-string v2, "NfcBrcm"

    const-string v3, "nfcbrcm binder null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v0}, Lcom/lge/nfcaddon/INfcAdapterBrcm$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterBrcm;

    move-result-object v1

    goto :goto_0
.end method

.method private static initServivce(Landroid/nfc/NfcAdapter;)V
    .locals 4
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 70
    const-string v2, "NfcBrcm"

    const-string v3, "initServivce()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "loopCount":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 76
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterBrcm;->getNfcAdapterBrcmInterface()Lcom/lge/nfcaddon/INfcAdapterBrcm;

    move-result-object v1

    .line 78
    .local v1, "service":Lcom/lge/nfcaddon/INfcAdapterBrcm;
    if-eqz v1, :cond_1

    .line 79
    const-string v2, "NfcBrcm"

    const-string v3, "[initServivce] get INfcAdapterBrcm service instance."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    .line 87
    .end local v1    # "service":Lcom/lge/nfcaddon/INfcAdapterBrcm;
    :cond_0
    return-void

    .line 83
    .restart local v1    # "service":Lcom/lge/nfcaddon/INfcAdapterBrcm;
    :cond_1
    const-string v2, "NfcBrcm"

    const-string v3, "[initServivce] service is null..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 86
    goto :goto_0
.end method


# virtual methods
.method public config(II)Z
    .locals 4
    .param p1, "configItem"    # I
    .param p2, "configData"    # I

    .prologue
    .line 227
    const-string v2, "NfcBrcm"

    const-string v3, "config()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, "result":Z
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    if-nez v2, :cond_0

    .line 232
    const-string v2, "NfcBrcm"

    const-string v3, "NFC Brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 241
    :goto_0
    return v2

    .line 237
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    invoke-interface {v2, p1, p2}, Lcom/lge/nfcaddon/INfcAdapterBrcm;->config(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 238
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcBrcm"

    const-string v3, "NFC brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public disable()Z
    .locals 4

    .prologue
    .line 151
    const-string v2, "NfcBrcm"

    const-string v3, "disable()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, "result":Z
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    if-nez v2, :cond_0

    .line 156
    const-string v2, "NfcBrcm"

    const-string v3, "NFC Brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 165
    :goto_0
    return v2

    .line 161
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterBrcm;->disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcBrcm"

    const-string v3, "NFC brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public enable(Z)Z
    .locals 4
    .param p1, "autoStart"    # Z

    .prologue
    .line 127
    const-string v2, "NfcBrcm"

    const-string v3, "enable()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "result":Z
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    if-nez v2, :cond_0

    .line 132
    const-string v2, "NfcBrcm"

    const-string v3, "NFC Brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 141
    :goto_0
    return v2

    .line 137
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/INfcAdapterBrcm;->enable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcBrcm"

    const-string v3, "NFC brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public start(I[B)Z
    .locals 4
    .param p1, "patternNumber"    # I
    .param p2, "tlv"    # [B

    .prologue
    .line 201
    const-string v2, "NfcBrcm"

    const-string v3, "start()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, "result":Z
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    if-nez v2, :cond_0

    .line 206
    const-string v2, "NfcBrcm"

    const-string v3, "NFC Brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 215
    :goto_0
    return v2

    .line 211
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    invoke-interface {v2, p1, p2}, Lcom/lge/nfcaddon/INfcAdapterBrcm;->start(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 212
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcBrcm"

    const-string v3, "NFC brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    .prologue
    .line 175
    const-string v2, "NfcBrcm"

    const-string v3, "stop()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    .line 179
    .local v1, "result":Z
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    if-nez v2, :cond_0

    .line 180
    const-string v2, "NfcBrcm"

    const-string v3, "NFC Brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 189
    :goto_0
    return v2

    .line 185
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterBrcm;->sService:Lcom/lge/nfcaddon/INfcAdapterBrcm;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterBrcm;->stop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 186
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcBrcm"

    const-string v3, "NFC brcm sServie is null ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v2, 0x0

    goto :goto_0
.end method
