.class public Lcom/sprint/chameleon/PrfActivityData;
.super Ljava/lang/Object;
.source "PrfActivityData.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mClear:Z

.field private mCmpName:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mCmpName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mAction:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mCategory:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mScheme:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mMimeType:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mClear:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCmpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mCmpName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public isClear()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sprint/chameleon/PrfActivityData;->mClear:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sprint/chameleon/PrfActivityData;->mAction:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprint/chameleon/PrfActivityData;->mCategory:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setClear(Z)V
    .locals 0
    .param p1, "bClear"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/sprint/chameleon/PrfActivityData;->mClear:Z

    .line 55
    return-void
.end method

.method public setCmpName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmpName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sprint/chameleon/PrfActivityData;->mCmpName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sprint/chameleon/PrfActivityData;->mMimeType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sprint/chameleon/PrfActivityData;->mScheme:Ljava/lang/String;

    .line 49
    return-void
.end method
