.class public final Lcom/android/server/power/LGDisplayPowerRequest;
.super Ljava/lang/Object;
.source "LGDisplayPowerRequest.java"


# static fields
.field public static final SCREEN_STATE_ABS:I = 0x3


# instance fields
.field public mDoABS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/LGDisplayPowerRequest;->mDoABS:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/LGDisplayPowerRequest;)V
    .locals 0
    .param p1, "other"    # Lcom/android/server/power/LGDisplayPowerRequest;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/power/LGDisplayPowerRequest;->copyFrom(Lcom/android/server/power/LGDisplayPowerRequest;)V

    .line 42
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/power/LGDisplayPowerRequest;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/power/LGDisplayPowerRequest;

    .prologue
    .line 45
    iget-boolean v0, p1, Lcom/android/server/power/LGDisplayPowerRequest;->mDoABS:Z

    iput-boolean v0, p0, Lcom/android/server/power/LGDisplayPowerRequest;->mDoABS:Z

    .line 46
    return-void
.end method

.method public equals(Lcom/android/server/power/LGDisplayPowerRequest;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/power/LGDisplayPowerRequest;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/LGDisplayPowerRequest;->mDoABS:Z

    iget-boolean v1, p1, Lcom/android/server/power/LGDisplayPowerRequest;->mDoABS:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 50
    instance-of v0, p1, Lcom/android/server/power/LGDisplayPowerRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/power/LGDisplayPowerRequest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/power/LGDisplayPowerRequest;->equals(Lcom/android/server/power/LGDisplayPowerRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDoABS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/LGDisplayPowerRequest;->mDoABS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
