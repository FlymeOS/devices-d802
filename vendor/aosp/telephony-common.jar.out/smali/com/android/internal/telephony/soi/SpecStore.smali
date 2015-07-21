.class public Lcom/android/internal/telephony/soi/SpecStore;
.super Ljava/lang/Object;
.source "SpecStore.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/ISpecStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public createSpec()Lcom/android/internal/telephony/soi/Spec;
    .locals 4

    .prologue
    .line 23
    const-string v1, "gsm.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "operator":Ljava/lang/String;
    const-string v1, "SpecStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSpec() operator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 26
    new-instance v1, Lcom/android/internal/telephony/soi/Spec;

    invoke-direct {v1}, Lcom/android/internal/telephony/soi/Spec;-><init>()V

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "45006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    new-instance v1, Lcom/android/internal/telephony/soi/LguSpec;

    invoke-direct {v1}, Lcom/android/internal/telephony/soi/LguSpec;-><init>()V

    goto :goto_0

    .line 31
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/soi/Spec;

    invoke-direct {v1}, Lcom/android/internal/telephony/soi/Spec;-><init>()V

    goto :goto_0
.end method
