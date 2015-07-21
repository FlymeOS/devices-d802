.class public Lcom/android/internal/telephony/soi/RlTransactionManager;
.super Ljava/lang/Object;
.source "RlTransactionManager.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/IRlTransactionManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "RlTransactionManager"


# instance fields
.field private transactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/soi/RlTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/telephony/soi/RlTransaction;)V
    .locals 2
    .param p1, "rlInfo"    # Lcom/android/internal/telephony/soi/RlTransaction;

    .prologue
    .line 20
    if-nez p1, :cond_1

    .line 21
    const-string v0, "RlTransactionManager"

    const-string v1, "add() rlInfo == null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "RlTransactionManager"

    const-string v1, "add()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public get(I)Lcom/android/internal/telephony/soi/RlTransaction;
    .locals 1
    .param p1, "nIndex"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/soi/RlTransaction;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(II)Lcom/android/internal/telephony/soi/RlTransaction;
    .locals 4
    .param p1, "mr"    # I
    .param p2, "smsType"    # I

    .prologue
    .line 35
    iget-object v2, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/soi/RlTransaction;

    .line 36
    .local v1, "rlInfo":Lcom/android/internal/telephony/soi/RlTransaction;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getMr()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getSmsType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 37
    const-string v2, "RlTransactionManager"

    const-string v3, "get(), match"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .end local v1    # "rlInfo":Lcom/android/internal/telephony/soi/RlTransaction;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBySmsType(I)Lcom/android/internal/telephony/soi/RlTransaction;
    .locals 4
    .param p1, "smsType"    # I

    .prologue
    .line 46
    iget-object v2, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/soi/RlTransaction;

    .line 47
    .local v1, "rlInfo":Lcom/android/internal/telephony/soi/RlTransaction;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getSmsType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 48
    const-string v2, "RlTransactionManager"

    const-string v3, "get(), match"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v1    # "rlInfo":Lcom/android/internal/telephony/soi/RlTransaction;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/android/internal/telephony/soi/RlTransaction;)Z
    .locals 2
    .param p1, "rlInfo"    # Lcom/android/internal/telephony/soi/RlTransaction;

    .prologue
    .line 65
    const-string v0, "RlTransactionManager"

    const-string v1, "remove()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "RlTransactionManager"

    const-string v1, "removeAll()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransactionManager;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    return-void
.end method
