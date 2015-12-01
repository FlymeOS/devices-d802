.class public Lcom/lge/gestureshot/library/GestureEngine;
.super Ljava/lang/Object;
.source "GestureEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;
    }
.end annotation


# static fields
.field public static final GESTURE_ENGINE_CAPTURE_EVENT:I = 0x2

.field private static final GESTURE_ENGINE_CAPTURE_MSG:I = 0x3

.field public static final GESTURE_ENGINE_CLEAN_EVENT:I = 0x3

.field private static final GESTURE_ENGINE_CLEAN_MSG:I = 0x5

.field private static final GESTURE_ENGINE_DRAW_MSG:I = 0x2

.field private static final GESTURE_ENGINE_ERROR_MSG:I = 0x1

.field public static final GESTURE_ENGINE_READY_EVENT:I = 0x1

.field public static final GESTURE_ENGINE_STATUS_CREATED:I = 0x1

.field public static final GESTURE_ENGINE_STATUS_INITIALIZED:I = 0x2

.field public static final GESTURE_ENGINE_STATUS_NULL:I = 0x0

.field public static final GESTURE_ENGINE_STATUS_STARTED:I = 0x3

.field public static final GESTURE_ENGINE_STATUS_STOPPED:I = 0x4

.field private static sGestureCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/gestureshot/library/GestureEngine;->sGestureCallBackList:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/lge/gestureshot/library/GestureEngine$1;

    invoke-direct {v0}, Lcom/lge/gestureshot/library/GestureEngine$1;-><init>()V

    sput-object v0, Lcom/lge/gestureshot/library/GestureEngine;->sHandler:Landroid/os/Handler;

    .line 83
    const-string v0, "gesture-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static AddCallBack(Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;)V
    .locals 1
    .param p0, "gestureCallBack"    # Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;

    .prologue
    .line 94
    sget-object v0, Lcom/lge/gestureshot/library/GestureEngine;->sGestureCallBackList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public static ClearCallBack()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/lge/gestureshot/library/GestureEngine;->sGestureCallBackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    return-void
.end method

.method public static GestureCallBack(Lcom/lge/gestureshot/library/HandInfo;)V
    .locals 4
    .param p0, "handInfo"    # Lcom/lge/gestureshot/library/HandInfo;

    .prologue
    .line 143
    sget-object v3, Lcom/lge/gestureshot/library/GestureEngine;->sHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 145
    iget v3, p0, Lcom/lge/gestureshot/library/HandInfo;->mEvent:I

    packed-switch v3, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 148
    :pswitch_0
    sget-object v3, Lcom/lge/gestureshot/library/GestureEngine;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, "msg0":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 151
    sget-object v3, Lcom/lge/gestureshot/library/GestureEngine;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 155
    .end local v0    # "msg0":Landroid/os/Message;
    :pswitch_1
    sget-object v3, Lcom/lge/gestureshot/library/GestureEngine;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 156
    .local v1, "msg1":Landroid/os/Message;
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 158
    sget-object v3, Lcom/lge/gestureshot/library/GestureEngine;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 162
    .end local v1    # "msg1":Landroid/os/Message;
    :pswitch_2
    sget-object v3, Lcom/lge/gestureshot/library/GestureEngine;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 163
    .local v2, "msg2":Landroid/os/Message;
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 165
    sget-object v3, Lcom/lge/gestureshot/library/GestureEngine;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static native GestureCreate()I
.end method

.method public static native GesturePutPreviewFrame([BIIII)I
.end method

.method public static native GestureRelease()I
.end method

.method public static native GestureStart()I
.end method

.method public static native GestureStop()I
.end method

.method public static native GetEngineStatus()I
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/lge/gestureshot/library/GestureEngine;->sGestureCallBackList:Ljava/util/List;

    return-object v0
.end method

.method public static native create(II)I
.end method

.method public static native find([BIIII)I
.end method

.method public static native getHandInfo()[Lcom/lge/gestureshot/library/HandInfo;
.end method

.method public static native getSensorDelay()I
.end method

.method public static native motionInitialize(II)I
.end method

.method public static native motionRelease()I
.end method

.method public static native motionUpdate([F)I
.end method

.method public static native release()I
.end method

.method public static native resetHandInfo()I
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 89
    invoke-static {}, Lcom/lge/gestureshot/library/GestureEngine;->release()I

    .line 90
    return-void
.end method
