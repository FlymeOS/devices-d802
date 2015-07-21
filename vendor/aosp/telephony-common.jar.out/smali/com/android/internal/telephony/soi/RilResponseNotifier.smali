.class public Lcom/android/internal/telephony/soi/RilResponseNotifier;
.super Ljava/lang/Object;
.source "RilResponseNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/IRilResponseNotifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "RilResponseNotifier"


# instance fields
.field private mRegistrantLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/RegistrantList;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Registrant;",
            ">;"
        }
    .end annotation
.end field

.field private rilBroker:Lcom/android/internal/telephony/soi/IRilResponseBroker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/soi/IRilResponseBroker;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/soi/IRilResponseBroker;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->mRegistrants:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->mRegistrantLists:Ljava/util/HashMap;

    .line 27
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->rilBroker:Lcom/android/internal/telephony/soi/IRilResponseBroker;

    .line 28
    return-void
.end method


# virtual methods
.method public notify(ILandroid/os/AsyncResult;)V
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 47
    iget-object v2, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->mRegistrants:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Registrant;

    .line 48
    .local v0, "reg":Landroid/os/Registrant;
    if-nez v0, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->mRegistrants:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->rilBroker:Lcom/android/internal/telephony/soi/IRilResponseBroker;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/soi/IRilResponseBroker;->getRegistrant(I)Landroid/os/Registrant;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v2, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->mRegistrants:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "reg":Landroid/os/Registrant;
    check-cast v0, Landroid/os/Registrant;

    .line 54
    .restart local v0    # "reg":Landroid/os/Registrant;
    :cond_0
    if-nez v0, :cond_3

    .line 55
    const-string v2, "RilResponseNotifier"

    const-string v3, "notify reg null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0    # "reg":Landroid/os/Registrant;
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->mRegistrantLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RegistrantList;

    .line 35
    .local v1, "regList":Landroid/os/RegistrantList;
    if-nez v1, :cond_1

    .line 37
    iget-object v2, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->mRegistrantLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->rilBroker:Lcom/android/internal/telephony/soi/IRilResponseBroker;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/soi/IRilResponseBroker;->getRegistrantList(I)Landroid/os/RegistrantList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v2, p0, Lcom/android/internal/telephony/soi/RilResponseNotifier;->mRegistrantLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "regList":Landroid/os/RegistrantList;
    check-cast v1, Landroid/os/RegistrantList;

    .line 40
    .restart local v1    # "regList":Landroid/os/RegistrantList;
    :cond_1
    if-nez v1, :cond_2

    .line 41
    const-string v2, "RilResponseNotifier"

    const-string v3, "notify regList null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v1, p2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 58
    .end local v1    # "regList":Landroid/os/RegistrantList;
    .restart local v0    # "reg":Landroid/os/Registrant;
    :cond_3
    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x40d
        :pswitch_0
    .end packed-switch
.end method
