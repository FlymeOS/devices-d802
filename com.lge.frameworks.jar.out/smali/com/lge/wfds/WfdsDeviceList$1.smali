.class final Lcom/lge/wfds/WfdsDeviceList$1;
.super Ljava/lang/Object;
.source "WfdsDeviceList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsDeviceList;
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
        "Lcom/lge/wfds/WfdsDeviceList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDeviceList;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 201
    new-instance v1, Lcom/lge/wfds/WfdsDeviceList;

    invoke-direct {v1}, Lcom/lge/wfds/WfdsDeviceList;-><init>()V

    .line 203
    .local v1, "deviceList":Lcom/lge/wfds/WfdsDeviceList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .local v0, "deviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 205
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/lge/wfds/WfdsDevice;

    invoke-virtual {v1, v3}, Lcom/lge/wfds/WfdsDeviceList;->update(Lcom/lge/wfds/WfdsDevice;)V

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDeviceList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDeviceList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/WfdsDeviceList;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 211
    new-array v0, p1, [Lcom/lge/wfds/WfdsDeviceList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDeviceList$1;->newArray(I)[Lcom/lge/wfds/WfdsDeviceList;

    move-result-object v0

    return-object v0
.end method
