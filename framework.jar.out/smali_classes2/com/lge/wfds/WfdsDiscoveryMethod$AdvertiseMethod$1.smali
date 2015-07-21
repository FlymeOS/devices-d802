.class final Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod$1;
.super Ljava/lang/Object;
.source "WfdsDiscoveryMethod.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
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
        "Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 260
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;-><init>()V

    .line 261
    .local v0, "a":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAdvertiseId:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$402(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAcceptMethod:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$502(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceStatus:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$602(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkRole:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$802(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkConfig:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$902(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$702(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 271
    new-array v0, p1, [Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod$1;->newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    move-result-object v0

    return-object v0
.end method
