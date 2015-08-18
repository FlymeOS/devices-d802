.class public Lcom/lge/app/LocalePickerEx$LocaleInfo;
.super Ljava/lang/Object;
.source "LocalePickerEx.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/LocalePickerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    .line 100
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lge/app/LocalePickerEx$LocaleInfo;)I
    .locals 12
    .param p1, "another"    # Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .prologue
    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "curLocaleStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "thisLocaleStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "anotherLocaleStr":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    const/4 v9, -0x1

    .line 156
    :goto_0
    return v9

    .line 125
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 126
    const/4 v9, 0x1

    goto :goto_0

    .line 129
    :cond_1
    # getter for: Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/LocalePickerEx;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "KR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 130
    const/4 v9, 0x3

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ko"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "en"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-string v10, "zh"

    aput-object v10, v0, v9

    .line 131
    .local v0, "LANG_PREFIXS":[Ljava/lang/String;
    move-object v2, v0

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_9

    aget-object v6, v2, v4

    .line 132
    .local v6, "language":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 133
    const/4 v9, -0x1

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    const/4 v9, 0x1

    goto :goto_0

    .line 131
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    .end local v0    # "LANG_PREFIXS":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "len$":I
    :cond_4
    # getter for: Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/LocalePickerEx;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 139
    const/4 v9, 0x3

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "zh"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string v10, "en"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string v10, "ko"

    aput-object v10, v5, v9

    .line 140
    .local v5, "langPrefixs":[Ljava/lang/String;
    move-object v2, v5

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_9

    aget-object v6, v2, v4

    .line 141
    .restart local v6    # "language":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 142
    const/4 v9, -0x1

    goto :goto_0

    .line 143
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 144
    const/4 v9, 0x1

    goto :goto_0

    .line 140
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 148
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "langPrefixs":[Ljava/lang/String;
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "len$":I
    :cond_7
    const-string v9, "en"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 149
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 150
    :cond_8
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 151
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 156
    :cond_9
    sget-object v9, Lcom/lge/app/LocalePickerEx$LocaleInfo;->sCollator:Ljava/text/Collator;

    iget-object v10, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    iget-object v11, p1, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->compareTo(Lcom/lge/app/LocalePickerEx$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method
