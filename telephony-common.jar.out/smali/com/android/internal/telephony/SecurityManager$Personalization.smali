.class public Lcom/android/internal/telephony/SecurityManager$Personalization;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Personalization"
.end annotation


# instance fields
.field keysize:I

.field keyvalue:[B

.field final synthetic this$0:Lcom/android/internal/telephony/SecurityManager;

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SecurityManager;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/telephony/SecurityManager$Personalization;->this$0:Lcom/android/internal/telephony/SecurityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/SecurityManager$Personalization;->keyvalue:[B

    return-void
.end method
