.class public Landroid/net/ConnectivityManagerEx;
.super Landroid/net/ConnectivityManager;
.source "ConnectivityManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManagerEx$Roaming;
    }
.end annotation


# static fields
.field public static final TYPE_MOBILE_ADMIN:I = 0x16

.field public static final TYPE_MOBILE_EMERGENCY:I = 0x14

.field public static final TYPE_MOBILE_VZW800:I = 0x11

.field public static final TYPE_MOBILE_VZWAPP:I = 0x10


# instance fields
.field private final mServiceEx:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "service"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    .line 35
    invoke-interface {p1}, Landroid/net/IConnectivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    .line 36
    return-void
.end method


# virtual methods
.method public ePDGHandOverStatus(I)V
    .locals 2
    .param p1, "extendedRAT"    # I

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->ePDGHandOverStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public ePDGlisten(Landroid/net/ePDGStateListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/net/ePDGStateListener;
    .param p2, "events"    # I

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    iget-object v2, p1, Landroid/net/ePDGStateListener;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->ePDGlisten(Landroid/net/IePDGStateListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDebugInfo(II)[D
    .locals 2
    .param p1, "infotype"    # I
    .param p2, "itemnum"    # I

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getDebugInfo(II)[D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGlobalRoamingCapability()Landroid/net/ConnectivityManagerEx$Roaming;
    .locals 4

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "retValue":Landroid/net/ConnectivityManagerEx$Roaming;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$integer;->config_support_global_roaming:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 168
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    sget-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->NOT_SUPPORT:Landroid/net/ConnectivityManagerEx$Roaming;

    .line 171
    goto :goto_0

    .line 173
    :pswitch_1
    sget-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->WCDMA:Landroid/net/ConnectivityManagerEx$Roaming;

    .line 174
    goto :goto_0

    .line 176
    :pswitch_2
    sget-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->LTE:Landroid/net/ConnectivityManagerEx$Roaming;

    .line 177
    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLteRssi()I
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getLteRssi()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 45
    :goto_0
    return v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 53
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 57
    .local v2, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 62
    .end local v2    # "it":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v3

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getNetPrefer(Ljava/lang/String;)I
    .locals 2
    .param p1, "reqtype"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetPrefer(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public setFQDN(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setFQDN(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startusingEPDGFeature(Ljava/lang/String;)I
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startusingEPDGFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public stopusingEPDGFeature(Ljava/lang/String;)I
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->stopusingEPDGFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
