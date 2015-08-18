.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;
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
    name = "OpenRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOpenActionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1636
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    .line 1580
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    .line 1605
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 1606
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    .line 1630
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1610
    const/4 v0, 0x0

    return v0
.end method

.method public getActionRequest()Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    .locals 1

    .prologue
    .line 1656
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;-><init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;)V

    return-object v0
.end method

.method public getOpenActionType()I
    .locals 1

    .prologue
    .line 1598
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    return v0
.end method

.method public setOpenctionType(I)V
    .locals 0
    .param p1, "openActionType"    # I

    .prologue
    .line 1589
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    .line 1590
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1624
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    return-void
.end method
