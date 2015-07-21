.class public interface abstract Landroid/view/IEventFilter;
.super Ljava/lang/Object;
.source "IEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IEventFilter$ReturnAct;
    }
.end annotation


# static fields
.field public static final MAX_POINTER_COUNT:I = 0xa


# virtual methods
.method public abstract filtering(Landroid/view/MotionEvent;)Z
.end method

.method public abstract getAct()Landroid/view/IEventFilter$ReturnAct;
.end method

.method public abstract getReportMask()Ljava/util/BitSet;
.end method

.method public abstract init()V
.end method

.method public abstract needToRepeat()Z
.end method
