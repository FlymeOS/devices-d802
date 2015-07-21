.class final Lcom/lge/wifi/impl/WifiConnectionInfo$1;
.super Ljava/lang/Object;
.source "WifiConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiConnectionInfo;
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
        "Lcom/lge/wifi/impl/WifiConnectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/WifiConnectionInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 149
    new-instance v0, Lcom/lge/wifi/impl/WifiConnectionInfo;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiConnectionInfo;-><init>()V

    .line 150
    .local v0, "info":Lcom/lge/wifi/impl/WifiConnectionInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    .line 155
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiConnectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/WifiConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/WifiConnectionInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 159
    new-array v0, p1, [Lcom/lge/wifi/impl/WifiConnectionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiConnectionInfo$1;->newArray(I)[Lcom/lge/wifi/impl/WifiConnectionInfo;

    move-result-object v0

    return-object v0
.end method
