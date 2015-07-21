.class final Lcom/lge/app/LocalePickerEx$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalePickerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fieldId:I

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II[Lcom/lge/app/LocalePickerEx$LocaleInfo;Landroid/view/LayoutInflater;II)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .prologue
    .line 370
    iput-object p5, p0, Lcom/lge/app/LocalePickerEx$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/lge/app/LocalePickerEx$1;->val$layoutId:I

    iput p7, p0, Lcom/lge/app/LocalePickerEx$1;->val$fieldId:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 375
    if-nez p2, :cond_2

    .line 376
    iget-object v4, p0, Lcom/lge/app/LocalePickerEx$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/lge/app/LocalePickerEx$1;->val$layoutId:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 381
    .local v3, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lge/app/LocalePickerEx$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .line 382
    .local v0, "item":Lcom/lge/app/LocalePickerEx$LocaleInfo;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 383
    iget v4, p0, Lcom/lge/app/LocalePickerEx$1;->val$fieldId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 384
    .local v2, "text":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 389
    :cond_0
    sget v4, Lcom/lge/internal/R$id;->radio1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 390
    .local v1, "radioButton":Landroid/widget/RadioButton;
    if-eqz v1, :cond_1

    .line 391
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 400
    .end local v1    # "radioButton":Landroid/widget/RadioButton;
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_1
    :goto_1
    return-object v3

    .line 378
    .end local v0    # "item":Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 394
    .restart local v0    # "item":Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .restart local v1    # "radioButton":Landroid/widget/RadioButton;
    .restart local v2    # "text":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
