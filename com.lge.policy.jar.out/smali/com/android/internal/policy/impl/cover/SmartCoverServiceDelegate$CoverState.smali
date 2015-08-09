.class final Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;
.super Ljava/lang/Object;
.source "SmartCoverServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CoverState"
.end annotation


# instance fields
.field public bootCompleted:Z

.field public currentUser:I

.field public offReason:I

.field public screenIsOn:Z

.field showing:Z

.field public state:I

.field systemIsReady:Z

.field public type:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->showing:Z

    .line 34
    return-void
.end method
