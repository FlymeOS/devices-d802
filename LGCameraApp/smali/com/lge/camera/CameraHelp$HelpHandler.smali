.class Lcom/lge/camera/CameraHelp$HelpHandler;
.super Landroid/os/Handler;
.source "CameraHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CameraHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelpHandler"
.end annotation


# instance fields
.field private final mHelpItemAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/camera/adapter/HelpItemAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mHelpKeyString:Ljava/lang/String;

.field private final mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/ListView;Lcom/lge/camera/adapter/HelpItemAdapter;Ljava/lang/String;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "adapter"    # Lcom/lge/camera/adapter/HelpItemAdapter;
    .param p3, "keyString"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->mHelpKeyString:Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->mListView:Ljava/lang/ref/WeakReference;

    .line 295
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->mHelpItemAdapter:Ljava/lang/ref/WeakReference;

    .line 296
    iput-object p3, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->mHelpKeyString:Ljava/lang/String;

    .line 297
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->mHelpItemAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/adapter/HelpItemAdapter;

    iget-object v2, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->mHelpKeyString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/camera/adapter/HelpItemAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 306
    :cond_0
    return-void
.end method
