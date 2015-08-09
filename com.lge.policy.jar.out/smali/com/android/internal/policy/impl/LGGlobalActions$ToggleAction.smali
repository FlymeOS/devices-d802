.class abstract Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LGGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .prologue
    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 1091
    iput p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 1092
    iput p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 1093
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mMessageResId:I

    .line 1094
    iput p4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 1095
    iput p5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 1096
    return-void
.end method

.method private isVZWAdminDisabled()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 1174
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 1205
    :goto_0
    return v0

    .line 1178
    :cond_0
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1181
    .local v8, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    .line 1183
    .local v7, "operator":Ljava/lang/String;
    const-string v0, "311480"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v9

    .line 1184
    goto :goto_0

    .line 1186
    :cond_1
    const/4 v3, 0x0

    .line 1188
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and type = \'admin\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1191
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1194
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1195
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1197
    goto :goto_0

    .line 1200
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1201
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v9

    .line 1205
    goto :goto_0
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .param p1, "buttonOn"    # Z

    .prologue
    .line 1216
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 1217
    return-void

    .line 1216
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    .line 1108
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->willCreate()V

    .line 1110
    const v5, 0x1090054

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1113
    .local v4, "v":Landroid/view/View;
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1114
    .local v1, "icon":Landroid/widget/ImageView;
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1115
    .local v2, "messageView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 1117
    .local v0, "enabled":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    if-eq v5, v7, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    if-ne v5, v7, :cond_3

    :cond_0
    const/4 v3, 0x1

    .line 1118
    .local v3, "on":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v3, :cond_4

    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_1
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1123
    :cond_1
    const v5, 0x10202f4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    if-eqz v2, :cond_2

    .line 1125
    if-eqz v3, :cond_5

    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1126
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1127
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1129
    :cond_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1131
    return-object v4

    .end local v3    # "on":Z
    :cond_3
    move v3, v6

    .line 1117
    goto :goto_0

    .line 1119
    .restart local v3    # "on":Z
    :cond_4
    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_1

    .line 1125
    :cond_5
    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1161
    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "operator":Ljava/lang/String;
    const-string v3, "VZW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->isVZWAdminDisabled()Z

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1164
    const-string v1, "LGGlobalActions"

    const-string v3, "Will pass airplane activation because APN2 is Disabled"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1156
    const/4 v0, 0x0

    return v0
.end method

.method public final onPress()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1135
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1136
    const-string v2, "LGGlobalActions"

    const-string v3, "shouldn\'t be able to toggle when in transition"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :goto_0
    return-void

    .line 1141
    :cond_0
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    .local v1, "operator":Ljava/lang/String;
    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->isVZWAdminDisabled()Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1145
    const-string v2, "LGGlobalActions"

    const-string v3, "Will pass airplane activation because APN2 is Disabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    if-eq v2, v3, :cond_2

    .line 1151
    .local v0, "nowOn":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->onToggle(Z)V

    .line 1152
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 1150
    .end local v0    # "nowOn":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 1223
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1104
    return-void
.end method
