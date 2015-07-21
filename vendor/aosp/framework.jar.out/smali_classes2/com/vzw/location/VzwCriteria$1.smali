.class final Lcom/vzw/location/VzwCriteria$1;
.super Ljava/lang/Object;
.source "VzwCriteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwCriteria;
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
        "Lcom/vzw/location/VzwCriteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCriteria;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 189
    new-instance v0, Lcom/vzw/location/VzwCriteria;

    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwCriteria;-><init>(Landroid/location/Criteria;)V

    .line 190
    .local v0, "vzwCriteria":Lcom/vzw/location/VzwCriteria;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/vzw/location/VzwCriteria;->mFixMode:I
    invoke-static {v0, v1}, Lcom/vzw/location/VzwCriteria;->access$002(Lcom/vzw/location/VzwCriteria;I)I

    .line 191
    sget-object v1, Lcom/vzw/location/VzwGpsPerformance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsPerformance;

    # setter for: Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;
    invoke-static {v0, v1}, Lcom/vzw/location/VzwCriteria;->access$102(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/VzwGpsPerformance;)Lcom/vzw/location/VzwGpsPerformance;

    .line 192
    sget-object v1, Lcom/vzw/location/VzwGpsFixRate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsFixRate;

    # setter for: Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-static {v0, v1}, Lcom/vzw/location/VzwCriteria;->access$202(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/VzwGpsFixRate;)Lcom/vzw/location/VzwGpsFixRate;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/vzw/location/VzwCriteria;->mHybridMode:I
    invoke-static {v0, v1}, Lcom/vzw/location/VzwCriteria;->access$302(Lcom/vzw/location/VzwCriteria;I)I

    .line 194
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCriteria$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCriteria;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwCriteria;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 198
    new-array v0, p1, [Lcom/vzw/location/VzwCriteria;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCriteria$1;->newArray(I)[Lcom/vzw/location/VzwCriteria;

    move-result-object v0

    return-object v0
.end method
