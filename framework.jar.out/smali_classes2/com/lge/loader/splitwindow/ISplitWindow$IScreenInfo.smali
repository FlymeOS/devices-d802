.class public interface abstract Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
.super Ljava/lang/Object;
.source "ISplitWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/loader/splitwindow/ISplitWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IScreenInfo"
.end annotation


# static fields
.field public static final SCREEN_ATTRIBUTE_FLOATING:I = 0x2

.field public static final SCREEN_ATTRIBUTE_NOT_RESIZABLE:I = 0x1

.field public static final SCREEN_STATE_FULL:I = 0x3

.field public static final SCREEN_STATE_INVISIBLE:I = 0x0

.field public static final SCREEN_STATE_MINIMIZED:I = 0x1

.field public static final SCREEN_STATE_NORMAL:I = 0x2

.field public static final SCREEN_ZONE_A:I = 0x1

.field public static final SCREEN_ZONE_B:I = 0x2

.field public static final SCREEN_ZONE_MAIN:I


# virtual methods
.method public abstract getScreenAttribute()I
.end method

.method public abstract getScreenId()I
.end method

.method public abstract getScreenRect()Landroid/graphics/Rect;
.end method

.method public abstract getScreenState()I
.end method

.method public abstract getScreenZone()I
.end method
