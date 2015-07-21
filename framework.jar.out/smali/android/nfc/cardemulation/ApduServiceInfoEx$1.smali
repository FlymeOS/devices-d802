.class final Landroid/nfc/cardemulation/ApduServiceInfoEx$1;
.super Ljava/lang/Object;
.source "ApduServiceInfoEx.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfoEx;
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
        "Landroid/nfc/cardemulation/ApduServiceInfoEx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfoEx;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 165
    sget-object v1, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    .line 166
    .local v0, "seExtension":Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfoEx;

    invoke-direct {v1, v0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;-><init>(Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfoEx;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 171
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfoEx;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfoEx;

    move-result-object v0

    return-object v0
.end method
