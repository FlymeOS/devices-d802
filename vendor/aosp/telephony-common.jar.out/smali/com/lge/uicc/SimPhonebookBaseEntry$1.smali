.class final Lcom/lge/uicc/SimPhonebookBaseEntry$1;
.super Ljava/lang/Object;
.source "SimPhonebookBaseEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/SimPhonebookBaseEntry;
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
        "Lcom/lge/uicc/SimPhonebookBaseEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 40
    new-instance v0, Lcom/lge/uicc/SimPhonebookBaseEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lge/uicc/SimPhonebookBaseEntry;-><init>(Landroid/os/Parcel;Lcom/lge/uicc/SimPhonebookBaseEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/lge/uicc/SimPhonebookBaseEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/uicc/SimPhonebookBaseEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    new-array v0, p1, [Lcom/lge/uicc/SimPhonebookBaseEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/lge/uicc/SimPhonebookBaseEntry$1;->newArray(I)[Lcom/lge/uicc/SimPhonebookBaseEntry;

    move-result-object v0

    return-object v0
.end method
