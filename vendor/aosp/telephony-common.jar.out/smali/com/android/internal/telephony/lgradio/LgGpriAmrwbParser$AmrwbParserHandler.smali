.class Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;
.super Landroid/os/Handler;
.source "LgGpriAmrwbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmrwbParserHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;->this$0:Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;
    .param p2, "x1"    # Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;-><init>(Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 350
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 351
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 353
    .local v1, "valueamr":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 355
    :pswitch_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 356
    const-string v2, "LgGpriAmrwbParser"

    const-string v3, "[AMR_WB] Result : EVENT_GPRI_AMRWB_PARSER_COMPLETE recieved "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_0
    const-string v2, "LgGpriAmrwbParser"

    const-string v3, "EVENT_GPRI_AMRWB_PARSER_COMPLETE fail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 365
    const-string v2, "LgGpriAmrwbParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AMR_WB] Result : EVENT_GPRI_AMRWB_CODEC_PREFERENCE recieved result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;->this$0:Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->Parse_AMRStrtoInt(Ljava/lang/String;)I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->access$100(Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->AMRWB_DEFAULT:I

    .line 368
    iget-object v2, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;->this$0:Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->GPRI_AMRWB_parser()V

    goto :goto_0

    .line 371
    :cond_1
    const-string v2, "LgGpriAmrwbParser"

    const-string v3, "EVENT_GPRI_AMRWB_CODEC_PREFERENCE fail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
