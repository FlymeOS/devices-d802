.class final Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod$1;
.super Ljava/lang/Object;
.source "WfdsDiscoveryMethod.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
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
        "Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 170
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;-><init>()V

    .line 171
    .local v0, "s":Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchId:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$002(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;I)I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchMethod:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$102(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;I)I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mP2pAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$202(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mServiceInfoRequest:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$302(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 179
    new-array v0, p1, [Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod$1;->newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    move-result-object v0

    return-object v0
.end method
