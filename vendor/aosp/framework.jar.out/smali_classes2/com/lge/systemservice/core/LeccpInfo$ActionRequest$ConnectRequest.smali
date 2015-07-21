.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;
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
    name = "ConnectRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectActionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1263
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    .line 1202
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    .line 1232
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 1233
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    .line 1257
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1237
    const/4 v0, 0x0

    return v0
.end method

.method public getActionRequest()Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    .locals 1

    .prologue
    .line 1283
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;-><init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;)V

    return-object v0
.end method

.method public getConnectActionType()I
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    return v0
.end method

.method public setConnectActionType(I)V
    .locals 0
    .param p1, "connectActionType"    # I

    .prologue
    .line 1213
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    .line 1214
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1251
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    return-void
.end method
