.class final Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionBridge"
.end annotation


# instance fields
.field private final mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

.field private final mConnectionId:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 5

    .prologue
    .line 3202
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3203
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 3204
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 3205
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 3206
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 3207
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/16 v3, -0x2710

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 3210
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 3212
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 3213
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    invoke-virtual {v3, v4, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 3216
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3218
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    .line 3219
    return-void
.end method

.method private getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    .line 3278
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3279
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3280
    .local v0, "focusedWindowId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3281
    const/4 v1, 0x0

    monitor-exit v2

    .line 3284
    :goto_0
    return-object v1

    .line 3283
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3284
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0

    .line 3283
    .end local v0    # "focusedWindowId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "windowId"    # I

    .prologue
    .line 3288
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x2

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAccessibilityFocusNotLocked(I)V
    .locals 2
    .param p1, "windowId"    # I

    .prologue
    .line 3222
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3223
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 3224
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 3226
    :cond_0
    return-void
.end method

.method public getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z
    .locals 14
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 3229
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 3230
    .local v1, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_0

    .line 3272
    :goto_0
    return v6

    .line 3234
    :cond_0
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3235
    :try_start_0
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v12

    invoke-virtual {v8, v9, v10, v12, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->computeClickPointInScreen(IIJ)Landroid/graphics/Point;

    move-result-object v2

    .line 3238
    .local v2, "point":Landroid/graphics/Point;
    if-nez v2, :cond_1

    .line 3239
    monitor-exit v7

    goto :goto_0

    .line 3273
    .end local v2    # "point":Landroid/graphics/Point;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3242
    .restart local v2    # "point":Landroid/graphics/Point;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v9

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v4

    .line 3243
    .local v4, "spec":Landroid/view/MagnificationSpec;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v8

    if-nez v8, :cond_2

    .line 3244
    iget v8, v4, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v8, v8

    float-to-int v8, v8

    iget v9, v4, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v9, v9

    float-to-int v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Point;->offset(II)V

    .line 3245
    iget v8, v2, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v4, Landroid/view/MagnificationSpec;->scale:F

    div-float v9, v11, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v2, Landroid/graphics/Point;->x:I

    .line 3246
    iget v8, v2, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, v4, Landroid/view/MagnificationSpec;->scale:F

    div-float v9, v11, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v2, Landroid/graphics/Point;->y:I

    .line 3250
    :cond_2
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3251
    .local v5, "windowBounds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowBounds(Landroid/graphics/Rect;)Z

    .line 3252
    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3253
    monitor-exit v7

    goto :goto_0

    .line 3257
    :cond_3
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;

    move-result-object v3

    .line 3258
    .local v3, "screenSize":Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v8, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3259
    iget v8, v2, Landroid/graphics/Point;->x:I

    if-ltz v8, :cond_4

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->x:I

    if-gt v8, v9, :cond_4

    iget v8, v2, Landroid/graphics/Point;->y:I

    if-ltz v8, :cond_4

    iget v8, v2, Landroid/graphics/Point;->y:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_5

    .line 3261
    :cond_4
    monitor-exit v7

    goto/16 :goto_0

    .line 3265
    :cond_5
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3266
    .local v0, "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3267
    iget v8, p1, Landroid/graphics/Point;->x:I

    iget v9, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3268
    monitor-exit v7

    goto/16 :goto_0

    .line 3271
    :cond_6
    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Point;->set(II)V

    .line 3272
    const/4 v6, 0x1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
