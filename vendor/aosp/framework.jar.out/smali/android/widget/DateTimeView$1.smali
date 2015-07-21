.class Landroid/widget/DateTimeView$1;
.super Ljava/lang/Object;
.source "DateTimeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DateTimeView;


# direct methods
.method constructor <init>(Landroid/widget/DateTimeView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    # invokes: Landroid/widget/DateTimeView;->setNextTimeTick()V
    invoke-static {v0}, Landroid/widget/DateTimeView;->access$000(Landroid/widget/DateTimeView;)V

    .line 83
    iget-object v0, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    # invokes: Landroid/widget/DateTimeView;->updateClock()V
    invoke-static {v0}, Landroid/widget/DateTimeView;->access$100(Landroid/widget/DateTimeView;)V

    .line 84
    return-void
.end method
