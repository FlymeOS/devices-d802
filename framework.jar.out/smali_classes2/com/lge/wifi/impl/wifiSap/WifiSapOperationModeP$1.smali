.class final Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP$1;
.super Ljava/lang/Object;
.source "WifiSapOperationModeP.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
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
        "Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "sOpMode":Ljava/lang/String;
    new-instance v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;

    invoke-static {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 23
    new-array v0, p1, [Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP$1;->newArray(I)[Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;

    move-result-object v0

    return-object v0
.end method
