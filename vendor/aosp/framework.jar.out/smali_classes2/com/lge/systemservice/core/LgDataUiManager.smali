.class public Lcom/lge/systemservice/core/LgDataUiManager;
.super Ljava/lang/Object;
.source "LgDataUiManager.java"


# static fields
.field public static final BASE_EVENT_DATA_UI:I = 0x1

.field public static final EVENT_CTTL_DATA_ENABLE_POPUP:I = 0x3

.field public static final EVENT_CTTL_SEND_MMS_TOAST:I = 0x4

.field public static final EVENT_WIFI_OFF_POPUP_CMCC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LgDataUi"


# instance fields
.field private mService:Lcom/lge/systemservice/core/ILgDataUiManager;


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

.method private final getService()Lcom/lge/systemservice/core/ILgDataUiManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/systemservice/core/LgDataUiManager;->mService:Lcom/lge/systemservice/core/ILgDataUiManager;

    if-nez v0, :cond_0

    .line 27
    const-string v0, "lgdataui"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILgDataUiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILgDataUiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LgDataUiManager;->mService:Lcom/lge/systemservice/core/ILgDataUiManager;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/LgDataUiManager;->mService:Lcom/lge/systemservice/core/ILgDataUiManager;

    return-object v0
.end method


# virtual methods
.method public sendDataUiIntMessage(II)I
    .locals 4
    .param p1, "event"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LgDataUiManager;->getService()Lcom/lge/systemservice/core/ILgDataUiManager;

    move-result-object v1

    .line 49
    .local v1, "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/ILgDataUiManager;->sendDataUiIntMessage(II)I

    move-result v2

    .line 57
    .end local v1    # "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    :goto_0
    return v2

    .line 52
    .restart local v1    # "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    :cond_0
    const-string v2, "LgDataUi"

    const-string v3, "sendDataUiIntMessage(event,arg1) : null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LgDataUi"

    const-string v3, "sendDataUiIntMessage(event,arg1) : exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendDataUiMessage(I)I
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LgDataUiManager;->getService()Lcom/lge/systemservice/core/ILgDataUiManager;

    move-result-object v1

    .line 35
    .local v1, "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILgDataUiManager;->sendDataUiMessage(I)I

    move-result v2

    .line 43
    .end local v1    # "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    :goto_0
    return v2

    .line 38
    .restart local v1    # "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    :cond_0
    const-string v2, "LgDataUi"

    const-string v3, "sendDataUiMessage(event) : null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LgDataUi"

    const-string v3, "sendDataUiMessage() : exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendDataUiStringMessage(ILjava/lang/String;)I
    .locals 4
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/String;

    .prologue
    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LgDataUiManager;->getService()Lcom/lge/systemservice/core/ILgDataUiManager;

    move-result-object v1

    .line 63
    .local v1, "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/ILgDataUiManager;->sendDataUiStringMessage(ILjava/lang/String;)I

    move-result v2

    .line 71
    .end local v1    # "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    :goto_0
    return v2

    .line 66
    .restart local v1    # "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    :cond_0
    const-string v2, "LgDataUi"

    const-string v3, "sendDataUiStringMessage(event,obj) : null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "service":Lcom/lge/systemservice/core/ILgDataUiManager;
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LgDataUi"

    const-string v3, "sendDataUiStringMessage(event,obj) : exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
