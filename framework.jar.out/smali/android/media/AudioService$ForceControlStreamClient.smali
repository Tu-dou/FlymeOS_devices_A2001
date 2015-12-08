.class Landroid/media/AudioService$ForceControlStreamClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceControlStreamClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 4
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1597
    iput-object p1, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1598
    if-eqz p2, :cond_0

    .line 1600
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/media/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 1608
    return-void

    .line 1601
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForceControlStreamClient() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const/4 p2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1611
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$900(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1612
    :try_start_0
    const-string v0, "AudioService"

    const-string v2, "SCO client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;
    invoke-static {v0}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1614
    const-string v0, "AudioService"

    const-string/jumbo v2, "unregistered control stream client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :goto_0
    monitor-exit v1

    .line 1620
    return-void

    .line 1616
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    # setter for: Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$1002(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;

    .line 1617
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    const/4 v2, -0x1

    # setter for: Landroid/media/AudioService;->mVolumeControlStream:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$1102(Landroid/media/AudioService;I)I

    goto :goto_0

    .line 1619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 1623
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1625
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 1627
    :cond_0
    return-void
.end method
