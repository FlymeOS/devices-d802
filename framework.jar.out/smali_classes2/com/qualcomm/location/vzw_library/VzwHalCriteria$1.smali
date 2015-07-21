.class final Lcom/qualcomm/location/vzw_library/VzwHalCriteria$1;
.super Ljava/lang/Object;
.source "VzwHalCriteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
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
        "Lcom/qualcomm/location/vzw_library/VzwHalCriteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 217
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    .line 218
    .local v1, "super_c":Landroid/location/Criteria;
    new-instance v0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    invoke-direct {v0, v1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;-><init>(Landroid/location/Criteria;)V

    .line 219
    .local v0, "c":Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I
    invoke-static {v0, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->access$002(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I
    invoke-static {v0, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->access$102(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I
    invoke-static {v0, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->access$202(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I
    invoke-static {v0, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->access$302(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I
    invoke-static {v0, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->access$402(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I
    invoke-static {v0, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->access$502(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I
    invoke-static {v0, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->access$602(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I
    invoke-static {v0, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->access$702(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I

    .line 227
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 231
    new-array v0, p1, [Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria$1;->newArray(I)[Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    move-result-object v0

    return-object v0
.end method
