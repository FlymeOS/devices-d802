.class Landroid/preference/LGPreferenceFragment$1;
.super Landroid/view/ContextThemeWrapper;
.source "LGPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/LGPreferenceFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/LGPreferenceFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/preference/LGPreferenceFragment;Landroid/content/Context;ILandroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 101
    iput-object p1, p0, Landroid/preference/LGPreferenceFragment$1;->this$0:Landroid/preference/LGPreferenceFragment;

    iput-object p4, p0, Landroid/preference/LGPreferenceFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/preference/LGPreferenceFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/preference/LGPreferenceFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method
