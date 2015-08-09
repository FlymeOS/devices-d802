.class Lcom/android/internal/policy/impl/LGGlobalActions$1;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;->initLGGlobalActionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    const-class v4, Landroid/os/BatteryManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 279
    .local v0, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    const/4 v2, 0x0

    .line 282
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/persist-lg/chargerlogo/noautoboot"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x31

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 284
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 285
    const-string v4, "LGGlobalActions"

    const-string v5, "set noautoboot 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    if-eqz v3, :cond_0

    .line 291
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 298
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$000(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 299
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 300
    return-void

    .line 292
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "LGGlobalActions"

    const-string v5, "Exception when closing noautoboot sys node in checkNoAutoBoot()"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "LGGlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to set noautoboot 1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    if-eqz v2, :cond_0

    .line 291
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 292
    :catch_2
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "LGGlobalActions"

    const-string v5, "Exception when closing noautoboot sys node in checkNoAutoBoot()"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 289
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 291
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 294
    :cond_1
    :goto_3
    throw v4

    .line 292
    :catch_3
    move-exception v1

    .line 293
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "LGGlobalActions"

    const-string v6, "Exception when closing noautoboot sys node in checkNoAutoBoot()"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 289
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 286
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
