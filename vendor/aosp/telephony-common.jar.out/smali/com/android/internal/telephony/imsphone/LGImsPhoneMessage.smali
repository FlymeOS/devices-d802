.class public Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
.super Ljava/lang/Object;
.source "LGImsPhoneMessage.java"


# static fields
.field public static final EVENT_CALL_CONFERENCE_STATE_CHANGED:I = 0x35

.field public static final EVENT_CALL_RESULT:I = 0x33

.field public static final EVENT_CALL_UPDATE_RECEIVED:I = 0x34

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_REG_SERVICE_STATE_CHANGED:I = 0x1

.field public static final UNSOL_CONF_EXTENDED:I = 0x1

.field public static final UNSOL_UNKNOWN:I


# instance fields
.field public mArg1:Ljava/lang/Object;

.field public mArg2:Ljava/lang/Object;

.field public mCmd:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "cmd"    # I
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 78
    iput p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 79
    iput p2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 80
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 81
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 66
    iput p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 67
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 71
    iput p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 73
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public static forCallConferenceState(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 103
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x35

    invoke-direct {v0, v1, p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forCallResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 91
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x33

    invoke-direct {v0, v1, p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forCallUpdate(ILjava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 3
    .param p0, "cmd"    # I
    .param p1, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 99
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x34

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forCallUpdate(Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 4
    .param p0, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 95
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forRegServiceState(Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 86
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mArg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mArg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
