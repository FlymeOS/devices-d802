.class final Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ResolverActivityEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityEx;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityEx;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 3
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pInfo"    # Ljava/lang/CharSequence;
    .param p5, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 664
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 665
    const-string v0, "ResolverActivityEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayResolveInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 667
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 668
    return-void
.end method
