.class final Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;
.super Landroid/app/Dialog;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalActionsDialog"
.end annotation


# instance fields
.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mDisIntercepted:Z

.field private mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/android/internal/app/AlertController$AlertParams;

    .prologue
    .line 1846
    sget v0, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1847
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1848
    new-instance v0, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 1849
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1850
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    .line 1851
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 1852
    return-void
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1855
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1856
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1858
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1903
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v2, :cond_a

    .line 1904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1905
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 1906
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 1907
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 1908
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 1909
    .local v11, "eventY":I
    iget v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    .line 1913
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1917
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_6

    .line 1918
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1919
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_2

    .line 1920
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1921
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1923
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1924
    const-string v2, "Qtalkback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnableAccessibilityController. mCancelOnUp= true, ACTION_CANCEL now : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1931
    .end local v0    # "now":J
    :cond_2
    const/4 v2, 0x1

    if-ne v8, v2, :cond_4

    .line 1932
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_3

    .line 1933
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1935
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1936
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1990
    .end local v8    # "action":I
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    :cond_5
    :goto_1
    return v13

    .line 1928
    .restart local v8    # "action":I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 1931
    const/4 v2, 0x1

    if-ne v8, v2, :cond_5

    .line 1932
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_7

    .line 1933
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1935
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1936
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    goto :goto_1

    .line 1931
    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    if-ne v8, v3, :cond_9

    .line 1932
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_8

    .line 1933
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1935
    :cond_8
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1936
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    :cond_9
    throw v2

    .line 1941
    .end local v8    # "action":I
    :cond_a
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_TALKBACKQUICKACCESS:Z

    if-eqz v2, :cond_4

    .line 1942
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1944
    .restart local v8    # "action":I
    :try_start_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisIntercepted:Z

    if-nez v2, :cond_11

    .line 1945
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    if-nez v2, :cond_b

    .line 1946
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->canDisableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1947
    new-instance v2, Lcom/android/internal/policy/impl/DisableAccessibilityController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/DisableAccessibilityController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    .line 1948
    const-string v2, "Qtalkback"

    const-string v3, "new DisableAccessibilityController"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_c

    .line 1953
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisIntercepted:Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1959
    :cond_c
    :goto_2
    :try_start_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisIntercepted:Z

    if-eqz v2, :cond_d

    .line 1960
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1961
    .restart local v0    # "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1963
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1964
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1965
    const-string v2, "Qtalkback"

    const-string v3, "DisableAccessibilityController mCancelOnUp = true, ACTION_CANCEL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1980
    .end local v0    # "now":J
    :cond_d
    const/4 v2, 0x1

    if-ne v8, v2, :cond_4

    .line 1981
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_e

    .line 1982
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1984
    :cond_e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1985
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisIntercepted:Z

    goto/16 :goto_0

    .line 1954
    :catch_0
    move-exception v12

    .line 1955
    .local v12, "ex":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v2, "Qtalkback"

    const-string v3, "IllegalStateException ex : mDisableAccessibilityController.onInterceptTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisIntercepted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1980
    .end local v12    # "ex":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v2

    const/4 v3, 0x1

    if-ne v8, v3, :cond_10

    .line 1981
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_f

    .line 1982
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1984
    :cond_f
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1985
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisIntercepted:Z

    :cond_10
    throw v2

    .line 1968
    :cond_11
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_d

    .line 1970
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v13

    .line 1980
    .local v13, "mReturnValue":Z
    const/4 v2, 0x1

    if-ne v8, v2, :cond_5

    .line 1981
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_12

    .line 1982
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1984
    :cond_12
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1985
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisIntercepted:Z

    goto/16 :goto_1

    .line 1972
    .end local v13    # "mReturnValue":Z
    :catch_1
    move-exception v12

    .line 1973
    .restart local v12    # "ex":Ljava/lang/IllegalStateException;
    :try_start_8
    const-string v2, "Qtalkback"

    const-string v3, "IllegalStateException : mDisableAccessibilityController.onTouchEvent(event)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    invoke-virtual {v12}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1975
    const/4 v13, 0x0

    .line 1980
    const/4 v2, 0x1

    if-ne v8, v2, :cond_5

    .line 1981
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_13

    .line 1982
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1984
    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1985
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mDisIntercepted:Z

    goto/16 :goto_1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1999
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2000
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 2001
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2006
    const/4 v0, 0x1

    .line 2008
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    const/4 v0, 0x1

    .line 2016
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1867
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1876
    invoke-super {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1890
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1891
    return-void

    .line 1879
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TALKBACKQUICKACCESS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->canDisableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1880
    const-string v0, "Qtalkback"

    const-string v1, "canDisableAccessibilityViaGesture result = true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1882
    invoke-super {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 1886
    :cond_1
    const-string v0, "Qtalkback"

    const-string v1, "setCanceledOnTouchOutside(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1888
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    .line 1898
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1899
    return-void
.end method
