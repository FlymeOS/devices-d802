.class Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$2;
.super Ljava/lang/Object;
.source "KnockCodeChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->launch(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;I)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$2;->this$1:Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;

    iput p2, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$2;->this$1:Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;

    iget-object v0, v0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    iget v1, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$2;->val$id:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/KnockCodeChecker;->switchUser(I)V

    .line 385
    return-void
.end method
