.class Lcom/lge/app/floating/FrameView$ImeMonitor;
.super Ljava/lang/Object;
.source "FrameView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FrameView;


# direct methods
.method private constructor <init>(Lcom/lge/app/floating/FrameView;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/floating/FrameView;Lcom/lge/app/floating/FrameView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/app/floating/FrameView;
    .param p2, "x1"    # Lcom/lge/app/floating/FrameView$1;

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FrameView$ImeMonitor;-><init>(Lcom/lge/app/floating/FrameView;)V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 644
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "focus changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    if-eqz p2, :cond_1

    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    instance-of v6, p2, Landroid/widget/Button;

    if-nez v6, :cond_1

    move-object v5, p2

    .line 646
    check-cast v5, Landroid/widget/TextView;

    .line 647
    .local v5, "tv":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    iget-object v6, v6, Lcom/lge/app/floating/FrameView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 648
    .local v2, "im":Landroid/view/inputmethod/InputMethodManager;
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tv.isEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tv.isIputMethodTarget="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " im.isActive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsImeVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v8}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v8

    iget-boolean v8, v8, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v6

    iget-boolean v6, v6, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isInLowProfile()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v6

    if-nez v6, :cond_1

    .line 653
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v7, "focus is given to text view"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    iget-boolean v6, v6, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    if-nez v6, :cond_0

    .line 655
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lcom/lge/app/floating/FloatingWindow;->setLayoutLimit(ZZ)V

    .line 656
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    iput-boolean v9, v6, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    .line 658
    :cond_0
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 659
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 660
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v7, "window already has FOCUSABLE state. Force show IME"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/lge/app/floating/FloatingWindow;->requestFocusAndShowKeyboard(Landroid/view/View;)V

    .line 667
    .end local v2    # "im":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_1
    const/4 v3, 0x1

    .line 668
    .local v3, "isShowSoftInputOnFocus":Z
    instance-of v6, p2, Landroid/widget/EditText;

    if-eqz v6, :cond_2

    .line 670
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getShowSoftInputOnFocus"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 671
    .local v1, "getShowSoftInputOnFocus":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 672
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isShowSoftInputOnFocus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .end local v1    # "getShowSoftInputOnFocus":Ljava/lang/reflect/Method;
    :cond_2
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getShowSoftInputOnFocus() - reflection fail, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
