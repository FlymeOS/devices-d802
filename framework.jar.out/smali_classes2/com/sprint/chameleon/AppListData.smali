.class public Lcom/sprint/chameleon/AppListData;
.super Ljava/lang/Object;
.source "AppListData.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private mCID:Ljava/lang/String;

.field private mColIndex:I

.field private mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/FilesData;",
            ">;"
        }
    .end annotation
.end field

.field private mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/PackagesData;",
            ">;"
        }
    .end annotation
.end field

.field private mfileVersion:I

.field private mformatVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/chameleon/AppListData;->mColIndex:I

    .line 16
    iput v1, p0, Lcom/sprint/chameleon/AppListData;->mfileVersion:I

    .line 17
    iput v1, p0, Lcom/sprint/chameleon/AppListData;->mformatVersion:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/AppListData;->mCID:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/chameleon/AppListData;->mPackages:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/chameleon/AppListData;->mFiles:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public getCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sprint/chameleon/AppListData;->mCID:Ljava/lang/String;

    return-object v0
.end method

.method public getColIndex()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sprint/chameleon/AppListData;->mColIndex:I

    return v0
.end method

.method public getFileVersion()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/sprint/chameleon/AppListData;->mfileVersion:I

    return v0
.end method

.method public getFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/FilesData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprint/chameleon/AppListData;->mFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFormatVersion()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/sprint/chameleon/AppListData;->mformatVersion:I

    return v0
.end method

.method public getPacakges()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/PackagesData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/chameleon/AppListData;->mPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCID(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprint/chameleon/AppListData;->mCID:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setClearPackageArray()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sprint/chameleon/AppListData;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    return-void
.end method

.method public setColIndex(I)V
    .locals 0
    .param p1, "colIndex"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/sprint/chameleon/AppListData;->mColIndex:I

    .line 60
    return-void
.end method

.method public setFileVersion(I)V
    .locals 0
    .param p1, "fileVersion"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sprint/chameleon/AppListData;->mfileVersion:I

    .line 45
    return-void
.end method

.method public setFiles(Lcom/sprint/chameleon/FilesData;)V
    .locals 1
    .param p1, "files"    # Lcom/sprint/chameleon/FilesData;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sprint/chameleon/AppListData;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public setFormatVersion(I)V
    .locals 0
    .param p1, "formatVersion"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sprint/chameleon/AppListData;->mformatVersion:I

    .line 48
    return-void
.end method

.method public setPacakges(Lcom/sprint/chameleon/PackagesData;)V
    .locals 1
    .param p1, "packages"    # Lcom/sprint/chameleon/PackagesData;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sprint/chameleon/AppListData;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method
