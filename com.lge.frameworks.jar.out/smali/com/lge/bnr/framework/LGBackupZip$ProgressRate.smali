.class public Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
.super Ljava/lang/Object;
.source "LGBackupZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/framework/LGBackupZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressRate"
.end annotation


# instance fields
.field private maxProgress:[I

.field private stepPerOneProgress:[I

.field final synthetic this$0:Lcom/lge/bnr/framework/LGBackupZip;


# direct methods
.method constructor <init>(Lcom/lge/bnr/framework/LGBackupZip;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->this$0:Lcom/lge/bnr/framework/LGBackupZip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I

    .line 40
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->stepPerOneProgress:[I

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->stepPerOneProgress:[I

    return-object v0
.end method
