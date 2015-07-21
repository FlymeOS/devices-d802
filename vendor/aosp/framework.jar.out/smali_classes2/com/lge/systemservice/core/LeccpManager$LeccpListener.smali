.class public abstract Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
.super Ljava/lang/Object;
.source "LeccpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LeccpListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBLEServerStatusChanged(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 1220
    return-void
.end method

.method public onCardAdded(Lcom/lge/systemservice/core/LeccpInfo$Card;)V
    .locals 0
    .param p1, "card"    # Lcom/lge/systemservice/core/LeccpInfo$Card;

    .prologue
    .line 1229
    return-void
.end method

.method public onCardRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 1247
    return-void
.end method

.method public onCardUpdated(Lcom/lge/systemservice/core/LeccpInfo$Card;)V
    .locals 0
    .param p1, "card"    # Lcom/lge/systemservice/core/LeccpInfo$Card;

    .prologue
    .line 1238
    return-void
.end method

.method public onDeadListenerCheck()V
    .locals 0

    .prologue
    .line 1284
    return-void
.end method

.method public onMyCardAdded(Lcom/lge/systemservice/core/LeccpInfo$Card;)V
    .locals 0
    .param p1, "card"    # Lcom/lge/systemservice/core/LeccpInfo$Card;

    .prologue
    .line 1256
    return-void
.end method

.method public onMyCardRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 1265
    return-void
.end method

.method public onResponseAction(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 1277
    return-void
.end method

.method public onStatusChanged(Lcom/lge/systemservice/core/LeccpInfo$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/lge/systemservice/core/LeccpInfo$Status;

    .prologue
    .line 1212
    return-void
.end method
