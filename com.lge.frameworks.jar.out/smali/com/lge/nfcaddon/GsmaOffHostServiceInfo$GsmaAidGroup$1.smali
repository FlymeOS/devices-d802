.class final Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup$1;
.super Ljava/lang/Object;
.source "GsmaOffHostServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;
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
        "Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .local v3, "listSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "aidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v3, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 127
    :cond_0
    new-instance v4, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;

    invoke-direct {v4, v2, v1, v0}, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 132
    new-array v0, p1, [Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup$1;->newArray(I)[Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;

    move-result-object v0

    return-object v0
.end method
