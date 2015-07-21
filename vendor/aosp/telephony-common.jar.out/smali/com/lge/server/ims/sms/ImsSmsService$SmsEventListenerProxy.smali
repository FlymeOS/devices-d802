.class Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;
.super Ljava/lang/Object;
.source "ImsSmsService.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/ISmsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/server/ims/sms/ImsSmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsEventListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/server/ims/sms/ImsSmsService;


# direct methods
.method private constructor <init>(Lcom/lge/server/ims/sms/ImsSmsService;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;->this$0:Lcom/lge/server/ims/sms/ImsSmsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/server/ims/sms/ImsSmsService;Lcom/lge/server/ims/sms/ImsSmsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/server/ims/sms/ImsSmsService;
    .param p2, "x1"    # Lcom/lge/server/ims/sms/ImsSmsService$1;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;-><init>(Lcom/lge/server/ims/sms/ImsSmsService;)V

    return-void
.end method


# virtual methods
.method public sendMoSms(Lcom/android/internal/telephony/soi/ImsPdu;)I
    .locals 5
    .param p1, "pdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    const-string v3, "ImsPdu is null"

    # invokes: Lcom/lge/server/ims/sms/ImsSmsService;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/lge/server/ims/sms/ImsSmsService;->access$100(Ljava/lang/String;)V

    .line 251
    const/4 v3, -0x2

    .line 258
    :goto_0
    return v3

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getSmsFormat()I

    move-result v0

    .line 255
    .local v0, "format":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "sms":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "targetAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/server/ims/sms/ImsSmsService$SmsEventListenerProxy;->this$0:Lcom/lge/server/ims/sms/ImsSmsService;

    # invokes: Lcom/lge/server/ims/sms/ImsSmsService;->sendSmsMo(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v3, v0, v1, v2}, Lcom/lge/server/ims/sms/ImsSmsService;->access$200(Lcom/lge/server/ims/sms/ImsSmsService;ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method
