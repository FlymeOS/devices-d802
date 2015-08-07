.class final Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;
.super Landroid/os/Handler;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LgeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;Lcom/android/server/location/LgeGpsLocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;
    .param p2, "x1"    # Lcom/android/server/location/LgeGpsLocationProvider$1;

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 914
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 952
    :goto_0
    return-void

    .line 918
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_0

    .line 919
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 926
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_1

    .line 927
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 929
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 933
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$700(Lcom/android/server/location/LgeGpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # setter for: Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I
    invoke-static {v1, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->access$802(Lcom/android/server/location/LgeGpsLocationProvider;I)I

    goto :goto_0

    .line 936
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # setter for: Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I
    invoke-static {v1, v4}, Lcom/android/server/location/LgeGpsLocationProvider;->access$802(Lcom/android/server/location/LgeGpsLocationProvider;I)I

    .line 937
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # invokes: Lcom/android/server/location/LgeGpsLocationProvider;->handleCertRequest()V
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$900(Lcom/android/server/location/LgeGpsLocationProvider;)V

    goto :goto_0

    .line 943
    :pswitch_3
    const-string v2, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_VERIZON_FIELD_DATA : msg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.LgeGpsLocationProvider.ACTION_VERIZON_GPS_FIELD_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.lge.LgeGpsLocationProvider.KEY_VERIZON_GPS_FIELD_DATA"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 916
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
