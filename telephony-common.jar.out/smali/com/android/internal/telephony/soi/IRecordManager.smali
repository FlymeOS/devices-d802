.class public interface abstract Lcom/android/internal/telephony/soi/IRecordManager;
.super Ljava/lang/Object;
.source "IRecordManager.java"


# static fields
.field public static final MAX_MO_MESSAGES:I = 0x14

.field public static final MAX_MT_MESSAGES:I = 0x14


# virtual methods
.method public abstract add(ILcom/android/internal/telephony/soi/MoRecord;)V
.end method

.method public abstract add(Lcom/android/internal/telephony/soi/MoRecord;)V
.end method

.method public abstract add(Lcom/android/internal/telephony/soi/MtRecord;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract clearAllMo()V
.end method

.method public abstract clearAllMt()V
.end method

.method public abstract getMoRecord()Lcom/android/internal/telephony/soi/MoRecord;
.end method

.method public abstract getMoRecord(I)Lcom/android/internal/telephony/soi/MoRecord;
.end method

.method public abstract getMoRecordByMr(I)Lcom/android/internal/telephony/soi/MoRecord;
.end method

.method public abstract getMtRecord()Lcom/android/internal/telephony/soi/MtRecord;
.end method

.method public abstract removeMo()V
.end method

.method public abstract removeMo(I)V
.end method

.method public abstract removeMo(Lcom/android/internal/telephony/soi/MoRecord;)V
.end method

.method public abstract removeMoByMr(I)V
.end method

.method public abstract removeMt()V
.end method

.method public abstract sizeOfMo()I
.end method

.method public abstract sizeOfMt()I
.end method
