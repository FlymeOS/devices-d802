.class Lcom/kddi/net/PreferredNetworkService$2;
.super Lcom/kddi/net/IPreferredNetworkService$Stub;
.source "PreferredNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/net/PreferredNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/net/PreferredNetworkService;


# direct methods
.method constructor <init>(Lcom/kddi/net/PreferredNetworkService;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-direct {p0}, Lcom/kddi/net/IPreferredNetworkService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferredNetworkType(Landroid/os/Message;)I
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 161
    const-string v2, "RIL_PreferredNetworkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredNetworkType() before mAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v4, v4, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iput-object p1, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    .line 164
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v2}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.kddi.android.permission.PREFERRED_NETWORK_SETTINGS"

    iget-object v4, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v4}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 165
    const/4 v1, -0x2

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "GetNetworkMode_KDDI_LTE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v2}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    const-string v2, "RIL_PreferredNetworkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredNetworkType() after mAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v4, v4, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)I
    .locals 12
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v8, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 106
    const-string v9, "RIL_PreferredNetworkService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPreferredNetworkType()  networkType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v9, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iput-object p2, v9, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    .line 109
    iget-object v9, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v9}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.kddi.android.permission.PREFERRED_NETWORK_SETTINGS"

    iget-object v11, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v11}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v6

    .line 111
    :cond_1
    iget-object v9, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v9, v9, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 112
    iget-object v9, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v9}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    iget-object v11, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget v11, v11, Lcom/kddi/net/PreferredNetworkService;->preferredNetworkMode:I

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 116
    .local v5, "settingsNetworkMode":I
    packed-switch p1, :pswitch_data_0

    move v6, v8

    .line 147
    goto :goto_0

    .line 118
    :pswitch_0
    const-string v6, "RIL_PreferredNetworkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NT_MODE_DEFAULT settingsNetworkMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "preNetworkType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget v6, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    const/16 v8, 0xa

    if-ne v6, v8, :cond_2

    const/4 v6, 0x7

    if-eq v5, v6, :cond_7

    :cond_2
    sget v6, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    const/16 v8, 0x9

    if-ne v6, v8, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    :cond_3
    sget v6, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_7

    :cond_4
    move v6, v7

    .line 127
    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v8, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v0, v8, Lcom/kddi/net/PreferredNetworkService;->lteOffNetworkType:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_6

    aget v4, v0, v1

    .line 133
    .local v4, "mNetworkType":I
    if-ne v4, v5, :cond_5

    move v6, v7

    .line 134
    goto :goto_0

    .line 132
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v4    # "mNetworkType":I
    :cond_6
    const/16 v8, 0xb

    if-eq v5, v8, :cond_0

    .line 142
    sput v5, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    .line 143
    const-string v6, "RIL_PreferredNetworkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NT_MODE_LTEOFF settingsNetworkMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "preNetworkType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :cond_7
    iget-object v6, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v6, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    .line 150
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "SetNetworkMode_KDDI_LTE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v6, "NetworkType"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v6, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v6}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "settingsNetworkMode":I
    :cond_8
    const-string v6, "RIL_PreferredNetworkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPreferredNetworkType()  mAction is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v9, v9, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 156
    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
