.class final Lcom/android/server/wm/WindowManagerService$2;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$haveInputMethods:Z

.field final synthetic val$holder:[Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$im:Lcom/android/server/input/InputManagerService;

.field final synthetic val$onlyCore:Z

.field final synthetic val$showBootMsgs:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ[Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$2;->val$im:Lcom/android/server/input/InputManagerService;

    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService$2;->val$haveInputMethods:Z

    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$2;->val$showBootMsgs:Z

    iput-boolean p5, p0, Lcom/android/server/wm/WindowManagerService$2;->val$onlyCore:Z

    iput-object p6, p0, Lcom/android/server/wm/WindowManagerService$2;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 808
    const/4 v9, 0x0

    .line 810
    .local v9, "lgWindowManagerService":Lcom/android/server/wm/WindowManagerService;
    :try_start_0
    const-string v0, "com.android.server.wm.WindowManagerServiceEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v6, 0x0

    .line 811
    .local v6, "c":Ljava/lang/Class;
    if-eqz v6, :cond_0

    .line 812
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/server/input/InputManagerService;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 815
    .local v7, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v7, :cond_0

    .line 816
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$2;->val$context:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$2;->val$im:Lcom/android/server/input/InputManagerService;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$2;->val$haveInputMethods:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$2;->val$showBootMsgs:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$2;->val$onlyCore:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "lgWindowManagerService":Lcom/android/server/wm/WindowManagerService;
    check-cast v9, Lcom/android/server/wm/WindowManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    .end local v6    # "c":Ljava/lang/Class;
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v9    # "lgWindowManagerService":Lcom/android/server/wm/WindowManagerService;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    if-nez v9, :cond_1

    new-instance v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$2;->val$im:Lcom/android/server/input/InputManagerService;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService$2;->val$haveInputMethods:Z

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService$2;->val$showBootMsgs:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService$2;->val$onlyCore:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V

    :goto_1
    aput-object v0, v10, v11

    .line 833
    return-void

    .line 821
    .end local v9    # "lgWindowManagerService":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v8

    .line 822
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Error while loading LGWindowManagerService"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    const/4 v9, 0x0

    .restart local v9    # "lgWindowManagerService":Lcom/android/server/wm/WindowManagerService;
    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, v9

    .line 826
    goto :goto_1
.end method
