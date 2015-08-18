.class Lcom/lge/systemservice/core/integrity/IntegrityListener$1;
.super Lcom/lge/systemservice/core/integrity/IIntegrityListener$Stub;
.source "IntegrityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/integrity/IntegrityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/integrity/IntegrityListener;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/integrity/IntegrityListener;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/systemservice/core/integrity/IntegrityListener$1;->this$0:Lcom/lge/systemservice/core/integrity/IntegrityListener;

    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IIntegrityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReport(Ljava/lang/String;[B[B)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baselineFingerprint"    # [B
    .param p3, "newFingerprint"    # [B

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityListener$1;->this$0:Lcom/lge/systemservice/core/integrity/IntegrityListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/systemservice/core/integrity/IntegrityListener;->onReport(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method
