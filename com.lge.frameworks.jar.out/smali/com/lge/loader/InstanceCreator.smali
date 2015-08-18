.class public abstract Lcom/lge/loader/InstanceCreator;
.super Ljava/lang/Object;
.source "InstanceCreator.java"


# instance fields
.field private mDefault:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/loader/InstanceCreator;->getDefaultInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/loader/InstanceCreator;->mDefault:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/lge/loader/InstanceCreator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/loader/InstanceCreator;->mDefault:Ljava/lang/Object;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/lge/loader/InstanceCreator;->mDefault:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract newInstance(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public setDefaultInstance(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newInstance"    # Ljava/lang/Object;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/loader/InstanceCreator;->mDefault:Ljava/lang/Object;

    .line 41
    return-void
.end method
