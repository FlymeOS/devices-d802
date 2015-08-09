.class public Lcom/android/internal/policy/impl/PhoneWindowEx;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "PhoneWindowEx.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "sys.navibar.color"

.field private static final TAG:Ljava/lang/String; = "PhoneWindowEx"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 14
    .param p1, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v10

    .line 23
    .local v10, "vg":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowEx;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowEx;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/lge/internal/R$styleable;->Theme:[I

    invoke-virtual {v11, v12}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 25
    .local v9, "ta":Landroid/content/res/TypedArray;
    sget v11, Lcom/lge/R$styleable;->Theme_windowStatusBarBackground:I

    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 26
    .local v4, "hasStatusBarColor":Z
    sget v11, Lcom/lge/R$styleable;->Theme_windowNavigationBarBackground:I

    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    .line 28
    .local v3, "hasNavigationBarColor":Z
    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowEx;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 30
    .local v7, "params":Landroid/view/WindowManager$LayoutParams;
    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, -0x80000000

    or-int/2addr v11, v12

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 31
    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v12, -0x4000001

    and-int/2addr v11, v12

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 33
    .end local v7    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    if-eqz v4, :cond_2

    .line 34
    sget v11, Lcom/lge/R$styleable;->Theme_windowStatusBarBackground:I

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowEx;->setStatusBarColor(I)V

    .line 37
    :cond_2
    if-eqz v3, :cond_4

    .line 38
    sget v11, Lcom/lge/R$styleable;->Theme_windowStatusBarBackground:I

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowEx;->setNavigationBarColor(I)V

    .line 39
    const-string v11, "PhoneWindowEx"

    const-string v12, "Ex1. hasNavigationBarColor true "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    :goto_0
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-object v10

    .line 42
    :cond_4
    const-string v11, "sys.navibar.color"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, "result":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "colors":I
    :try_start_0
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    :goto_1
    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowEx;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/lge/internal/R$color;->lgblack:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 55
    .local v5, "lgBlack":I
    const/16 v11, 0x26

    invoke-virtual {v0, v11, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 58
    .local v6, "navigationBarColor":I
    if-ne v6, v5, :cond_3

    .line 59
    const-string v11, "PhoneWindowEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PWEx][generateLayout] setNavigationBarColor2 : colors=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowEx;->mUseDefaultNaviColor:Z

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowEx;->setNavigationBarColor2(I)V

    goto :goto_0

    .line 49
    .end local v5    # "lgBlack":I
    .end local v6    # "navigationBarColor":I
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    const-string v11, "PhoneWindowEx"

    const-string v12, "e1. java.lang.IllegalArgumentException: Unknown color"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x0

    goto :goto_1

    .line 68
    .end local v1    # "colors":I
    .end local v2    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_5
    const-string v11, "PhoneWindowEx"

    const-string v12, "Ex5. SystemProperties.get(KEY) result is NULL!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
