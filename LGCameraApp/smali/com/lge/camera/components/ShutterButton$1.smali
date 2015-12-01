.class Lcom/lge/camera/components/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ShutterButton;Z)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lge/camera/components/ShutterButton$1;->this$0:Lcom/lge/camera/components/ShutterButton;

    iput-boolean p2, p0, Lcom/lge/camera/components/ShutterButton$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton$1;->this$0:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v1, p0, Lcom/lge/camera/components/ShutterButton$1;->val$pressed:Z

    # invokes: Lcom/lge/camera/components/ShutterButton;->callShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/lge/camera/components/ShutterButton;->access$000(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 123
    return-void
.end method
