.class final Lcom/mediatek/internal/telephony/QosStatus$1;
.super Ljava/lang/Object;
.source "QosStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/QosStatus;
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
        "Lcom/mediatek/internal/telephony/QosStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/QosStatus;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 70
    new-instance v0, Lcom/mediatek/internal/telephony/QosStatus;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/QosStatus;-><init>()V

    .line 71
    .local v0, "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/QosStatus;->readFrom(Landroid/os/Parcel;)V

    .line 72
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/QosStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/QosStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/QosStatus;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 77
    new-array v0, p1, [Lcom/mediatek/internal/telephony/QosStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/QosStatus$1;->newArray(I)[Lcom/mediatek/internal/telephony/QosStatus;

    move-result-object v0

    return-object v0
.end method