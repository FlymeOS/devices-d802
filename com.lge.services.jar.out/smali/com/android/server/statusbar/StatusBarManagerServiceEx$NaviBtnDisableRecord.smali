.class Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
.super Ljava/lang/Object;
.source "StatusBarManagerServiceEx.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NaviBtnDisableRecord"
.end annotation


# instance fields
.field pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

.field token:Landroid/os/IBinder;

.field userId:I

.field what:I


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerServiceEx;Lcom/android/server/statusbar/StatusBarManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/statusbar/StatusBarManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/statusbar/StatusBarManagerServiceEx$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    const-string v0, "StatusBarManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/statusbar/StatusBarManagerServiceEx;->disableNaviBtnInternal(IILandroid/os/IBinder;Ljava/lang/String;)V
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->access$000(Lcom/android/server/statusbar/StatusBarManagerServiceEx;IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 47
    return-void
.end method
