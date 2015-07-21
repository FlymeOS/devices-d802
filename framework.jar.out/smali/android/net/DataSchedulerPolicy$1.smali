.class final Landroid/net/DataSchedulerPolicy$1;
.super Ljava/lang/Object;
.source "DataSchedulerPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DataSchedulerPolicy;
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
        "Landroid/net/DataSchedulerPolicy;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DataSchedulerPolicy;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 69
    new-instance v0, Landroid/net/DataSchedulerPolicy;

    invoke-direct {v0, p1}, Landroid/net/DataSchedulerPolicy;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/net/DataSchedulerPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DataSchedulerPolicy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/DataSchedulerPolicy;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 74
    new-array v0, p1, [Landroid/net/DataSchedulerPolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/net/DataSchedulerPolicy$1;->newArray(I)[Landroid/net/DataSchedulerPolicy;

    move-result-object v0

    return-object v0
.end method
