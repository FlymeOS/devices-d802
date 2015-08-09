.class Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$1;
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

.field final synthetic val$matchedUser:Landroid/content/pm/UserInfo;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;Landroid/content/pm/UserInfo;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$1;->this$1:Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;

    iput-object p2, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$1;->val$matchedUser:Landroid/content/pm/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$1;->this$1:Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;

    iget-object v0, v0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    iget-object v1, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$1;->val$matchedUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/KnockCodeChecker;->switchUser(I)V

    .line 371
    return-void
.end method
