.class public interface abstract Lcom/lge/camera/postview/PostViewBarListener;
.super Ljava/lang/Object;
.source "PostViewBarListener.java"


# virtual methods
.method public abstract findViewById(I)Landroid/view/View;
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getPx(I)I
.end method

.method public abstract isPausing()Z
.end method

.method public abstract onCursorMoving(Z)V
.end method

.method public abstract onCursorUpdated(I)V
.end method

.method public abstract postOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract removePostRunnable(Ljava/lang/Object;)V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method
