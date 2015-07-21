.class public abstract Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.super Ljava/lang/Object;
.source "IccHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "RecordLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandler;


# direct methods
.method protected constructor <init>(Lcom/lge/uicc/framework/IccHandler;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;->this$0:Lcom/lge/uicc/framework/IccHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onLoadCompleted(Ljava/lang/Object;)V
.end method

.method onLoadException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    return-void
.end method
