.class public Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerService$InternalCallback;,
        Lcom/android/server/pm/PackageInstallerService$Callbacks;,
        Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;,
        Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    }
.end annotation


# static fields
.field private static final ATTR_ABI_OVERRIDE:Ljava/lang/String; = "abiOverride"

.field private static final ATTR_APP_ICON:Ljava/lang/String; = "appIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_APP_LABEL:Ljava/lang/String; = "appLabel"

.field private static final ATTR_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "installerPackageName"

.field private static final ATTR_INSTALLER_UID:Ljava/lang/String; = "installerUid"

.field private static final ATTR_INSTALL_FLAGS:Ljava/lang/String; = "installFlags"

.field private static final ATTR_INSTALL_LOCATION:Ljava/lang/String; = "installLocation"

.field private static final ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final ATTR_ORIGINATING_URI:Ljava/lang/String; = "originatingUri"

.field private static final ATTR_PREPARED:Ljava/lang/String; = "prepared"

.field private static final ATTR_REFERRER_URI:Ljava/lang/String; = "referrerUri"

.field private static final ATTR_SEALED:Ljava/lang/String; = "sealed"

.field private static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final ATTR_SESSION_STAGE_CID:Ljava/lang/String; = "sessionStageCid"

.field private static final ATTR_SESSION_STAGE_DIR:Ljava/lang/String; = "sessionStageDir"

.field private static final ATTR_SIZE_BYTES:Ljava/lang/String; = "sizeBytes"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final LOGD:Z = false

.field private static final MAX_ACTIVE_SESSIONS:J = 0x400L

.field private static final MAX_AGE_MILLIS:J = 0xf731400L

.field private static final MAX_HISTORICAL_SESSIONS:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final TAG_SESSION:Ljava/lang/String; = "session"

.field private static final TAG_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final sStageFilter:Ljava/io/FilenameFilter;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSessions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallHandler:Landroid/os/Handler;

.field private final mInstallThread:Landroid/os/HandlerThread;

.field private final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private final mLegacySessions:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSessions"
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRandom:Ljava/util/Random;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSessions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionsDir:Ljava/io/File;

.field private final mSessionsFile:Landroid/util/AtomicFile;

.field private final mStagingDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "stagingDir"    # Ljava/io/File;

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>()V

    .line 165
    new-instance v7, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-direct {v7, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 171
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    .line 173
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 177
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    .line 181
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 192
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 194
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v8, "appops"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager;

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 196
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingDir:Ljava/io/File;

    .line 198
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "PackageInstaller"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 199
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance v7, Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 203
    new-instance v7, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 205
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "install_sessions.xml"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    .line 207
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "install_sessions"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 208
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 210
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v8

    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->readSessionsLocked()V

    .line 213
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingDir:Ljava/io/File;

    sget-object v9, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v7, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v6

    .line 215
    .local v6, "unclaimedStages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    .line 219
    .local v5, "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 220
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 221
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v7, v3, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 222
    iget v7, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 227
    .local v4, "stage":Ljava/io/File;
    const-string v7, "PackageInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting orphan stage "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 229
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 231
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 239
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "stage":Ljava/io/File;
    .end local v5    # "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    .end local v6    # "unclaimedStages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 235
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v5    # "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    .restart local v6    # "unclaimedStages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 236
    .local v2, "icon":Ljava/io/File;
    const-string v7, "PackageInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting orphan icon "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 239
    .end local v2    # "icon":Ljava/io/File;
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private allocateSessionIdLocked()I
    .locals 5

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 667
    .local v0, "n":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    const v4, 0x7ffffffe

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 668
    .local v2, "sessionId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 670
    return v2

    .line 672
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "n":I
    .local v1, "n":I
    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    .line 674
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to allocate session ID"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v0, v1

    .end local v1    # "n":I
    .restart local v0    # "n":I
    goto :goto_0
.end method

.method private buildAppIconFile(I)Ljava/io/File;
    .locals 4
    .param p1, "sessionId"    # I

    .prologue
    .line 477
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_icon."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildExternalStageCid(I)Ljava/lang/String;
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smdl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildInternalStageDir(I)Ljava/io/File;
    .locals 4
    .param p1, "sessionId"    # I

    .prologue
    .line 678
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vmdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 28
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 503
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "createSession"

    move/from16 v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "no_install_apps"

    move/from16 v0, p3

    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "User restriction prevents installing"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 509
    :cond_0
    const/16 v2, 0x7d0

    if-eq v3, v2, :cond_1

    if-nez v3, :cond_5

    .line 510
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p1

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 521
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager;

    .line 524
    .local v21, "am":Landroid/app/ActivityManager;
    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v23

    .line 525
    .local v23, "iconSize":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v5, v23, 0x2

    if-gt v2, v5, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v5, v23, 0x2

    if-le v2, v5, :cond_3

    .line 527
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-static {v2, v0, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 532
    .end local v21    # "am":Landroid/app/ActivityManager;
    .end local v23    # "iconSize":I
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    .line 536
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 538
    .local v24, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object/from16 v0, p1

    iget v10, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static/range {v5 .. v10}, Lcom/android/internal/content/PackageHelper;->resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I

    move-result v26

    .line 542
    .local v26, "resolved":I
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_6

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallFlagsInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 550
    :goto_1
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 560
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v20

    .line 561
    .local v20, "activeCount":I
    move/from16 v0, v20

    int-to-long v6, v0

    const-wide/16 v10, 0x400

    cmp-long v2, v6, v10

    if-ltz v2, :cond_9

    .line 562
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many active sessions for UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    .end local v20    # "activeCount":I
    :catchall_0
    move-exception v2

    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 513
    .end local v24    # "ident":J
    .end local v26    # "resolved":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 515
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, -0x21

    move-object/from16 v0, p1

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 516
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, -0x41

    move-object/from16 v0, p1

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 517
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p1

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_0

    .line 544
    .restart local v24    # "ident":J
    .restart local v26    # "resolved":I
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_7

    .line 545
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallFlagsExternal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 550
    .end local v26    # "resolved":I
    :catchall_1
    move-exception v2

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 547
    .restart local v26    # "resolved":I
    :cond_7
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No storage with enough free space; res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 553
    .end local v24    # "ident":J
    .end local v26    # "resolved":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid install mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 565
    .restart local v20    # "activeCount":I
    .restart local v24    # "ident":J
    .restart local v26    # "resolved":I
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v22

    .line 566
    .local v22, "historicalCount":I
    move/from16 v0, v22

    int-to-long v6, v0

    const-wide/32 v10, 0x100000

    cmp-long v2, v6, v10

    if-ltz v2, :cond_a

    .line 567
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many historical sessions for UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 572
    .local v14, "createdMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v9

    .line 575
    .local v9, "sessionId":I
    const/16 v16, 0x0

    .line 576
    .local v16, "stageDir":Ljava/io/File;
    const/16 v17, 0x0

    .line 577
    .local v17, "stageCid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_b

    .line 578
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/PackageInstallerService;->buildInternalStageDir(I)Ljava/io/File;

    move-result-object v16

    .line 583
    :goto_2
    new-instance v4, Lcom/android/server/pm/PackageInstallerSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v10, p3

    move-object/from16 v11, p2

    move v12, v3

    move-object/from16 v13, p1

    invoke-direct/range {v4 .. v19}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V

    .line 586
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    monitor-exit v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v5, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    # invokes: Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionCreated(II)V
    invoke-static {v2, v5, v6}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$200(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 590
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    .line 591
    return v9

    .line 580
    .end local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/PackageInstallerService;->buildExternalStageCid(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v17

    goto :goto_2
.end method

.method private static getSessionCount(Landroid/util/SparseArray;I)I
    .locals 5
    .param p1, "installerUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/PackageInstallerSession;>;"
    const/4 v0, 0x0

    .line 795
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 796
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 797
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 798
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    if-ne v4, p1, :cond_0

    .line 799
    add-int/lit8 v0, v0, 0x1

    .line 796
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 802
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    return v0
.end method

.method private isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    const/4 v1, 0x1

    .line 806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 807
    .local v0, "callingUid":I
    if-nez v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    if-eq v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 272
    const-string v5, "vmdl"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ".tmp"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 273
    .local v1, "isFile":Z
    :goto_0
    const-string v5, "smdl"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ".tmp"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 274
    .local v0, "isContainer":Z
    :goto_1
    const-string v5, "smdl2tmp"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 275
    .local v2, "isLegacyContainer":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v0    # "isContainer":Z
    .end local v1    # "isFile":Z
    .end local v2    # "isLegacyContainer":Z
    :cond_2
    move v1, v4

    .line 272
    goto :goto_0

    .restart local v1    # "isFile":Z
    :cond_3
    move v0, v4

    .line 273
    goto :goto_1
.end method

.method private openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 655
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 656
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 658
    .restart local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 659
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method static prepareExternalStageCid(Ljava/lang/String;J)V
    .locals 7
    .param p0, "stageCid"    # Ljava/lang/String;
    .param p1, "sizeBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    move-wide v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/PackageHelper;->createSdDir(JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create session cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    return-void
.end method

.method static prepareInternalStageDir(Ljava/io/File;)V
    .locals 4
    .param p0, "stageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session dir already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ed

    invoke-static {v1, v2}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 688
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ed

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 695
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restorecon session dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare session dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 697
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    return-void
.end method

.method private readSessionLocked(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/PackageInstallerSession;
    .locals 20
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const-string v2, "sessionId"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 359
    .local v7, "sessionId":I
    const-string v2, "userId"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 360
    .local v8, "userId":I
    const-string v2, "installerPackageName"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 361
    .local v9, "installerPackageName":Ljava/lang/String;
    const-string v2, "installerUid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v9, v8}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 363
    .local v10, "installerUid":I
    const-string v2, "createdMillis"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 364
    .local v12, "createdMillis":J
    const-string v2, "sessionStageDir"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 365
    .local v19, "stageDirRaw":Ljava/lang/String;
    if-eqz v19, :cond_1

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v14, "stageDir":Ljava/io/File;
    :goto_0
    const-string v2, "sessionStageCid"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 367
    .local v15, "stageCid":Ljava/lang/String;
    const-string v2, "prepared"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v16

    .line 368
    .local v16, "prepared":Z
    const-string v2, "sealed"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 370
    .local v17, "sealed":Z
    new-instance v11, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, -0x1

    invoke-direct {v11, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 372
    .local v11, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const-string v2, "mode"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 373
    const-string v2, "installFlags"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 374
    const-string v2, "installLocation"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 375
    const-string v2, "sizeBytes"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 376
    const-string v2, "appPackageName"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 377
    const-string v2, "appIcon"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 378
    const-string v2, "appLabel"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 379
    const-string v2, "originatingUri"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 380
    const-string v2, "referrerUri"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 381
    const-string v2, "abiOverride"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 383
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v18

    .line 384
    .local v18, "appIconFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 386
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 389
    :cond_0
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct/range {v2 .. v17}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V

    return-object v2

    .line 365
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v14    # "stageDir":Ljava/io/File;
    .end local v15    # "stageCid":Ljava/lang/String;
    .end local v16    # "prepared":Z
    .end local v17    # "sealed":Z
    .end local v18    # "appIconFile":Ljava/io/File;
    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private readSessionsLocked()V
    .locals 14

    .prologue
    .line 305
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 307
    const/4 v3, 0x0

    .line 309
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 310
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 311
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 314
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_4

    .line 315
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 316
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "tag":Ljava/lang/String;
    const-string v9, "session"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 318
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->readSessionLocked(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v5

    .line 319
    .local v5, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v5, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v0, v10, v12

    .line 322
    .local v0, "age":J
    const-wide/32 v10, 0xf731400

    cmp-long v9, v0, v10

    if-ltz v9, :cond_1

    .line 323
    const-string v9, "PackageInstaller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Abandoning old session first created at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v5, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v8, 0x0

    .line 335
    .local v8, "valid":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 336
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v10, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 346
    .end local v0    # "age":J
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "valid":Z
    :catch_0
    move-exception v9

    .line 353
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 355
    :goto_2
    return-void

    .line 326
    .restart local v0    # "age":J
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_1
    :try_start_1
    iget-object v9, v5, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v9, :cond_2

    iget-object v9, v5, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 328
    const-string v9, "PackageInstaller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Abandoning internal session with missing stage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v8, 0x0

    .restart local v8    # "valid":Z
    goto :goto_1

    .line 332
    .end local v8    # "valid":Z
    :cond_2
    const/4 v8, 0x1

    .restart local v8    # "valid":Z
    goto :goto_1

    .line 341
    :cond_3
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    iget v10, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 348
    .end local v0    # "age":J
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "valid":Z
    :catch_1
    move-exception v2

    .line 349
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v9, "PackageInstaller"

    const-string v10, "Failed reading install sessions"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 350
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_2
    move-exception v2

    .line 351
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v9, "PackageInstaller"

    const-string v10, "Failed reading install sessions"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9
.end method

.method private writeSessionLocked(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 11
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 423
    iget-object v4, p2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 425
    .local v4, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const-string v5, "session"

    invoke-interface {p1, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const-string v5, "sessionId"

    iget v6, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 428
    const-string v5, "userId"

    iget v6, p2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 429
    const-string v5, "installerPackageName"

    iget-object v6, p2, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v5, "installerUid"

    iget v6, p2, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 432
    const-string v5, "createdMillis"

    iget-wide v6, p2, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {p1, v5, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 433
    iget-object v5, p2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v5, :cond_0

    .line 434
    const-string v5, "sessionStageDir"

    iget-object v6, p2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    iget-object v5, p2, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 438
    const-string v5, "sessionStageCid"

    iget-object v6, p2, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_1
    const-string v5, "prepared"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->isPrepared()Z

    move-result v6

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 441
    const-string v5, "sealed"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v6

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 443
    const-string v5, "mode"

    iget v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 444
    const-string v5, "installFlags"

    iget v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 445
    const-string v5, "installLocation"

    iget v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 446
    const-string v5, "sizeBytes"

    iget-wide v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {p1, v5, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 447
    const-string v5, "appPackageName"

    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v5, "appLabel"

    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v5, "originatingUri"

    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 450
    const-string v5, "referrerUri"

    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 451
    const-string v5, "abiOverride"

    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget v5, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v0

    .line 455
    .local v0, "appIconFile":Ljava/io/File;
    iget-object v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 456
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 473
    :cond_2
    :goto_0
    const-string v5, "session"

    invoke-interface {p1, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    return-void

    .line 457
    :cond_3
    iget-object v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iget-wide v8, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 460
    const/4 v2, 0x0

    .line 462
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    .line 470
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_0

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string v5, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 464
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private writeSessionsAsync()V
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerService$2;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    return-void
.end method

.method private writeSessionsLocked()V
    .locals 8

    .prologue
    .line 397
    const/4 v1, 0x0

    .line 399
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 401
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 402
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 403
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 404
    const/4 v6, 0x0

    const-string v7, "sessions"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 406
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 407
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 408
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/PackageInstallerService;->writeSessionLocked(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageInstallerSession;)V

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    const/4 v6, 0x0

    const-string v7, "sessions"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 413
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "size":I
    :cond_1
    :goto_1
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 416
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method


# virtual methods
.method public abandonSession(I)V
    .locals 5
    .param p1, "sessionId"    # I

    .prologue
    .line 634
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 636
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 637
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 640
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 639
    .restart local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 640
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    return-void
.end method

.method public allocateExternalStageCidLegacy()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 296
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v0

    .line 297
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smdl"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 299
    .end local v0    # "sessionId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allocateInternalStageDirLegacy()Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v4

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    .line 283
    .local v1, "sessionId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 284
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->buildInternalStageDir(I)Ljava/io/File;

    move-result-object v2

    .line 285
    .local v2, "stageDir":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareInternalStageDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    monitor-exit v4

    return-object v2

    .line 287
    .end local v1    # "sessionId":I
    .end local v2    # "stageDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 290
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 2
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 494
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 987
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v4

    .line 988
    :try_start_0
    const-string v3, "Active install sessions:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 990
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 991
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 992
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 993
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 994
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 997
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 999
    const-string v3, "Historical install sessions:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1001
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1002
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1003
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 1004
    .restart local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1005
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1002
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1007
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1008
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1010
    const-string v3, "Legacy install sessions:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1012
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1014
    monitor-exit v4

    .line 1015
    return-void

    .line 1014
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getAllSessions"

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 722
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 724
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageInstallerSession;

    .line 726
    .local v8, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v0, v8, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v0, p1, :cond_0

    .line 727
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 730
    .end local v8    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 730
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 9
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getMySessions"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 739
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 741
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageInstallerSession;

    .line 743
    .local v8, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v0, p2, :cond_0

    .line 745
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 748
    .end local v8    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 748
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 3
    .param p1, "sessionId"    # I

    .prologue
    .line 712
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 714
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 715
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSecureContainersAvailable()V
    .locals 11

    .prologue
    .line 243
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v8

    .line 244
    :try_start_0
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 245
    .local v6, "unclaimed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 246
    .local v1, "cid":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 247
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "cid":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 253
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 254
    .local v5, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v1, v5, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 256
    .restart local v1    # "cid":Ljava/lang/String;
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 258
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x3e8

    invoke-static {v1, v7, v9}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 252
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    .end local v1    # "cid":Ljava/lang/String;
    .end local v5    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .restart local v1    # "cid":Ljava/lang/String;
    const-string v7, "PackageInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting orphan container "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {v1}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_2

    .line 268
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cid":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "len$":I
    .end local v6    # "unclaimed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "len$":I
    .restart local v6    # "unclaimed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    return-void
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 646
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .locals 6
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userId"    # I

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "registerCallback"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;I)V

    .line 785
    return-void
.end method

.method public setPermissionsResult(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

    .line 778
    monitor-exit v1

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninstall(Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 754
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "uninstall"

    move v2, p4

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 756
    new-instance v6, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, p3, p1}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 758
    .local v6, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p4, p2}, Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 770
    :goto_0
    return-void

    .line 765
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 767
    const-string v0, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 768
    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    .line 790
    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 596
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v4

    .line 597
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 598
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 599
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caller has no access to session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 603
    .restart local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    if-eqz p2, :cond_3

    .line 604
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 606
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    .line 607
    .local v1, "iconSize":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v5, v1, 0x2

    if-gt v3, v5, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v5, v1, 0x2

    if-le v3, v5, :cond_3

    .line 609
    :cond_2
    const/4 v3, 0x1

    invoke-static {p2, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 613
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "iconSize":I
    :cond_3
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 614
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 616
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 617
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    return-void
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/String;

    .prologue
    .line 622
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 624
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 625
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 627
    .restart local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 628
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 629
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    return-void
.end method
