.class final enum Lcom/lge/bnr/framework/LGBackupErrorCode$14;
.super Lcom/lge/bnr/framework/LGBackupErrorCode;
.source "LGBackupErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/framework/LGBackupErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "x0"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/bnr/framework/LGBackupErrorCode;-><init>(Ljava/lang/String;IILcom/lge/bnr/framework/LGBackupErrorCode$1;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "Failed to create a data file from LinkBackupFile"

    return-object v0
.end method
