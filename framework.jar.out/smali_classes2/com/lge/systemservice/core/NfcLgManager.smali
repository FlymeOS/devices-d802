.class public Lcom/lge/systemservice/core/NfcLgManager;
.super Ljava/lang/Object;
.source "NfcLgManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "nfcLgService"

.field private static final TAG:Ljava/lang/String; = "NfcLgManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/INfcLgManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/NfcLgManager;Lcom/lge/systemservice/core/INfcLgManager;)Lcom/lge/systemservice/core/INfcLgManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/NfcLgManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/INfcLgManager;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/INfcLgManager;
    .locals 4

    .prologue
    .line 26
    iget-object v1, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v1, :cond_0

    .line 27
    const-string v1, "nfcLgService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/INfcLgManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 28
    iget-object v1, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v1, :cond_0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/INfcLgManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/NfcLgManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/NfcLgManager$1;-><init>(Lcom/lge/systemservice/core/NfcLgManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    goto :goto_0
.end method


# virtual methods
.method public createNfcFactoryObj()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v2, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 121
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/INfcLgManager;->createNfcFactoryObj()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :cond_1
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public handleNfcTest(I[B)Ljava/lang/String;
    .locals 5
    .param p1, "command"    # I
    .param p2, "retData"    # [B

    .prologue
    .line 84
    const-string v1, "Fail"

    .line 87
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v2, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 92
    :cond_0
    :try_start_0
    const-string v2, "NfcLgManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NfcLgManager handleNfcTest::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INfcLgManager;->handleNfcFactory(I[B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 97
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendNfcTestCommand(I[B)Z
    .locals 3
    .param p1, "command"    # I
    .param p2, "response"    # [B

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 57
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v2, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 61
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INfcLgManager;->sendNfcTestCommand(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    .end local v1    # "result":Z
    :cond_1
    :goto_0
    return v1

    .line 65
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
