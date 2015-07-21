.class final Lcom/lge/wifi/impl/WifiConnectionList$1;
.super Ljava/lang/Object;
.source "WifiConnectionList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiConnectionList;
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
        "Lcom/lge/wifi/impl/WifiConnectionList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/WifiConnectionList;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 211
    new-instance v2, Lcom/lge/wifi/impl/WifiConnectionList;

    invoke-direct {v2}, Lcom/lge/wifi/impl/WifiConnectionList;-><init>()V

    .line 213
    .local v2, "list":Lcom/lge/wifi/impl/WifiConnectionList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 214
    .local v3, "listCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    const/16 v4, 0x32

    if-ge v1, v4, :cond_1

    .line 215
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiConnectionInfo;

    .line 216
    .local v0, "cInfo":Lcom/lge/wifi/impl/WifiConnectionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/lge/wifi/impl/WifiConnectionList;->update(Lcom/lge/wifi/impl/WifiConnectionInfo;)V

    .line 214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "cInfo":Lcom/lge/wifi/impl/WifiConnectionInfo;
    :cond_1
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiConnectionList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/WifiConnectionList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/WifiConnectionList;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 222
    new-array v0, p1, [Lcom/lge/wifi/impl/WifiConnectionList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiConnectionList$1;->newArray(I)[Lcom/lge/wifi/impl/WifiConnectionList;

    move-result-object v0

    return-object v0
.end method
