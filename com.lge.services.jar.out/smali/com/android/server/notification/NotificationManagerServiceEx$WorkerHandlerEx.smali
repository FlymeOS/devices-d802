.class final Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;
.super Landroid/os/Handler;
.source "NotificationManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandlerEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerServiceEx;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerServiceEx;Lcom/android/server/notification/NotificationManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerServiceEx$1;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$200(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 237
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$500(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$500(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
