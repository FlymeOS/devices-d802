.class public Lcom/lge/wapservice/prov/StoreProvisioningActivity;
.super Landroid/app/Activity;
.source "StoreProvisioningActivity.java"


# instance fields
.field private macString:Ljava/lang/String;

.field private msgString:Ljava/lang/String;

.field private msgUriString:Ljava/lang/String;

.field private secString:Ljava/lang/String;

.field private wbxmlDocument:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->secString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->macString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->wbxmlDocument:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->msgString:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->requestWindowFeature(I)Z

    .line 53
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;-><init>(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;-><init>(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 97
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "com.lge.wapservice.prov.SEC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->secString:Ljava/lang/String;

    .line 99
    const-string v1, "com.lge.wapservice.prov.MAC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->macString:Ljava/lang/String;

    .line 100
    const-string v1, "com.lge.wapservice.prov.msguri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->msgUriString:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.lge.wapservice.prov.provisioning-data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->wbxmlDocument:[B

    .line 105
    iget-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->wbxmlDocument:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->wbxmlDocument:[B

    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningDocParse;->parseDoc([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {p0}, Lcom/lge/wapservice/prov/ProvisioningDocParse;->getParseMsg(Landroid/content/Context;)Z

    .line 108
    const v1, 0x7f090013

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v2, v2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v1, 0x7f090015

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/lge/wapservice/prov/ProvisioningFailed;->startProvisioningFailedDialog(Landroid/content/Context;I)V

    .line 114
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->finish()V

    goto :goto_0
.end method
