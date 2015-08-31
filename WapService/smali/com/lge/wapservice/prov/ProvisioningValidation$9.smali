.class Lcom/lge/wapservice/prov/ProvisioningValidation$9;
.super Ljava/util/TimerTask;
.source "ProvisioningValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wapservice/prov/ProvisioningValidation;->showVirturalKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$9;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 634
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$9;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 635
    .local v0, "imMngr":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 636
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 638
    :cond_0
    return-void
.end method
