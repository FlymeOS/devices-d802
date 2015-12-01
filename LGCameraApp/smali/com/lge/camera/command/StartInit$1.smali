.class Lcom/lge/camera/command/StartInit$1;
.super Ljava/lang/Object;
.source "StartInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/StartInit;->doInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/StartInit;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/StartInit;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lge/camera/command/StartInit$1;->this$0:Lcom/lge/camera/command/StartInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 114
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 115
    return-void
.end method
