.class final Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction$1;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;
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
        "Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 877
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 882
    new-array v0, p1, [Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction$1;->newArray(I)[Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    move-result-object v0

    return-object v0
.end method
