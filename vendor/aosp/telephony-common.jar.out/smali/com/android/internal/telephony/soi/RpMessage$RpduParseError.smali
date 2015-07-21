.class public Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;
.super Ljava/lang/Object;
.source "RpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/soi/RpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RpduParseError"
.end annotation


# instance fields
.field private errorOccur:Z

.field private errorValue:I

.field final synthetic this$0:Lcom/android/internal/telephony/soi/RpMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/soi/RpMessage;I)V
    .locals 3
    .param p2, "errorValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->errorOccur:Z

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->errorValue:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->errorOccur:Z

    .line 73
    iput p2, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->errorValue:I

    .line 74
    const-string v0, "RpMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RpduParseError() errorValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->errorValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getErrorValue()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->errorValue:I

    return v0
.end method

.method public isErrorOccur()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->errorOccur:Z

    return v0
.end method

.method public setErrorOccur(Z)V
    .locals 0
    .param p1, "errorOccur"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->errorOccur:Z

    .line 83
    return-void
.end method

.method public setErrorValue(I)V
    .locals 0
    .param p1, "errorValue"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->errorValue:I

    .line 91
    return-void
.end method
