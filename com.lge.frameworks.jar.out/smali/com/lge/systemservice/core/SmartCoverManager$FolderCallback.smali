.class public abstract Lcom/lge/systemservice/core/SmartCoverManager$FolderCallback;
.super Lcom/lge/systemservice/core/ISmartCoverCallback$Stub;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/SmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FolderCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/lge/systemservice/core/ISmartCoverCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeChanged(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 300
    return-void
.end method
