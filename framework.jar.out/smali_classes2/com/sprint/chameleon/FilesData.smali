.class public Lcom/sprint/chameleon/FilesData;
.super Ljava/lang/Object;
.source "FilesData.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private mContent:Ljava/lang/String;

.field private mDelete:Z

.field private mLocation:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNew:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/FilesData;->mName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/FilesData;->mLocation:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/sprint/chameleon/FilesData;->mNew:Z

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/FilesData;->mContent:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Lcom/sprint/chameleon/FilesData;->mDelete:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sprint/chameleon/FilesData;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sprint/chameleon/FilesData;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sprint/chameleon/FilesData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sprint/chameleon/FilesData;->mDelete:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sprint/chameleon/FilesData;->mNew:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprint/chameleon/FilesData;->mContent:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setDelete(Z)V
    .locals 0
    .param p1, "bDelete"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sprint/chameleon/FilesData;->mDelete:Z

    .line 49
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sprint/chameleon/FilesData;->mLocation:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sprint/chameleon/FilesData;->mName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .param p1, "bNew"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/sprint/chameleon/FilesData;->mNew:Z

    .line 43
    return-void
.end method
