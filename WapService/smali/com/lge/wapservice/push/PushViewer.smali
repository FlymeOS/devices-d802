.class public Lcom/lge/wapservice/push/PushViewer;
.super Landroid/app/Activity;
.source "PushViewer.java"


# static fields
.field private static notification_id:I


# instance fields
.field private content:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private expires:Ljava/lang/String;

.field private href:Ljava/lang/String;

.field private si_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lge/wapservice/push/PushViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/push/PushViewer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/wapservice/push/PushViewer;->href:Ljava/lang/String;

    return-object v0
.end method

.method public static clearNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 107
    .local v0, "manager":Landroid/app/NotificationManager;
    sget v1, Lcom/lge/wapservice/push/PushViewer;->notification_id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/push/PushViewer;->requestWindowFeature(I)Z

    .line 47
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/push/PushViewer;->setContentView(I)V

    .line 48
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/push/PushViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/lge/wapservice/push/PushViewer$1;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/push/PushViewer$1;-><init>(Lcom/lge/wapservice/push/PushViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/push/PushViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/lge/wapservice/push/PushViewer$2;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/push/PushViewer$2;-><init>(Lcom/lge/wapservice/push/PushViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 76
    invoke-virtual {p0}, Lcom/lge/wapservice/push/PushViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, "pushIntent":Landroid/content/Intent;
    const-string v2, "com.lge.wapservice.push.notification_id"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/lge/wapservice/push/PushViewer;->notification_id:I

    .line 80
    const-string v2, "com.lge.wapservice.push.msgtype"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "msgType":I
    if-ne v0, v4, :cond_1

    .line 85
    const-string v2, "com.lge.wapservice.push.si-id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/push/PushViewer;->si_id:Ljava/lang/String;

    .line 86
    const-string v2, "com.lge.wapservice.push.si-href"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/push/PushViewer;->href:Ljava/lang/String;

    .line 87
    const-string v2, "com.lge.wapservice.push.si-created"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/push/PushViewer;->created:Ljava/lang/String;

    .line 88
    const-string v2, "com.lge.wapservice.push.si-expires"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/push/PushViewer;->expires:Ljava/lang/String;

    .line 89
    const-string v2, "com.lge.wapservice.push.si-content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/push/PushViewer;->content:Ljava/lang/String;

    .line 98
    :cond_0
    :goto_0
    const v2, 0x7f090019

    invoke-virtual {p0, v2}, Lcom/lge/wapservice/push/PushViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lge/wapservice/push/PushViewer;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/lge/wapservice/push/PushViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lge/wapservice/push/PushViewer;->href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/lge/wapservice/push/PushViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creation time :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wapservice/push/PushViewer;->created:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "expire time :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wapservice/push/PushViewer;->expires:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "si-id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wapservice/push/PushViewer;->si_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void

    .line 91
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 93
    const-string v2, "com.lge.wapservice.push.sl-href"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/push/PushViewer;->href:Ljava/lang/String;

    .line 94
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/lge/wapservice/push/PushViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/push/PushViewer;->content:Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/push/PushViewer;->created:Ljava/lang/String;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/push/PushViewer;->expires:Ljava/lang/String;

    goto :goto_0
.end method
