.class final Lcom/lge/wifi/impl/ScanExtResult$1;
.super Ljava/lang/Object;
.source "ScanExtResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/ScanExtResult;
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
        "Lcom/lge/wifi/impl/ScanExtResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/ScanExtResult;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    new-instance v0, Lcom/lge/wifi/impl/ScanExtResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/ScanExtResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, "sr":Lcom/lge/wifi/impl/ScanExtResult;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/ScanExtResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/ScanExtResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/ScanExtResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 78
    new-array v0, p1, [Lcom/lge/wifi/impl/ScanExtResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/ScanExtResult$1;->newArray(I)[Lcom/lge/wifi/impl/ScanExtResult;

    move-result-object v0

    return-object v0
.end method
