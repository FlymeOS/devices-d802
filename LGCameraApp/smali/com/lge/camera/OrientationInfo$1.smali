.class Lcom/lge/camera/OrientationInfo$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/OrientationInfo;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/OrientationInfo;


# direct methods
.method constructor <init>(Lcom/lge/camera/OrientationInfo;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 237
    iput-object p1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 243
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$000(Lcom/lge/camera/OrientationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    invoke-static {p1}, Lcom/lge/camera/util/ImageManager;->roundOrientation(I)I

    move-result v1

    # setter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/OrientationInfo;->access$102(Lcom/lge/camera/OrientationInfo;I)I

    .line 245
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v1}, Lcom/lge/camera/OrientationInfo;->access$100(Lcom/lge/camera/OrientationInfo;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    # setter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/OrientationInfo;->access$102(Lcom/lge/camera/OrientationInfo;I)I

    .line 251
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$200(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v1}, Lcom/lge/camera/OrientationInfo;->access$100(Lcom/lge/camera/OrientationInfo;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mOsManager:Lcom/lge/systemservice/core/OsManager;
    invoke-static {v1}, Lcom/lge/camera/OrientationInfo;->access$300(Lcom/lge/camera/OrientationInfo;)Lcom/lge/systemservice/core/OsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v2}, Lcom/lge/camera/OrientationInfo;->access$100(Lcom/lge/camera/OrientationInfo;)I

    move-result v2

    # invokes: Lcom/lge/camera/OrientationInfo;->setSlimPortDegree(Lcom/lge/systemservice/core/OsManager;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/camera/OrientationInfo;->access$400(Lcom/lge/camera/OrientationInfo;Lcom/lge/systemservice/core/OsManager;I)V

    .line 254
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v1}, Lcom/lge/camera/OrientationInfo;->access$100(Lcom/lge/camera/OrientationInfo;)I

    move-result v1

    # setter for: Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I
    invoke-static {v0, v1}, Lcom/lge/camera/OrientationInfo;->access$202(Lcom/lge/camera/OrientationInfo;I)I

    .line 257
    :cond_0
    const/16 v0, 0xfa

    if-le p1, v0, :cond_2

    const/16 v0, 0x122

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$500(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    const/4 v1, 0x0

    # invokes: Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/OrientationInfo;->access$600(Lcom/lge/camera/OrientationInfo;I)V

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    const/16 v0, 0x154

    if-gt p1, v0, :cond_3

    const/16 v0, 0x14

    if-ge p1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$500(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 267
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # invokes: Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V
    invoke-static {v0, v3}, Lcom/lge/camera/OrientationInfo;->access$600(Lcom/lge/camera/OrientationInfo;I)V

    goto :goto_0

    .line 269
    :cond_4
    const/16 v0, 0xa0

    if-le p1, v0, :cond_5

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$500(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    if-eq v0, v5, :cond_5

    .line 273
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # invokes: Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V
    invoke-static {v0, v5}, Lcom/lge/camera/OrientationInfo;->access$600(Lcom/lge/camera/OrientationInfo;I)V

    goto :goto_0

    .line 275
    :cond_5
    const/16 v0, 0x46

    if-le p1, v0, :cond_6

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # getter for: Lcom/lge/camera/OrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$500(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 279
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # invokes: Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V
    invoke-static {v0, v4}, Lcom/lge/camera/OrientationInfo;->access$600(Lcom/lge/camera/OrientationInfo;I)V

    goto :goto_0

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    # invokes: Lcom/lge/camera/OrientationInfo;->setOrientationDefault()V
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$700(Lcom/lge/camera/OrientationInfo;)V

    goto :goto_0
.end method
