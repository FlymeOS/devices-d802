.class Lcom/lge/wapservice/settings/SenderEditor$1;
.super Ljava/lang/Object;
.source "SenderEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wapservice/settings/SenderEditor;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/settings/SenderEditor;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/settings/SenderEditor;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/lge/wapservice/settings/SenderEditor$1;->this$0:Lcom/lge/wapservice/settings/SenderEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderEditor$1;->this$0:Lcom/lge/wapservice/settings/SenderEditor;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/lge/wapservice/settings/SenderEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 211
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderEditor$1;->this$0:Lcom/lge/wapservice/settings/SenderEditor;

    # getter for: Lcom/lge/wapservice/settings/SenderEditor;->preferenceEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lge/wapservice/settings/SenderEditor;->access$000(Lcom/lge/wapservice/settings/SenderEditor;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 214
    :cond_0
    return-void
.end method
