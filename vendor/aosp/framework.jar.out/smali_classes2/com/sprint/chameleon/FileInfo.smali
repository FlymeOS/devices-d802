.class public Lcom/sprint/chameleon/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private mCid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCols:I

.field private mFileVersion:I

.field private mFormatVersion:I

.field private mRows:I

.field private mVaild:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/chameleon/FileInfo;->mFileVersion:I

    .line 15
    iput v1, p0, Lcom/sprint/chameleon/FileInfo;->mRows:I

    .line 16
    iput v1, p0, Lcom/sprint/chameleon/FileInfo;->mCols:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/chameleon/FileInfo;->mCid:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/chameleon/FileInfo;->mVaild:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getCid()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/chameleon/FileInfo;->mCid:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCols()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sprint/chameleon/FileInfo;->mCols:I

    return v0
.end method

.method public getFileVersion()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/sprint/chameleon/FileInfo;->mFileVersion:I

    return v0
.end method

.method public getFormatVersion()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/sprint/chameleon/FileInfo;->mFormatVersion:I

    return v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/sprint/chameleon/FileInfo;->mRows:I

    return v0
.end method

.method public getVaild()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sprint/chameleon/FileInfo;->mVaild:Z

    return v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sprint/chameleon/FileInfo;->mCid:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public setCols(I)V
    .locals 0
    .param p1, "cols"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/sprint/chameleon/FileInfo;->mCols:I

    .line 50
    return-void
.end method

.method public setFileVersion(I)V
    .locals 0
    .param p1, "fileversion"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sprint/chameleon/FileInfo;->mFileVersion:I

    .line 41
    return-void
.end method

.method public setFormatVersion(I)V
    .locals 0
    .param p1, "formatversion"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/sprint/chameleon/FileInfo;->mFormatVersion:I

    .line 44
    return-void
.end method

.method public setRows(I)V
    .locals 0
    .param p1, "rows"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sprint/chameleon/FileInfo;->mRows:I

    .line 47
    return-void
.end method

.method public setVaild(Z)V
    .locals 0
    .param p1, "vaild"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sprint/chameleon/FileInfo;->mVaild:Z

    .line 56
    return-void
.end method
