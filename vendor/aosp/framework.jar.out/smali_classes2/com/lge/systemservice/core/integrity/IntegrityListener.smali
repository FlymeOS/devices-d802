.class public Lcom/lge/systemservice/core/integrity/IntegrityListener;
.super Ljava/lang/Object;
.source "IntegrityListener.java"


# static fields
.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_REPORT:I = 0xa001

.field public static final LISTEN_RES_BLOCK_PACKAGE:I = 0xf002

.field public static final LISTEN_RES_BYPASS_PACKAGE:I = 0xf001

.field public static final LISTEN_RES_NONE:I = 0xf000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public callback:Lcom/lge/systemservice/core/integrity/IIntegrityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/lge/systemservice/core/integrity/IntegrityListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/integrity/IntegrityListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/lge/systemservice/core/integrity/IntegrityListener$1;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/integrity/IntegrityListener$1;-><init>(Lcom/lge/systemservice/core/integrity/IntegrityListener;)V

    iput-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityListener;->callback:Lcom/lge/systemservice/core/integrity/IIntegrityListener;

    return-void
.end method


# virtual methods
.method public onReport(Ljava/lang/String;[B[B)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baselineFingerprint"    # [B
    .param p3, "newFingerprint"    # [B

    .prologue
    const/4 v3, 0x0

    .line 63
    new-instance v1, Ljava/lang/String;

    array-length v2, p2

    invoke-direct {v1, p2, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 64
    .local v1, "old_one":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    array-length v2, p3

    invoke-direct {v0, p3, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 66
    .local v0, "new_one":Ljava/lang/String;
    sget-object v2, Lcom/lge/systemservice/core/integrity/IntegrityListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGIS] callback called(packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const v2, 0xf000

    return v2
.end method
