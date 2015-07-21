.class public Lcom/lge/internal/hardware/fmradio/Conveniences;
.super Ljava/lang/Object;
.source "Conveniences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertArabNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "actualStr"    # Ljava/lang/String;

    .prologue
    .line 27
    const/16 v0, 0x660

    invoke-static {p0, v0}, Lcom/lge/internal/hardware/fmradio/Conveniences;->convertNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertFarsiNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "actualStr"    # Ljava/lang/String;

    .prologue
    .line 23
    const/16 v0, 0x6f0

    invoke-static {p0, v0}, Lcom/lge/internal/hardware/fmradio/Conveniences;->convertNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertNum(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "actualStr"    # Ljava/lang/String;
    .param p1, "checkNum"    # I

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "check":I
    if-nez p0, :cond_0

    .line 33
    const-string v4, ""

    .line 48
    :goto_0
    return-object v4

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [C

    .line 37
    .local v1, "arabstr":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 38
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 39
    if-ltz v2, :cond_1

    const/16 v4, 0x9

    if-gt v2, v4, :cond_1

    .line 40
    new-instance v4, Ljava/lang/Character;

    add-int v5, v2, p1

    int-to-char v5, v5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v1, v3

    .line 37
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    :cond_1
    new-instance v4, Ljava/lang/Character;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v1, v3

    goto :goto_2

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 48
    .local v0, "ArabStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static intentDeepEquals(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 10
    .param p0, "a"    # Landroid/content/Intent;
    .param p1, "b"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 73
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move v8, v7

    .line 125
    :cond_0
    :goto_0
    return v8

    .line 76
    :cond_1
    if-nez p0, :cond_4

    move v9, v7

    :goto_1
    if-nez p1, :cond_5

    move v6, v7

    :goto_2
    if-ne v9, v6, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    move v6, v7

    :goto_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    move v9, v7

    :goto_4
    if-ne v6, v9, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_8

    move v6, v7

    :goto_5
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_9

    move v9, v7

    :goto_6
    if-ne v6, v9, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 95
    .local v1, "ax":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 96
    .local v3, "bx":Landroid/os/Bundle;
    if-nez v1, :cond_a

    if-nez v3, :cond_a

    move v8, v7

    .line 97
    goto :goto_0

    .end local v1    # "ax":Landroid/os/Bundle;
    .end local v3    # "bx":Landroid/os/Bundle;
    :cond_4
    move v9, v8

    .line 76
    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_2

    :cond_6
    move v6, v8

    .line 80
    goto :goto_3

    :cond_7
    move v9, v8

    goto :goto_4

    :cond_8
    move v6, v8

    .line 87
    goto :goto_5

    :cond_9
    move v9, v8

    goto :goto_6

    .line 99
    .restart local v1    # "ax":Landroid/os/Bundle;
    .restart local v3    # "bx":Landroid/os/Bundle;
    :cond_a
    if-nez v1, :cond_b

    move v9, v7

    :goto_7
    if-nez v3, :cond_c

    move v6, v7

    :goto_8
    if-ne v9, v6, :cond_0

    .line 102
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 103
    .local v0, "ak":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 104
    .local v2, "bk":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_d

    if-nez v2, :cond_d

    move v8, v7

    .line 105
    goto :goto_0

    .end local v0    # "ak":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "bk":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    move v9, v8

    .line 99
    goto :goto_7

    :cond_c
    move v6, v8

    goto :goto_8

    .line 107
    .restart local v0    # "ak":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "bk":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    if-nez v0, :cond_10

    move v9, v7

    :goto_9
    if-nez v2, :cond_11

    move v6, v7

    :goto_a
    if-ne v9, v6, :cond_0

    .line 110
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v9

    if-ne v6, v9, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 115
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_f

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 118
    :cond_f
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_12

    move v6, v7

    :goto_b
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_13

    move v9, v7

    :goto_c
    if-ne v6, v9, :cond_0

    .line 121
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto/16 :goto_0

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Ljava/lang/String;
    :cond_10
    move v9, v8

    .line 107
    goto :goto_9

    :cond_11
    move v6, v8

    goto :goto_a

    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_12
    move v6, v8

    .line 118
    goto :goto_b

    :cond_13
    move v9, v8

    goto :goto_c

    .end local v5    # "s":Ljava/lang/String;
    :cond_14
    move v8, v7

    .line 125
    goto/16 :goto_0
.end method

.method public static isR2LLanguage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "defaultlanguage":Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static localizeNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "actualStr"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {p0}, Lcom/lge/internal/hardware/fmradio/Conveniences;->convertArabNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    .end local p0    # "actualStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 55
    .restart local p0    # "actualStr":Ljava/lang/String;
    :cond_1
    const-string v0, "fa"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/lge/internal/hardware/fmradio/Conveniences;->convertFarsiNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
