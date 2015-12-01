.class Lcom/lge/camera/PostviewRefocusActivity$5;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewRefocusActivity;->onCursorUpdated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewRefocusActivity;

.field final synthetic val$frameValue:I


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewRefocusActivity;I)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iput p2, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->val$frameValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewRefocusActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 1156
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$500(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->val$frameValue:I

    if-le v0, v1, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget v1, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->val$frameValue:I

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->changeFrame(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$1800(Lcom/lge/camera/PostviewRefocusActivity;I)V

    .line 1158
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget v1, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->val$frameValue:I

    # setter for: Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$002(Lcom/lge/camera/PostviewRefocusActivity;I)I

    .line 1159
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$5;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewRefocusActivity;->invalidateOptionsMenu()V

    .line 1161
    :cond_0
    return-void
.end method
