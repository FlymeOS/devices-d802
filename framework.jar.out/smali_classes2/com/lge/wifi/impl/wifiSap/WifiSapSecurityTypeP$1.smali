.class final Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP$1;
.super Ljava/lang/Object;
.source "WifiSapSecurityTypeP.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "sAuthMode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "sSecMode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "sEncMode":Ljava/lang/String;
    new-instance v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    invoke-static {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v4

    invoke-static {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v5

    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 30
    new-array v0, p1, [Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP$1;->newArray(I)[Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    move-result-object v0

    return-object v0
.end method
