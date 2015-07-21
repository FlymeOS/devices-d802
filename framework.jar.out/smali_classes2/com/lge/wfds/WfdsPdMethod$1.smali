.class final Lcom/lge/wfds/WfdsPdMethod$1;
.super Ljava/lang/Object;
.source "WfdsPdMethod.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsPdMethod;
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
        "Lcom/lge/wfds/WfdsPdMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsPdMethod;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 88
    new-instance v0, Lcom/lge/wfds/WfdsPdMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsPdMethod;-><init>()V

    .line 89
    .local v0, "w":Lcom/lge/wfds/WfdsPdMethod;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lge/wfds/WfdsPdMethod;->mPeerAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsPdMethod;->access$002(Lcom/lge/wfds/WfdsPdMethod;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lge/wfds/WfdsPdMethod;->mSessionInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsPdMethod;->access$102(Lcom/lge/wfds/WfdsPdMethod;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsPdMethod;->mAdvertiseId:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsPdMethod;->access$202(Lcom/lge/wfds/WfdsPdMethod;I)I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsPdMethod;->mGoRole:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsPdMethod;->access$302(Lcom/lge/wfds/WfdsPdMethod;I)I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsPdMethod;->mNetworkConfig:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsPdMethod;->access$402(Lcom/lge/wfds/WfdsPdMethod;I)I

    .line 94
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsPdMethod$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsPdMethod;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/WfdsPdMethod;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 98
    new-array v0, p1, [Lcom/lge/wfds/WfdsPdMethod;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsPdMethod$1;->newArray(I)[Lcom/lge/wfds/WfdsPdMethod;

    move-result-object v0

    return-object v0
.end method
