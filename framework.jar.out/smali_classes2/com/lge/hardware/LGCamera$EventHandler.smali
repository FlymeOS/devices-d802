.class Lcom/lge/hardware/LGCamera$EventHandler;
.super Landroid/os/Handler;
.source "LGCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/LGCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mLGCamera:Lcom/lge/hardware/LGCamera;

.field final synthetic this$0:Lcom/lge/hardware/LGCamera;


# direct methods
.method public constructor <init>(Lcom/lge/hardware/LGCamera;Lcom/lge/hardware/LGCamera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Lcom/lge/hardware/LGCamera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 865
    iput-object p1, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    .line 866
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 867
    iput-object p2, p0, Lcom/lge/hardware/LGCamera$EventHandler;->mLGCamera:Lcom/lge/hardware/LGCamera;

    .line 868
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 872
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 1017
    const-string v26, "LGCamera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unknown message type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 875
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$200(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 878
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [S

    move-object/from16 v21, v0

    .line 879
    .local v21, "obt_data":[S
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v6, v26

    check-cast v6, [B

    .line 887
    .local v6, "byteData":[B
    const/16 v26, 0x0

    const/16 v27, 0x1

    aget-byte v27, v6, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    const/16 v28, 0x0

    aget-byte v28, v6, v28

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    or-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v21, v26

    .line 888
    const/16 v26, 0x1

    const/16 v27, 0x3

    aget-byte v27, v6, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    const/16 v28, 0x2

    aget-byte v28, v6, v28

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    or-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v21, v26

    .line 889
    const/16 v26, 0x2

    const/16 v27, 0x5

    aget-byte v27, v6, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    const/16 v28, 0x4

    aget-byte v28, v6, v28

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    or-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v21, v26

    .line 890
    const/16 v26, 0x3

    const/16 v27, 0x7

    aget-byte v27, v6, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    const/16 v28, 0x6

    aget-byte v28, v6, v28

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    or-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v21, v26

    .line 891
    const/16 v26, 0x4

    const/16 v27, 0x9

    aget-byte v27, v6, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    const/16 v28, 0x8

    aget-byte v28, v6, v28

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    or-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v21, v26

    .line 893
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 894
    .local v22, "obt_data_i":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ge v15, v0, :cond_1

    .line 895
    aget-short v26, v21, v15

    aput v26, v22, v15

    .line 894
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 899
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$200(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v27, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v27 .. v27}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/lge/hardware/LGCamera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 905
    .end local v6    # "byteData":[B
    .end local v15    # "i":I
    .end local v21    # "obt_data":[S
    .end local v22    # "obt_data_i":[I
    :sswitch_1
    const/16 v26, 0x101

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 906
    .local v25, "statsdata":[I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    const/16 v26, 0x101

    move/from16 v0, v26

    if-ge v15, v0, :cond_2

    .line 907
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    check-cast v26, [B

    mul-int/lit8 v27, v15, 0x4

    # invokes: Lcom/lge/hardware/LGCamera;->byteToInt([BI)I
    invoke-static/range {v26 .. v27}, Lcom/lge/hardware/LGCamera;->access$300([BI)I

    move-result v26

    aput v26, v25, v15

    .line 906
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 909
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$200(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$200(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v27, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v27 .. v27}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/lge/hardware/LGCamera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 916
    .end local v15    # "i":I
    .end local v25    # "statsdata":[I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$400(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$ProxyDataListener;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 917
    new-instance v12, Lcom/lge/hardware/LGCamera$ProxyData;

    invoke-direct {v12}, Lcom/lge/hardware/LGCamera$ProxyData;-><init>()V

    .line 918
    .local v12, "data":Lcom/lge/hardware/LGCamera$ProxyData;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v6, v26

    check-cast v6, [B

    .line 919
    .restart local v6    # "byteData":[B
    const/16 v23, 0x0

    .line 920
    .local v23, "ptr":I
    if-eqz v6, :cond_3

    .line 922
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .local v24, "ptr":I
    aget-byte v26, v6, v23

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v27, v6, v23

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    or-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v12, Lcom/lge/hardware/LGCamera$ProxyData;->val:I

    .line 924
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v26, v6, v23

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v27, v6, v23

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    or-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v12, Lcom/lge/hardware/LGCamera$ProxyData;->conv:I

    .line 926
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v26, v6, v23

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v27, v6, v23

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    or-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v12, Lcom/lge/hardware/LGCamera$ProxyData;->sig:I

    .line 928
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v26, v6, v23

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v27, v6, v23

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    or-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v12, Lcom/lge/hardware/LGCamera$ProxyData;->amb:I

    .line 930
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v26, v6, v23

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v27, v6, v23

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v6, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    or-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v12, Lcom/lge/hardware/LGCamera$ProxyData;->raw:I

    .line 936
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$400(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$ProxyDataListener;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v27, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v27 .. v27}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v12, v1}, Lcom/lge/hardware/LGCamera$ProxyDataListener;->onDataListen(Lcom/lge/hardware/LGCamera$ProxyData;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 934
    :cond_3
    const/16 v26, -0x1

    move/from16 v0, v26

    iput v0, v12, Lcom/lge/hardware/LGCamera$ProxyData;->val:I

    goto :goto_3

    .line 944
    .end local v6    # "byteData":[B
    .end local v12    # "data":Lcom/lge/hardware/LGCamera$ProxyData;
    .end local v23    # "ptr":I
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v5, v26

    check-cast v5, [B

    .line 945
    .local v5, "buf":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$500(Lcom/lge/hardware/LGCamera;)I

    move-result v26

    if-lez v26, :cond_0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 948
    const/4 v8, 0x0

    .line 949
    .local v8, "cb1":Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    const/4 v9, 0x0

    .line 950
    .local v9, "cb2":Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    const/4 v10, 0x0

    .line 951
    .local v10, "cb3":Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$600(Lcom/lge/hardware/LGCamera;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 952
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$700(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v8

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$800(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v9

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mLGManualModeMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$900(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v10

    .line 955
    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    const/16 v26, 0x0

    aget-byte v26, v5, v26

    and-int/lit8 v26, v26, 0x4

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$500(Lcom/lge/hardware/LGCamera;)I

    move-result v26

    and-int/lit8 v26, v26, 0x4

    if-eqz v26, :cond_4

    if-eqz v8, :cond_4

    .line 959
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v14, v0, [B

    .line 960
    .local v14, "hdr_data":[B
    const/16 v26, 0x0

    const/16 v27, 0x4

    aget-byte v27, v5, v27

    aput-byte v27, v14, v26

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v8, v14, v0}, Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 964
    .end local v14    # "hdr_data":[B
    :cond_4
    const/16 v26, 0x0

    aget-byte v26, v5, v26

    and-int/lit8 v26, v26, 0x8

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$500(Lcom/lge/hardware/LGCamera;)I

    move-result v26

    and-int/lit8 v26, v26, 0x8

    if-eqz v26, :cond_5

    if-eqz v9, :cond_5

    .line 965
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v13, v0, [B

    .line 966
    .local v13, "flash_data":[B
    const/16 v26, 0x0

    const/16 v27, 0x8

    aget-byte v27, v5, v27

    aput-byte v27, v13, v26

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v9, v13, v0}, Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 971
    .end local v13    # "flash_data":[B
    :cond_5
    const/16 v26, 0x0

    aget-byte v26, v5, v26

    and-int/lit8 v26, v26, 0x12

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$500(Lcom/lge/hardware/LGCamera;)I

    move-result v26

    and-int/lit8 v26, v26, 0x12

    if-eqz v26, :cond_0

    if-eqz v10, :cond_0

    .line 972
    const/16 v26, 0x10

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 973
    .local v20, "lg_manual_data":[B
    array-length v0, v5

    move/from16 v26, v0

    const/16 v27, 0x1c

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    .line 974
    const/16 v23, 0xc

    .line 976
    .restart local v23    # "ptr":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    move/from16 v24, v23

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    :goto_4
    const/16 v26, 0x10

    move/from16 v0, v26

    if-ge v15, v0, :cond_8

    .line 978
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v26, v5, v24

    aput-byte v26, v20, v15

    .line 976
    add-int/lit8 v15, v15, 0x1

    move/from16 v24, v23

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    goto :goto_4

    .line 955
    .end local v15    # "i":I
    .end local v20    # "lg_manual_data":[B
    .end local v24    # "ptr":I
    :catchall_0
    move-exception v26

    :try_start_1
    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v26

    .line 982
    .restart local v20    # "lg_manual_data":[B
    :cond_6
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    const/16 v26, 0x10

    move/from16 v0, v26

    if-ge v15, v0, :cond_7

    .line 983
    const/16 v26, 0x0

    aput-byte v26, v20, v15

    .line 982
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 985
    :cond_7
    const-string v26, "LGCamera"

    const-string v27, "error! Manual mode was set but data was not matched."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_8
    const/16 v23, 0x0

    .line 988
    .restart local v23    # "ptr":I
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v26, v20, v23

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v20, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v27, v20, v23

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v20, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    or-int v16, v26, v27

    .line 992
    .local v16, "ia":I
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v26, v20, v23

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v20, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v27, v20, v23

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v20, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    or-int v17, v26, v27

    .line 996
    .local v17, "ib":I
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v26, v20, v23

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v20, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v27, v20, v23

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v20, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    or-int v18, v26, v27

    .line 1000
    .local v18, "ic":I
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v26, v20, v23

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v20, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ptr":I
    .restart local v24    # "ptr":I
    aget-byte v27, v20, v23

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ptr":I
    .restart local v23    # "ptr":I
    aget-byte v27, v20, v24

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    or-int v19, v26, v27

    .line 1004
    .local v19, "id":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 1005
    .local v3, "a":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 1006
    .local v4, "b":F
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 1007
    .local v7, "c":F
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 1008
    .local v11, "d":F
    const-string v26, "LGCamera"

    const-string v27, "dennis: %f %f %f %f length=%d buf.length=%d"

    const/16 v28, 0x6

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x3

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x4

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x5

    array-length v0, v5

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v26, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v26 .. v26}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v10, v0, v1}, Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 872
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_3
        0x5000 -> :sswitch_0
        0x8000 -> :sswitch_2
    .end sparse-switch
.end method
