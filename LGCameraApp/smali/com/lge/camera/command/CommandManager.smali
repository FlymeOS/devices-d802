.class public Lcom/lge/camera/command/CommandManager;
.super Ljava/lang/Object;
.source "CommandManager.java"


# instance fields
.field private beRemovedAll:Z

.field private mGet:Lcom/lge/camera/ControllerFunction;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/camera/command/Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    .line 25
    iput-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    .line 29
    iput-object p1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 30
    return-void
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 97
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 98
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/command/Command;->execute()V

    goto :goto_0
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 107
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 108
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {v0, p2}, Lcom/lge/camera/command/Command;->execute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 117
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 118
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/lge/camera/command/Command;->execute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doCommandDelayed(Ljava/lang/String;J)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 159
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;JJ)V

    .line 160
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "delay"    # J

    .prologue
    .line 176
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 177
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 77
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 78
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/command/Command;->executeNoneParameter()V

    goto :goto_0
.end method

.method public doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 87
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 88
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {v0, p2}, Lcom/lge/camera/command/Command;->executeNoneParameter(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doCommandUi(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 127
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v1, :cond_1

    .line 128
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 138
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {v0, p2}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public doCommandUi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 149
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v1, :cond_1

    .line 150
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    const/4 v3, 0x1

    .line 163
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 164
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v0, p4, p5}, Lcom/lge/camera/command/Command;->setRepeat(J)V

    .line 170
    invoke-virtual {v0, v3}, Lcom/lge/camera/command/Command;->setPosted(Z)V

    .line 171
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "delay"    # J
    .param p5, "period"    # J

    .prologue
    const/4 v3, 0x1

    .line 180
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 181
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {v0, p2}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0, p5, p6}, Lcom/lge/camera/command/Command;->setRepeat(J)V

    .line 187
    invoke-virtual {v0, v3}, Lcom/lge/camera/command/Command;->setPosted(Z)V

    .line 188
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public findScheduledCommand(Ljava/lang/String;)Z
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "c":Lcom/lge/camera/command/Command;
    iget-object v2, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/lge/camera/command/Command;
    check-cast v0, Lcom/lge/camera/command/Command;

    .line 233
    .restart local v0    # "c":Lcom/lge/camera/command/Command;
    if-nez v0, :cond_1

    .line 234
    const-string v2, "CameraApp"

    const-string v3, "command is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 237
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/command/Command;->getPosted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "command":Lcom/lge/camera/command/Command;
    iget-object v5, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    iget-object v5, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "command":Lcom/lge/camera/command/Command;
    check-cast v2, Lcom/lge/camera/command/Command;

    .line 43
    .restart local v2    # "command":Lcom/lge/camera/command/Command;
    if-nez v2, :cond_2

    .line 44
    const-string v5, "CameraApp"

    const-string v7, "getCommand error: command is null"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 68
    :goto_0
    return-object v5

    .line 49
    :cond_0
    iget-boolean v5, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    if-eqz v5, :cond_1

    .line 50
    const-string v5, "CameraApp"

    const-string v7, "all commands are removing now...so return!"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 56
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/lge/camera/ControllerFunction;

    aput-object v8, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 58
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    aput-object v8, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/lge/camera/command/Command;

    move-object v2, v0

    .line 59
    iget-object v5, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    invoke-virtual {v2}, Lcom/lge/camera/command/Command;->resetStartTime()V

    move-object v5, v2

    .line 68
    goto :goto_0

    .line 60
    :catch_0
    move-exception v4

    .line 61
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCommand error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 63
    goto :goto_0
.end method

.method public getCommandHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/camera/command/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public removeScheduledAllCommand()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 203
    iput-boolean v6, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    .line 205
    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    .local v1, "cmd":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 207
    .local v0, "c":Lcom/lge/camera/command/Command;
    const/4 v2, 0x0

    .line 208
    .local v2, "key":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 209
    .end local v2    # "key":Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 211
    .restart local v2    # "key":Ljava/lang/Object;
    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 212
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2

    move-object v0, v3

    .line 213
    check-cast v0, Lcom/lge/camera/command/Command;

    .line 214
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    if-nez v4, :cond_1

    .line 215
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "command:%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iput-boolean v7, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    .line 226
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    return-void

    .line 219
    .restart local v2    # "key":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, v7}, Lcom/lge/camera/command/Command;->setPosted(Z)V

    .line 220
    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 222
    :cond_2
    const-string v4, "CameraApp"

    const-string v5, " value is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    iput-boolean v7, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    goto :goto_1
.end method

.method public removeScheduledCommand(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 194
    .local v0, "c":Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {v0, v4}, Lcom/lge/camera/command/Command;->setPosted(Z)V

    .line 199
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    .line 37
    :cond_0
    return-void
.end method
