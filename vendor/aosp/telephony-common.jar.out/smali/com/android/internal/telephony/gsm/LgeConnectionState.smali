.class Lcom/android/internal/telephony/gsm/LgeConnectionState;
.super Ljava/lang/Object;
.source "LgeConnectionState.java"


# instance fields
.field cState:B

.field conId:I

.field gsmId:I

.field state:Lcom/android/internal/telephony/Call$State;

.field systemCode:I

.field termCode:S


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    .line 9
    iput v1, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->gsmId:I

    .line 10
    iput v1, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->systemCode:I

    .line 13
    const/16 v0, 0x10

    iput-short v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->termCode:S

    return-void
.end method
