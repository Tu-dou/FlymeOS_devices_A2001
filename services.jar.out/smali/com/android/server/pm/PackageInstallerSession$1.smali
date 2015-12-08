.class Lcom/android/server/pm/PackageInstallerSession$1;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 167
    const/4 v2, 0x1

    .line 168
    .local v2, "returnCode":I
    const/4 v0, 0x0

    .line 170
    .local v0, "completeMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->access$000(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 171
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 172
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/IPackageInstallObserver2;

    # setter for: Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;
    invoke-static {v5, v3}, Lcom/android/server/pm/PackageInstallerSession;->access$102(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->commitLocked()V
    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    if-eq v2, v7, :cond_1

    .line 185
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, v2, v0, v4}, Lcom/android/server/pm/PackageInstallerSession;->access$400(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 187
    :cond_1
    return v7

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_3
    iget v2, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 179
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v3, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Commit of session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V
    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->access$300(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_0

    .line 183
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method
