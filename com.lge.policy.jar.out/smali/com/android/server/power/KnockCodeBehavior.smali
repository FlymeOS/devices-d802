.class public interface abstract Lcom/android/server/power/KnockCodeBehavior;
.super Ljava/lang/Object;
.source "KnockCodeBehavior.java"


# virtual methods
.method public abstract checkPassword(Ljava/lang/String;)Z
.end method

.method public abstract getMatchedUsers()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract launch(I)I
.end method
