.class final Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$1;
.super Ljava/lang/Object;
.source "GsmaOffHostServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;
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
        "Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "serPackName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "serName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "seName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "loc":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v6, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 73
    .local v8, "numGroups":I
    if-lez v8, :cond_0

    .line 74
    sget-object v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 76
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 77
    .local v7, "bitmapBanner":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;

    invoke-direct/range {v0 .. v7}, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 82
    new-array v0, p1, [Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$1;->newArray(I)[Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;

    move-result-object v0

    return-object v0
.end method
