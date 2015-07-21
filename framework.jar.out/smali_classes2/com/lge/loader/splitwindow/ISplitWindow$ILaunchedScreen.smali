.class public interface abstract Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
.super Ljava/lang/Object;
.source "ISplitWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/loader/splitwindow/ISplitWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILaunchedScreen"
.end annotation


# static fields
.field public static final SCREEN_ZONE_A:I = 0x1

.field public static final SCREEN_ZONE_B:I = 0x2

.field public static final SCREEN_ZONE_FOCUSED:I = 0x3

.field public static final SCREEN_ZONE_MAIN:I


# virtual methods
.method public abstract getScreenZone()I
.end method

.method public abstract isAutoSplit()Z
.end method

.method public abstract isFullScreen()Z
.end method

.method public abstract isSupportMultipleInstance()Z
.end method

.method public abstract isSupportSplit()Z
.end method
