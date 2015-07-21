.class public abstract Lcom/android/internal/telephony/soi/MtRecord;
.super Ljava/lang/Object;
.source "MtRecord.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/ISmsRecord;


# instance fields
.field protected messageRef:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getMessageRef()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/android/internal/telephony/soi/MtRecord;->messageRef:I

    return v0
.end method

.method public setMessageRef(I)V
    .locals 0
    .param p1, "messageRef"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/android/internal/telephony/soi/MtRecord;->messageRef:I

    .line 21
    return-void
.end method
