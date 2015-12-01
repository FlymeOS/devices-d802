.class Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "ModeMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/ModeMenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/lge/camera/components/ModeMenuListView;


# direct methods
.method private constructor <init>(Lcom/lge/camera/components/ModeMenuListView;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/components/ModeMenuListView;Lcom/lge/camera/components/ModeMenuListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/components/ModeMenuListView;
    .param p2, "x1"    # Lcom/lge/camera/components/ModeMenuListView$1;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;-><init>(Lcom/lge/camera/components/ModeMenuListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    # invokes: Lcom/lge/camera/components/ModeMenuListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/lge/camera/components/ModeMenuListView;->access$400(Lcom/lge/camera/components/ModeMenuListView;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 286
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v0}, Lcom/lge/camera/components/ModeMenuListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    # invokes: Lcom/lge/camera/components/ModeMenuListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/lge/camera/components/ModeMenuListView;->access$500(Lcom/lge/camera/components/ModeMenuListView;)I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
