.class Lcom/android/server/display/RampAnimatorEx;
.super Lcom/android/server/display/RampAnimator;
.source "RampAnimatorEx.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/display/RampAnimator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/android/server/display/RampAnimatorEx;, "Lcom/android/server/display/RampAnimatorEx<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    .line 13
    return-void
.end method

.method private isValidCurrentScreenBrightness(I)Z
    .locals 7
    .param p1, "current"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/android/server/display/RampAnimatorEx;, "Lcom/android/server/display/RampAnimatorEx<TT;>;"
    new-instance v0, Ljava/lang/String;

    const-string v5, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "LCD_FILE":Ljava/lang/String;
    const-string v4, ""

    .line 42
    .local v4, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 43
    .local v2, "in":Ljava/io/BufferedReader;
    move v1, p1

    .line 45
    .local v1, "currentValue":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 52
    if-eqz v3, :cond_0

    .line 53
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 57
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-ne v1, p1, :cond_3

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 55
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 56
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 49
    :catch_1
    move-exception v5

    .line 52
    :goto_2
    if-eqz v2, :cond_1

    .line 53
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 55
    :catch_2
    move-exception v5

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v5

    .line 52
    :goto_3
    if-eqz v2, :cond_2

    .line 53
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 55
    :cond_2
    :goto_4
    throw v5

    .line 57
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 55
    :catch_3
    move-exception v6

    goto :goto_4

    .line 51
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 49
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private removeCallback()V
    .locals 4

    .prologue
    .line 86
    .local p0, "this":Lcom/android/server/display/RampAnimatorEx;, "Lcom/android/server/display/RampAnimatorEx<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimatorEx;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/display/RampAnimatorEx;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/RampAnimatorEx;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimatorEx;->mAnimating:Z

    .line 90
    return-void
.end method


# virtual methods
.method public animateRecoverScreenBrightness(II)Z
    .locals 4
    .param p1, "current"    # I
    .param p2, "rate"    # I

    .prologue
    .line 16
    .local p0, "this":Lcom/android/server/display/RampAnimatorEx;, "Lcom/android/server/display/RampAnimatorEx<TT;>;"
    const/4 v0, 0x0

    .line 17
    .local v0, "bDone":Z
    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimatorEx;->isValidCurrentScreenBrightness(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/display/RampAnimatorEx;->mTargetValue:I

    if-ge p1, v1, :cond_1

    .line 18
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimatorEx;->mAnimating:Z

    if-eqz v1, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/server/display/RampAnimatorEx;->removeCallback()V

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/RampAnimatorEx;->mAnimating:Z

    .line 21
    iget v1, p0, Lcom/android/server/display/RampAnimatorEx;->mTargetValue:I

    iput v1, p0, Lcom/android/server/display/RampAnimatorEx;->mCurrentValue:I

    .line 22
    iget p2, p0, Lcom/android/server/display/RampAnimatorEx;->mRate:I

    .line 25
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimatorEx;->mAnimating:Z

    if-nez v1, :cond_1

    .line 26
    iput p2, p0, Lcom/android/server/display/RampAnimatorEx;->mRate:I

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/RampAnimatorEx;->mAnimating:Z

    .line 28
    iget v1, p0, Lcom/android/server/display/RampAnimatorEx;->mCurrentValue:I

    iput v1, p0, Lcom/android/server/display/RampAnimatorEx;->mTargetValue:I

    .line 29
    iput p1, p0, Lcom/android/server/display/RampAnimatorEx;->mCurrentValue:I

    .line 30
    int-to-float v1, p1

    iput v1, p0, Lcom/android/server/display/RampAnimatorEx;->mAnimatedValue:F

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimatorEx;->mLastFrameTimeNanos:J

    .line 32
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimatorEx;->postAnimationCallback()V

    .line 33
    const/4 v0, 0x1

    .line 36
    :cond_1
    return v0
.end method

.method public noAnimateTo(I)Z
    .locals 3
    .param p1, "target"    # I

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimatorEx;, "Lcom/android/server/display/RampAnimatorEx<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimatorEx;->mFirstTime:Z

    if-eqz v2, :cond_1

    .line 63
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimatorEx;->mFirstTime:Z

    .line 64
    iget-object v1, p0, Lcom/android/server/display/RampAnimatorEx;->mProperty:Landroid/util/IntProperty;

    iget-object v2, p0, Lcom/android/server/display/RampAnimatorEx;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 65
    iput p1, p0, Lcom/android/server/display/RampAnimatorEx;->mCurrentValue:I

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimatorEx;->mAnimating:Z

    if-eqz v2, :cond_2

    .line 70
    invoke-direct {p0}, Lcom/android/server/display/RampAnimatorEx;->removeCallback()V

    .line 71
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimatorEx;->mAnimating:Z

    .line 74
    :cond_2
    iget v2, p0, Lcom/android/server/display/RampAnimatorEx;->mTargetValue:I

    if-eq v2, p1, :cond_3

    .line 76
    .local v0, "changed":Z
    :goto_1
    iget v1, p0, Lcom/android/server/display/RampAnimatorEx;->mCurrentValue:I

    if-eq v1, p1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/server/display/RampAnimatorEx;->mProperty:Landroid/util/IntProperty;

    iget-object v2, p0, Lcom/android/server/display/RampAnimatorEx;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 78
    iput p1, p0, Lcom/android/server/display/RampAnimatorEx;->mTargetValue:I

    .line 79
    iput p1, p0, Lcom/android/server/display/RampAnimatorEx;->mCurrentValue:I

    goto :goto_0

    .end local v0    # "changed":Z
    :cond_3
    move v0, v1

    .line 74
    goto :goto_1
.end method
