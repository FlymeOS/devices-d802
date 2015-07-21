.class public abstract Lcom/lge/uicc/framework/IccHandler$RecordUpdated;
.super Ljava/lang/Object;
.source "IccHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "RecordUpdated"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandler;


# direct methods
.method protected constructor <init>(Lcom/lge/uicc/framework/IccHandler;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandler$RecordUpdated;->this$0:Lcom/lge/uicc/framework/IccHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onUpdateCompleted(Lcom/android/internal/telephony/uicc/IccIoResult;)V
.end method

.method onUpdateException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    return-void
.end method
