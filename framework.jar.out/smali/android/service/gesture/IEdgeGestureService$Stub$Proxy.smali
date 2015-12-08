.class Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEdgeGestureService.java"

# interfaces
.implements Landroid/service/gesture/IEdgeGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gesture/IEdgeGestureService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 94
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "android.service.gesture.IEdgeGestureService"

    return-object v0
.end method

.method public registerEdgeGestureActivationListener(Landroid/service/gesture/IEdgeGestureActivationListener;)Landroid/service/gesture/IEdgeGestureHostCallback;
    .locals 6
    .param p1, "listener"    # Landroid/service/gesture/IEdgeGestureActivationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 114
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 115
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 116
    iget-object v3, p0, Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/gesture/IEdgeGestureHostCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gesture/IEdgeGestureHostCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 121
    .local v2, "_result":Landroid/service/gesture/IEdgeGestureHostCallback;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    return-object v2

    .line 115
    .end local v2    # "_result":Landroid/service/gesture/IEdgeGestureHostCallback;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setImeIsActive(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v2, p0, Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    return-void

    .line 158
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setOverwriteImeIsActive(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v2, p0, Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    return-void

    .line 178
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateEdgeGestureActivationListener(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "listener"    # Landroid/os/IBinder;
    .param p2, "positionFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 133
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 135
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v2, p0, Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    return-void

    .line 140
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
