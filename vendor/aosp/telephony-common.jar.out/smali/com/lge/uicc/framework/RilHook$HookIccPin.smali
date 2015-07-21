.class Lcom/lge/uicc/framework/RilHook$HookIccPin;
.super Lcom/lge/uicc/framework/RilHook$Hook;
.source "RilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/RilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HookIccPin"
.end annotation


# instance fields
.field mAid:Ljava/lang/String;

.field mBlocked:Z

.field mPin:Ljava/lang/String;

.field mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/uicc/framework/RilHook;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/RilHook;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "pin"    # Ljava/lang/String;
    .param p5, "aid"    # Ljava/lang/String;
    .param p6, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->this$0:Lcom/lge/uicc/framework/RilHook;

    .line 200
    invoke-direct {p0, p1, p6}, Lcom/lge/uicc/framework/RilHook$Hook;-><init>(Lcom/lge/uicc/framework/RilHook;Landroid/os/Message;)V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mBlocked:Z

    .line 201
    iput-object p2, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mType:Ljava/lang/String;

    .line 202
    iput-boolean p3, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mBlocked:Z

    .line 203
    iput-object p4, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mPin:Ljava/lang/String;

    .line 204
    iput-object p5, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mAid:Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method handleResult(Landroid/os/AsyncResult;)Landroid/os/Message;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 207
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mType:Ljava/lang/String;

    const-string v2, "pin1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mBlocked:Z

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->this$0:Lcom/lge/uicc/framework/RilHook;

    const-string v2, "save hiddenpin"

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/RilHook;->logd(Ljava/lang/String;)V

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hiddenpin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->this$0:Lcom/lge/uicc/framework/RilHook;

    # getter for: Lcom/lge/uicc/framework/RilHook;->mSlotId:I
    invoke-static {v2}, Lcom/lge/uicc/framework/RilHook;->access$000(Lcom/lge/uicc/framework/RilHook;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mAid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mPin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/uicc/framework/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/lge/uicc/framework/RilHook$Hook;->handleResult(Landroid/os/AsyncResult;)Landroid/os/Message;

    move-result-object v1

    return-object v1

    .line 212
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 214
    .local v0, "result":[I
    iget-object v1, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->this$0:Lcom/lge/uicc/framework/RilHook;

    iget-object v2, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/lge/uicc/framework/RilHook$HookIccPin;->mBlocked:Z

    const/4 v4, 0x0

    aget v4, v0, v4

    # invokes: Lcom/lge/uicc/framework/RilHook;->updateRemainingCount(Ljava/lang/String;ZI)V
    invoke-static {v1, v2, v3, v4}, Lcom/lge/uicc/framework/RilHook;->access$100(Lcom/lge/uicc/framework/RilHook;Ljava/lang/String;ZI)V

    goto :goto_0
.end method
