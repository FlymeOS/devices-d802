.class Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;
.super Landroid/os/Handler;
.source "LgeGpriParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgradio/LgeGpriParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpriParserHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgradio/LgeGpriParser;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/lgradio/LgeGpriParser;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;->this$0:Lcom/android/internal/telephony/lgradio/LgeGpriParser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/lgradio/LgeGpriParser;Lcom/android/internal/telephony/lgradio/LgeGpriParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/lgradio/LgeGpriParser;
    .param p2, "x1"    # Lcom/android/internal/telephony/lgradio/LgeGpriParser$1;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;-><init>(Lcom/android/internal/telephony/lgradio/LgeGpriParser;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 317
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 319
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 321
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 322
    const-string v1, "persist.radio.gpri.parser"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;->this$0:Lcom/android/internal/telephony/lgradio/LgeGpriParser;

    # getter for: Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->access$100(Lcom/android/internal/telephony/lgradio/LgeGpriParser;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/16 v2, 0x31

    const-string v3, "0"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 325
    :cond_0
    const-string v1, "LgGpriParser"

    const-string v2, "EVENT_GPRI_PARSER_COMPLETE fail"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
