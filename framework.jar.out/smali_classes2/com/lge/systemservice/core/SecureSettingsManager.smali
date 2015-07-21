.class public Lcom/lge/systemservice/core/SecureSettingsManager;
.super Ljava/lang/Object;
.source "SecureSettingsManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "SecureSettingsService"

.field private static final TAG:Ljava/lang/String; = "SecureSettingsManager"

.field private static final TITLE:Ljava/lang/String; = "SecureSettingsManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/ISecureSettingsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/SecureSettingsManager;Lcom/lge/systemservice/core/ISecureSettingsManager;)Lcom/lge/systemservice/core/ISecureSettingsManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/SecureSettingsManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/ISecureSettingsManager;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/ISecureSettingsManager;
    .locals 4

    .prologue
    .line 34
    iget-object v1, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    if-nez v1, :cond_0

    .line 35
    const-string v1, "SecureSettingsService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/ISecureSettingsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    .line 36
    iget-object v1, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    if-eqz v1, :cond_0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ISecureSettingsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/SecureSettingsManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/SecureSettingsManager$1;-><init>(Lcom/lge/systemservice/core/SecureSettingsManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    goto :goto_0
.end method


# virtual methods
.method public putFloat(Ljava/lang/String;FI)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/lge/systemservice/core/SecureSettingsManager;->getService()Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v1

    .line 54
    .local v1, "service":Lcom/lge/systemservice/core/ISecureSettingsManager;
    if-nez v1, :cond_0

    .line 63
    :goto_0
    return v2

    .line 59
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/ISecureSettingsManager;->putFloat(Ljava/lang/String;FI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/lge/systemservice/core/SecureSettingsManager;->getService()Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v1

    .line 67
    .local v1, "service":Lcom/lge/systemservice/core/ISecureSettingsManager;
    if-nez v1, :cond_0

    .line 76
    :goto_0
    return v2

    .line 72
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/ISecureSettingsManager;->putInt(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;JI)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lcom/lge/systemservice/core/SecureSettingsManager;->getService()Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v1

    .line 80
    .local v1, "service":Lcom/lge/systemservice/core/ISecureSettingsManager;
    if-nez v1, :cond_0

    .line 89
    :goto_0
    return v2

    .line 85
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/systemservice/core/ISecureSettingsManager;->putLong(Ljava/lang/String;JI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/lge/systemservice/core/SecureSettingsManager;->getService()Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v1

    .line 93
    .local v1, "service":Lcom/lge/systemservice/core/ISecureSettingsManager;
    if-nez v1, :cond_0

    .line 102
    :goto_0
    return v2

    .line 98
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/ISecureSettingsManager;->putString(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
