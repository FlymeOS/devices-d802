.class public Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferAction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFER_ACTION_TYPE_START:I = 0x0

.field public static final TRANSFER_ACTION_TYPE_STOP:I = 0x1


# instance fields
.field public isTransferring:Z

.field public percent:I

.field public total:I

.field public transferredCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 873
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->isTransferring:Z

    .line 817
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->total:I

    .line 823
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->transferredCnt:I

    .line 829
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->percent:I

    .line 833
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->isTransferring:Z

    .line 817
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->total:I

    .line 823
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->transferredCnt:I

    .line 829
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->percent:I

    .line 836
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 837
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->isTransferring:Z

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->total:I

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->transferredCnt:I

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->percent:I

    .line 867
    return-void

    .line 862
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->isTransferring:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->transferredCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->percent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    return-void

    .line 855
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
