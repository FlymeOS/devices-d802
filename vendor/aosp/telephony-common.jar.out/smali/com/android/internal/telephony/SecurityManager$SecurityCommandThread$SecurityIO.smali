.class final Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SecurityIO"
.end annotation


# instance fields
.field public request:Ljava/lang/Object;

.field public response:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "argument1"    # Ljava/lang/Object;
    .param p2, "argument2"    # Ljava/lang/Object;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->request:Ljava/lang/Object;

    .line 138
    iput-object p2, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    .line 139
    return-void
.end method
