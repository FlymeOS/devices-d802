.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOnActionKind:I

.field private mOnActionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1757
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    .line 1667
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    .line 1675
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 1723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    .line 1667
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    .line 1724
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 1725
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    .line 1750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    .line 1751
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1729
    const/4 v0, 0x0

    return v0
.end method

.method public getActionRequest()Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    .locals 1

    .prologue
    .line 1777
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;-><init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;)V

    return-object v0
.end method

.method public getOnActionKind()I
    .locals 1

    .prologue
    .line 1695
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    return v0
.end method

.method public getOnActionType()I
    .locals 1

    .prologue
    .line 1716
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    return v0
.end method

.method public setOnActionKind(I)V
    .locals 0
    .param p1, "onActionKind"    # I

    .prologue
    .line 1685
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    .line 1686
    return-void
.end method

.method public setOnActionType(I)V
    .locals 0
    .param p1, "onActionType"    # I

    .prologue
    .line 1706
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    .line 1707
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1743
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    return-void
.end method
