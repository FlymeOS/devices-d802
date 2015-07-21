.class final Lcom/lge/uicc/SimPhonebookBaseInfo$1;
.super Ljava/lang/Object;
.source "SimPhonebookBaseInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/SimPhonebookBaseInfo;
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
        "Lcom/lge/uicc/SimPhonebookBaseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/uicc/SimPhonebookBaseInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 62
    new-instance v0, Lcom/lge/uicc/SimPhonebookBaseInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lge/uicc/SimPhonebookBaseInfo;-><init>(Landroid/os/Parcel;Lcom/lge/uicc/SimPhonebookBaseInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/lge/uicc/SimPhonebookBaseInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/uicc/SimPhonebookBaseInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/uicc/SimPhonebookBaseInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 65
    new-array v0, p1, [Lcom/lge/uicc/SimPhonebookBaseInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/lge/uicc/SimPhonebookBaseInfo$1;->newArray(I)[Lcom/lge/uicc/SimPhonebookBaseInfo;

    move-result-object v0

    return-object v0
.end method
