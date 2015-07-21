.class Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SmartCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/service/SmartCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/service/SmartCoverService;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/service/SmartCoverService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    .line 808
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 809
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 812
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/systemservice/service/SmartCoverService;->access$1100(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 815
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "quick_cover_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 817
    const-string v1, "quick_view_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 821
    const-string v1, "accessibility_touch_control_areas_service_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 824
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->onChange(Z)V

    .line 825
    return-void
.end method

.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 829
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1100(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 831
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x5

    .line 833
    .local v0, "coverType":I
    const-string v6, "quick_cover_enable"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    .line 834
    const/4 v0, 0x0

    .line 859
    :cond_0
    :goto_0
    const/4 v6, 0x5

    if-eq v0, v6, :cond_4

    .line 860
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$2402(Lcom/lge/systemservice/service/SmartCoverService;Z)Z

    .line 861
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onChange(), mSmartCoverEnabled=true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverType(I)V
    invoke-static {v6, v0}, Lcom/lge/systemservice/service/SmartCoverService;->access$2500(Lcom/lge/systemservice/service/SmartCoverService;I)V

    .line 864
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent()V
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2600(Lcom/lge/systemservice/service/SmartCoverService;)V

    .line 880
    :goto_1
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEnabled:Z
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$2702(Lcom/lge/systemservice/service/SmartCoverService;Z)Z

    .line 889
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$2802(Lcom/lge/systemservice/service/SmartCoverService;Z)Z

    .line 890
    const/4 v1, 0x0

    .line 891
    .local v1, "needToEnable":Z
    const-string v6, "accessibility_touch_control_areas_service_enable"

    const/4 v7, -0x2

    invoke-static {v2, v6, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_5

    move v1, v4

    .line 894
    :goto_2
    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z
    invoke-static {v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$2900(Lcom/lge/systemservice/service/SmartCoverService;)Z

    move-result v4

    if-eq v1, v4, :cond_2

    .line 895
    if-nez v1, :cond_1

    .line 896
    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->stopObserving()V
    invoke-static {v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$3000(Lcom/lge/systemservice/service/SmartCoverService;)V

    .line 899
    :cond_1
    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z
    invoke-static {v4, v1}, Lcom/lge/systemservice/service/SmartCoverService;->access$2902(Lcom/lge/systemservice/service/SmartCoverService;Z)Z

    .line 900
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onChange(), mServiceEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2900(Lcom/lge/systemservice/service/SmartCoverService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z
    invoke-static {v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$2900(Lcom/lge/systemservice/service/SmartCoverService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 903
    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->startService()V
    invoke-static {v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$3100(Lcom/lge/systemservice/service/SmartCoverService;)V

    .line 906
    :cond_2
    return-void

    .line 835
    .end local v1    # "needToEnable":Z
    :cond_3
    const-string v6, "quick_view_enable"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 836
    const-string v6, "cover_type"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 837
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 855
    :pswitch_0
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 839
    :pswitch_1
    const/4 v0, 0x1

    .line 840
    goto/16 :goto_0

    .line 842
    :pswitch_2
    const/4 v0, 0x2

    .line 843
    goto/16 :goto_0

    .line 846
    :pswitch_3
    const/4 v0, 0x1

    .line 847
    goto/16 :goto_0

    .line 849
    :pswitch_4
    const/4 v0, 0x4

    .line 850
    goto/16 :goto_0

    .line 852
    :pswitch_5
    const/4 v0, 0x6

    .line 853
    goto/16 :goto_0

    .line 866
    .end local v3    # "type":I
    :cond_4
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent(I)V
    invoke-static {v6, v5}, Lcom/lge/systemservice/service/SmartCoverService;->access$200(Lcom/lge/systemservice/service/SmartCoverService;I)V

    .line 867
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverType(I)V
    invoke-static {v6, v0}, Lcom/lge/systemservice/service/SmartCoverService;->access$2500(Lcom/lge/systemservice/service/SmartCoverService;I)V

    .line 869
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z
    invoke-static {v6, v5}, Lcom/lge/systemservice/service/SmartCoverService;->access$2402(Lcom/lge/systemservice/service/SmartCoverService;Z)Z

    .line 870
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onChange(), mSmartCoverEnabled=false"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .restart local v1    # "needToEnable":Z
    :cond_5
    move v1, v5

    .line 891
    goto :goto_2

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
