.class public Lcom/android/internal/telephony/soi/RecordManager;
.super Ljava/lang/Object;
.source "RecordManager.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/IRecordManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordManager"


# instance fields
.field protected moRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/soi/MoRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mtRecords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/soi/MtRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->mtRecords:Ljava/util/LinkedList;

    .line 28
    return-void
.end method


# virtual methods
.method public add(ILcom/android/internal/telephony/soi/MoRecord;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "record"    # Lcom/android/internal/telephony/soi/MoRecord;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 33
    return-void
.end method

.method public add(Lcom/android/internal/telephony/soi/MoRecord;)V
    .locals 2
    .param p1, "record"    # Lcom/android/internal/telephony/soi/MoRecord;

    .prologue
    .line 37
    if-nez p1, :cond_1

    .line 38
    const-string v0, "RecordManager"

    const-string v1, "add() record == null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "RecordManager"

    const-string v1, "add()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public add(Lcom/android/internal/telephony/soi/MtRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/internal/telephony/soi/MtRecord;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->mtRecords:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->mtRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 135
    return-void
.end method

.method public clearAllMo()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    return-void
.end method

.method public clearAllMt()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->mtRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 129
    return-void
.end method

.method public getMoRecord()Lcom/android/internal/telephony/soi/MoRecord;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/soi/MoRecord;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMoRecord(I)Lcom/android/internal/telephony/soi/MoRecord;
    .locals 1
    .param p1, "nIndex"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/soi/MoRecord;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMoRecordByMr(I)Lcom/android/internal/telephony/soi/MoRecord;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 58
    iget-object v2, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/soi/MoRecord;

    .line 59
    .local v1, "record":Lcom/android/internal/telephony/soi/MoRecord;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/MoRecord;->getMessageRef()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 60
    const-string v2, "RecordManager"

    const-string v3, "get(), match"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v1    # "record":Lcom/android/internal/telephony/soi/MoRecord;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMtRecord()Lcom/android/internal/telephony/soi/MtRecord;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->mtRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/soi/MtRecord;

    return-object v0
.end method

.method public removeMo()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public removeMo(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public removeMo(Lcom/android/internal/telephony/soi/MoRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/internal/telephony/soi/MoRecord;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public removeMoByMr(I)V
    .locals 4
    .param p1, "mr"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/RecordManager;->getMoRecordByMr(I)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v0

    .line 92
    .local v0, "moRec":Lcom/android/internal/telephony/soi/MoRecord;
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v1, "RecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMoByMr(), remove fail. invalid mr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeMt()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->mtRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public sizeOfMo()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->moRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public sizeOfMt()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RecordManager;->mtRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
