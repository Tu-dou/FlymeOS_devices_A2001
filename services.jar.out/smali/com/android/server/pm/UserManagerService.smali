.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    }
.end annotation


# static fields
.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FAILED_ATTEMPTS:Ljava/lang/String; = "failedAttempts"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_LAST_RETRY_MS:Ljava/lang/String; = "lastAttemptMs"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PIN_HASH:Ljava/lang/String; = "pinHash"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_SALT:Ljava/lang/String; = "salt"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field private static final BACKOFF_INC_INTERVAL:I = 0x5

.field private static final BACKOFF_TIMES:[I

.field private static final DBG:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MAX_MANAGED_PROFILES:I = 0x1

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_VERSION:I = 0x5

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBaseUserPath:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mGuestRestrictions:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private final mRestrictionsPinStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/UserManagerService$RestrictionsPinState;",
            ">;"
        }
    .end annotation
.end field

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 136
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->BACKOFF_TIMES:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x7530
        0xea60
        0x493e0
        0x1b7740
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .prologue
    .line 199
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 202
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "baseUserPath"    # Ljava/io/File;

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 150
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 151
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    .line 152
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 161
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    .line 169
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 173
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 210
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 211
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 212
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    .line 213
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 214
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 215
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    .line 216
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    :try_start_1
    new-instance v5, Ljava/io/File;

    sget-object v8, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 218
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 220
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v8, "0"

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v4, "userZeroDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 222
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserPath:Ljava/io/File;

    .line 223
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x1fd

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v5, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 227
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v9, "userlist.xml"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 228
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 229
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLocked()V

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 233
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 234
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_0

    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 239
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 240
    .restart local v3    # "ui":Landroid/content/pm/UserInfo;
    const-string v5, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing partially created user #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_3
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 245
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    return-void

    .line 245
    .end local v1    # "i":I
    .end local v2    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userZeroDir":Ljava/io/File;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 246
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 189
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 586
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :cond_0
    return-void
.end method

.method private cleanAppRestrictions(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 1128
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1129
    :try_start_0
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 1130
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1131
    .local v3, "files":[Ljava/lang/String;
    if-nez v3, :cond_0

    monitor-exit v8

    .line 1141
    :goto_0
    return-void

    .line 1132
    :cond_0
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 1133
    .local v2, "fileName":Ljava/lang/String;
    const-string v7, "res_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1134
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1135
    .local v6, "resFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1136
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1132
    .end local v6    # "resFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1140
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_2
    monitor-exit v8

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1147
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1148
    :try_start_0
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1149
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1150
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1153
    :cond_0
    monitor-exit v3

    .line 1154
    return-void

    .line 1153
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "resFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 20
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    .line 1173
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "no_add_user"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1175
    const-string v15, "UserManagerService"

    const-string v16, "Cannot add user. DISALLOW_ADD_USER is enabled."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v13, 0x0

    .line 1240
    :goto_0
    return-object v13

    .line 1178
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1179
    const/4 v13, 0x0

    goto :goto_0

    .line 1181
    :cond_1
    and-int/lit8 v15, p2, 0x4

    if-eqz v15, :cond_2

    const/4 v3, 0x1

    .line 1182
    .local v3, "isGuest":Z
    :goto_1
    and-int/lit8 v15, p2, 0x20

    if-eqz v15, :cond_3

    const/4 v6, 0x1

    .line 1183
    .local v6, "isManagedProfile":Z
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1184
    .local v4, "ident":J
    const/4 v12, 0x0

    .line 1186
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1187
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1188
    const/4 v7, 0x0

    .line 1189
    .local v7, "parent":Landroid/content/pm/UserInfo;
    const/16 v15, -0x2710

    move/from16 v0, p3

    if-eq v0, v15, :cond_4

    .line 1190
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 1191
    if-nez v7, :cond_4

    const/4 v13, 0x0

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1238
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1181
    .end local v3    # "isGuest":Z
    .end local v4    # "ident":J
    .end local v6    # "isManagedProfile":Z
    .end local v7    # "parent":Landroid/content/pm/UserInfo;
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1182
    .restart local v3    # "isGuest":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 1193
    .restart local v4    # "ident":J
    .restart local v6    # "isManagedProfile":Z
    .restart local v7    # "parent":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles()Z

    move-result v15

    if-nez v15, :cond_5

    .line 1194
    const/4 v13, 0x0

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1238
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1196
    :cond_5
    if-nez v3, :cond_6

    if-nez v6, :cond_6

    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReachedLocked()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1199
    const/4 v13, 0x0

    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1238
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1202
    :cond_6
    if-eqz v3, :cond_7

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 1203
    const/4 v13, 0x0

    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1238
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1205
    :cond_7
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableIdLocked()I

    move-result v11

    .line 1206
    .local v11, "userId":I
    new-instance v13, Landroid/content/pm/UserInfo;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v13, v11, v0, v15, v1}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1207
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_b
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1208
    .local v14, "userPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v18, v15, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v15, v13, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1210
    .local v8, "now":J
    const-wide v18, 0xdc46c32800L

    cmp-long v15, v8, v18

    if-lez v15, :cond_b

    .end local v8    # "now":J
    :goto_3
    iput-wide v8, v13, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1211
    const/4 v15, 0x1

    iput-boolean v15, v13, Landroid/content/pm/UserInfo;->partial:Z

    .line 1212
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v15}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 1213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v15, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1214
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 1215
    if-eqz v7, :cond_9

    .line 1216
    iget v15, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_8

    .line 1217
    iget v15, v7, Landroid/content/pm/UserInfo;->id:I

    iput v15, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1218
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1220
    :cond_8
    iget v15, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v15, v13, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1222
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v15, v11, v14}, Lcom/android/server/pm/PackageManagerService;->createNewUserLILPw(ILjava/io/File;)V

    .line 1224
    const/4 v15, 0x0

    iput-boolean v15, v13, Landroid/content/pm/UserInfo;->partial:Z

    .line 1225
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1226
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 1227
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1228
    .local v10, "restrictions":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v15, v11, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1229
    monitor-exit v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1230
    :try_start_c
    monitor-exit v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1231
    if-eqz v13, :cond_a

    .line 1232
    :try_start_d
    new-instance v2, Landroid/content/Intent;

    const-string v15, "android.intent.action.USER_ADDED"

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v2, "addedIntent":Landroid/content/Intent;
    const-string v15, "android.intent.extra.user_handle"

    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v17, "android.permission.MANAGE_USERS"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v2, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1238
    .end local v2    # "addedIntent":Landroid/content/Intent;
    :cond_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1210
    .end local v10    # "restrictions":Landroid/os/Bundle;
    .restart local v8    # "now":J
    :cond_b
    const-wide/16 v8, 0x0

    goto :goto_3

    .line 1229
    .end local v8    # "now":J
    .end local v11    # "userId":I
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v14    # "userPath":Ljava/io/File;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v15

    :goto_4
    :try_start_e
    monitor-exit v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v15

    .line 1230
    .end local v7    # "parent":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v15

    :goto_5
    monitor-exit v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1238
    :catchall_2
    move-exception v15

    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15

    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v7    # "parent":Landroid/content/pm/UserInfo;
    .restart local v10    # "restrictions":Landroid/os/Bundle;
    .restart local v11    # "userId":I
    .restart local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v14    # "userPath":Ljava/io/File;
    :catchall_3
    move-exception v15

    move-object v12, v13

    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_6

    .line 1230
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4
    move-exception v15

    move-object v12, v13

    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_5

    .line 1229
    .end local v10    # "restrictions":Landroid/os/Bundle;
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v14    # "userPath":Ljava/io/File;
    .restart local v13    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_5
    move-exception v15

    move-object v12, v13

    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_4
.end method

.method private fallbackToSingleUserLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 757
    new-instance v0, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10406fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x13

    invoke-direct {v0, v5, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 760
    .local v0, "primary":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 761
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 762
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 764
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 765
    .local v1, "restrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 767
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 768
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 770
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 771
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 772
    return-void
.end method

.method private findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;
    .locals 5

    .prologue
    .line 1263
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1264
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1265
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1266
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1270
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :goto_1
    return-object v2

    .line 1264
    .restart local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1270
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getAliveUsersExcludingGuestsCountLocked()I
    .locals 6

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "aliveUserCount":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 566
    .local v2, "totalUserCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 567
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 568
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_0

    .line 570
    add-int/lit8 v0, v0, 0x1

    .line 566
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .prologue
    .line 180
    const-class v1, Lcom/android/server/pm/UserManagerService;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-object v0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v1

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNextAvailableIdLocked()I
    .locals 3

    .prologue
    .line 1866
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1867
    const/16 v0, 0xa

    .line 1868
    .local v0, "i":I
    :goto_0
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 1869
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1874
    :cond_0
    monitor-exit v2

    return v0

    .line 1872
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1875
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getProfilesLocked(IZ)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 298
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_1

    .line 316
    :cond_0
    return-object v3

    .line 303
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 304
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 305
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 303
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 314
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getRemainingTimeForPinAttempt(Lcom/android/server/pm/UserManagerService$RestrictionsPinState;)I
    .locals 6
    .param p1, "pinState"    # Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .prologue
    .line 1563
    iget v2, p1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    div-int/lit8 v2, v2, 0x5

    sget-object v3, Lcom/android/server/pm/UserManagerService;->BACKOFF_TIMES:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1565
    .local v0, "backoffIndex":I
    iget v2, p1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/pm/UserManagerService;->BACKOFF_TIMES:[I

    aget v1, v2, v0

    .line 1567
    .local v1, "backoffTime":I
    :goto_0
    int-to-long v2, v1

    iget-wide v4, p1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 1565
    .end local v1    # "backoffTime":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1669
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v3

    .line 1671
    :catch_0
    move-exception v2

    .line 1672
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 1674
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 375
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x0

    .line 379
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v0
.end method

.method private hasRestrictionsPinLocked(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1580
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1581
    .local v0, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1582
    :cond_0
    const/4 v1, 0x0

    .line 1584
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initDefaultGuestRestrictions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string v1, "no_outgoing_calls"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string v1, "no_sms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    :cond_0
    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1117
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 1118
    :cond_0
    const/4 v1, 0x0

    .line 1120
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 337
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserLimitReachedLocked()Z
    .locals 2

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLocked()I

    move-result v0

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private numberOfUsersOfTypeLocked(IZ)I
    .locals 5
    .param p1, "flags"    # I
    .param p2, "excludeDying"    # Z

    .prologue
    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1246
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1247
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1248
    :cond_0
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 1249
    add-int/lit8 v0, v0, 0x1

    .line 1245
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1253
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return v0
.end method

.method private packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private passwordToHash(Ljava/lang/String;J)Ljava/lang/String;
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "salt"    # J

    .prologue
    .line 1640
    if-nez p1, :cond_0

    .line 1641
    const/4 v2, 0x0

    .line 1653
    :goto_0
    return-object v2

    .line 1643
    :cond_0
    const/4 v0, 0x0

    .line 1644
    .local v0, "algo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1646
    .local v2, "hashed":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1647
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1648
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1649
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1650
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .line 1651
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1680
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1681
    .local v5, "restrictions":Landroid/os/Bundle;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1683
    .local v11, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1685
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Landroid/util/AtomicFile;

    new-instance v12, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1688
    .local v6, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1689
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1690
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1693
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v12, 0x2

    if-eq v7, v12, :cond_1

    const/4 v12, 0x1

    if-ne v7, v12, :cond_0

    .line 1697
    :cond_1
    const/4 v12, 0x2

    if-eq v7, v12, :cond_4

    .line 1698
    const-string v12, "UserManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to read restrictions file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    if-eqz v1, :cond_2

    .line 1738
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1743
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/AtomicFile;
    .end local v7    # "type":I
    :cond_2
    :goto_0
    return-object v5

    .line 1718
    .local v0, "count":I
    .local v2, "key":Ljava/lang/String;
    .local v3, "multiple":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Landroid/util/AtomicFile;
    .restart local v7    # "type":I
    .local v8, "valType":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/String;

    .line 1719
    .local v10, "valueStrings":[Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1720
    invoke-virtual {v5, v2, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1703
    .end local v0    # "count":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v8    # "valType":Ljava/lang/String;
    .end local v10    # "valueStrings":[Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_a

    .line 1704
    const/4 v12, 0x2

    if-ne v7, v12, :cond_4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "entry"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1705
    const/4 v12, 0x0

    const-string v13, "key"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1706
    .restart local v2    # "key":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "type"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1707
    .restart local v8    # "valType":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "m"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1708
    .restart local v3    # "multiple":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1709
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1710
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1711
    .restart local v0    # "count":I
    :cond_5
    :goto_2
    if-lez v0, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_3

    .line 1712
    const/4 v12, 0x2

    if-ne v7, v12, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "value"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1714
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1722
    .end local v0    # "count":I
    :cond_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1723
    .local v9, "value":Ljava/lang/String;
    const-string v12, "b"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1724
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v5, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1733
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/AtomicFile;
    .end local v7    # "type":I
    .end local v8    # "valType":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1736
    if-eqz v1, :cond_2

    .line 1738
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1739
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 1725
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "multiple":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Landroid/util/AtomicFile;
    .restart local v7    # "type":I
    .restart local v8    # "valType":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v12, "i"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1726
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1734
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/AtomicFile;
    .end local v7    # "type":I
    .end local v8    # "valType":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 1736
    if-eqz v1, :cond_2

    .line 1738
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1739
    :catch_3
    move-exception v12

    goto/16 :goto_0

    .line 1728
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "multiple":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Landroid/util/AtomicFile;
    .restart local v7    # "type":I
    .restart local v8    # "valType":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_8
    :try_start_6
    invoke-virtual {v5, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1736
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/AtomicFile;
    .end local v7    # "type":I
    .end local v8    # "valType":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v12

    if-eqz v1, :cond_9

    .line 1738
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1740
    :cond_9
    :goto_3
    throw v12

    .line 1736
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Landroid/util/AtomicFile;
    .restart local v7    # "type":I
    :cond_a
    if-eqz v1, :cond_2

    .line 1738
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1739
    :catch_4
    move-exception v12

    goto/16 :goto_0

    :catch_5
    move-exception v12

    goto/16 :goto_0

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/AtomicFile;
    .end local v7    # "type":I
    :catch_6
    move-exception v13

    goto :goto_3
.end method

.method private readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;

    .prologue
    .line 1079
    const/4 v1, 0x0

    invoke-interface {p1, v1, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1081
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1083
    :cond_0
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 1094
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1095
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1099
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 1097
    .restart local p3    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 1104
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1109
    .end local p3    # "defaultValue":J
    :goto_0
    return-wide p3

    .line 1107
    .restart local p3    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    const-string v0, "no_config_wifi"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1047
    const-string v0, "no_modify_accounts"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1048
    const-string v0, "no_install_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1049
    const-string v0, "no_uninstall_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1050
    const-string v0, "no_share_location"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1051
    const-string v0, "no_install_unknown_sources"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1053
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1054
    const-string v0, "no_usb_file_transfer"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1055
    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1056
    const-string v0, "no_remove_user"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1057
    const-string v0, "no_debugging_features"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1058
    const-string v0, "no_config_vpn"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1059
    const-string v0, "no_config_tethering"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1060
    const-string v0, "no_factory_reset"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1061
    const-string v0, "no_add_user"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1062
    const-string v0, "ensure_verify_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1063
    const-string v0, "no_config_cell_broadcasts"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1064
    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1065
    const-string v0, "no_control_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1066
    const-string v0, "no_physical_media"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1068
    const-string v0, "no_unmute_microphone"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1069
    const-string v0, "no_adjust_volume"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1070
    const-string v0, "no_outgoing_calls"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1071
    const-string v0, "no_sms"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1072
    const-string v0, "no_create_windows"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1073
    const-string v0, "no_cross_profile_copy_paste"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1074
    const-string v0, "no_outgoing_beam"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method private readUserListLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x2

    .line 635
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 636
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    const/4 v0, 0x0

    .line 640
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v9, Landroid/util/AtomicFile;

    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v9, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 642
    .local v9, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 643
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 644
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 647
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    if-eq v7, v13, :cond_3

    if-ne v7, v14, :cond_2

    .line 651
    :cond_3
    if-eq v7, v13, :cond_4

    .line 652
    const-string v11, "UserManagerService"

    const-string v12, "Unable to read user list"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    if-eqz v0, :cond_0

    .line 704
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v11

    goto :goto_0

    .line 657
    :cond_4
    const/4 v11, -0x1

    :try_start_2
    iput v11, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 658
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "users"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 659
    const/4 v11, 0x0

    const-string v12, "nextSerialNumber"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 661
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 663
    :cond_5
    const/4 v11, 0x0

    const-string v12, "version"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 664
    .local v10, "versionNumber":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 665
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 669
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v10    # "versionNumber":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v14, :cond_a

    .line 670
    if-ne v7, v13, :cond_6

    .line 671
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, "name":Ljava/lang/String;
    const-string v11, "user"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 673
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/server/pm/UserManagerService;->readUserLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 676
    .local v8, "user":Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_6

    .line 677
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    iget v11, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v11, :cond_7

    iget v11, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    if-gt v11, v12, :cond_6

    .line 679
    :cond_7
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 697
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v2

    .line 698
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 702
    if-eqz v0, :cond_0

    .line 704
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 705
    :catch_2
    move-exception v11

    goto/16 :goto_0

    .line 682
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_8
    :try_start_5
    const-string v11, "guestRestrictions"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 684
    :cond_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v14, :cond_6

    const/4 v11, 0x3

    if-eq v7, v11, :cond_6

    .line 685
    if-ne v7, v13, :cond_9

    .line 686
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "restrictions"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 687
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {p0, v5, v11}, Lcom/android/server/pm/UserManagerService;->readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 699
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_3
    move-exception v6

    .line 700
    .local v6, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 702
    if-eqz v0, :cond_0

    .line 704
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 705
    :catch_4
    move-exception v11

    goto/16 :goto_0

    .line 695
    .end local v6    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_a
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 696
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLocked()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 702
    if-eqz v0, :cond_0

    .line 704
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 705
    :catch_5
    move-exception v11

    goto/16 :goto_0

    .line 702
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_0
    move-exception v11

    if-eqz v0, :cond_b

    .line 704
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 706
    :cond_b
    :goto_2
    throw v11

    .line 705
    :catch_6
    move-exception v12

    goto :goto_2
.end method

.method private readUserLocked(I)Landroid/content/pm/UserInfo;
    .locals 38
    .param p1, "id"    # I

    .prologue
    .line 927
    const/4 v10, 0x0

    .line 928
    .local v10, "flags":I
    move/from16 v25, p1

    .line 929
    .local v25, "serialNumber":I
    const/4 v13, 0x0

    .line 930
    .local v13, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 931
    .local v12, "iconPath":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 932
    .local v6, "creationTime":J
    const-wide/16 v16, 0x0

    .line 933
    .local v16, "lastLoggedInTime":J
    const-wide/16 v26, 0x0

    .line 934
    .local v26, "salt":J
    const/16 v21, 0x0

    .line 935
    .local v21, "pinHash":Ljava/lang/String;
    const/4 v8, 0x0

    .line 936
    .local v8, "failedAttempts":I
    const/16 v23, -0x1

    .line 937
    .local v23, "profileGroupId":I
    const-wide/16 v14, 0x0

    .line 938
    .local v14, "lastAttemptTime":J
    const/16 v20, 0x0

    .line 939
    .local v20, "partial":Z
    const/4 v11, 0x0

    .line 940
    .local v11, "guestToRemove":Z
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 942
    .local v24, "restrictions":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 944
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v31, Landroid/util/AtomicFile;

    new-instance v34, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ".xml"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 946
    .local v31, "userFile":Landroid/util/AtomicFile;
    invoke-virtual/range {v31 .. v31}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9

    .line 947
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 948
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v34, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v34 .. v34}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v9, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 951
    :cond_0
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    .local v30, "type":I
    const/16 v34, 0x2

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_1

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_0

    .line 955
    :cond_1
    const/16 v34, 0x2

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    .line 956
    const-string v34, "UserManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unable to read user "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    const/16 v32, 0x0

    .line 1034
    if-eqz v9, :cond_2

    .line 1036
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1041
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v30    # "type":I
    .end local v31    # "userFile":Landroid/util/AtomicFile;
    :cond_2
    :goto_0
    return-object v32

    .line 960
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "type":I
    .restart local v31    # "userFile":Landroid/util/AtomicFile;
    :cond_3
    const/16 v34, 0x2

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    :try_start_2
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    const-string v35, "user"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 961
    const-string v34, "id"

    const/16 v35, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v28

    .line 962
    .local v28, "storedId":I
    move/from16 v0, v28

    move/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 963
    const-string v34, "UserManagerService"

    const-string v35, "User id does not match the file name"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 964
    const/16 v32, 0x0

    .line 1034
    if-eqz v9, :cond_2

    .line 1036
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v34

    goto :goto_0

    .line 966
    :cond_4
    :try_start_4
    const-string v34, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v25

    .line 967
    const-string v34, "flags"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 968
    const/16 v34, 0x0

    const-string v35, "icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 969
    const-string v34, "created"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 970
    const-string v34, "lastLoggedIn"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 971
    const-string v34, "salt"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v26

    .line 972
    const/16 v34, 0x0

    const-string v35, "pinHash"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 973
    const-string v34, "failedAttempts"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 974
    const-string v34, "lastAttemptMs"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 975
    const-string v34, "profileGroupId"

    const/16 v35, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 977
    const/16 v34, -0x1

    move/from16 v0, v23

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    .line 980
    const-string v34, "relatedGroupId"

    const/16 v35, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 983
    :cond_5
    const/16 v34, 0x0

    const-string v35, "partial"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 984
    .local v33, "valueString":Ljava/lang/String;
    const-string v34, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 985
    const/16 v20, 0x1

    .line 987
    :cond_6
    const/16 v34, 0x0

    const-string v35, "guestToRemove"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 988
    const-string v34, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 989
    const/4 v11, 0x1

    .line 992
    :cond_7
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    .line 994
    .local v18, "outerDepth":I
    :cond_8
    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    const/16 v34, 0x3

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v34

    move/from16 v0, v34

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 995
    :cond_9
    const/16 v34, 0x3

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_8

    const/16 v34, 0x4

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_8

    .line 998
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 999
    .local v29, "tag":Ljava/lang/String;
    const-string v34, "name"

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 1000
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    .line 1001
    const/16 v34, 0x4

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 1002
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 1004
    :cond_a
    const-string v34, "restrictions"

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 1005
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1031
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "storedId":I
    .end local v29    # "tag":Ljava/lang/String;
    .end local v30    # "type":I
    .end local v31    # "userFile":Landroid/util/AtomicFile;
    .end local v33    # "valueString":Ljava/lang/String;
    :catch_1
    move-exception v34

    .line 1034
    if-eqz v9, :cond_b

    .line 1036
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1041
    :cond_b
    :goto_2
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 1010
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "type":I
    .restart local v31    # "userFile":Landroid/util/AtomicFile;
    :cond_c
    :try_start_6
    new-instance v32, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-direct {v0, v1, v13, v12, v10}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1011
    .local v32, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v0, v25

    move-object/from16 v1, v32

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1012
    move-object/from16 v0, v32

    iput-wide v6, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1013
    move-wide/from16 v0, v16

    move-object/from16 v2, v32

    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 1014
    move/from16 v0, v20

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 1015
    move-object/from16 v0, v32

    iput-boolean v11, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 1016
    move/from16 v0, v23

    move-object/from16 v1, v32

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1018
    const-wide/16 v34, 0x0

    cmp-long v34, v26, v34

    if-eqz v34, :cond_e

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1020
    .local v22, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-nez v22, :cond_d

    .line 1021
    new-instance v22, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .end local v22    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1022
    .restart local v22    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1024
    :cond_d
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    .line 1025
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    .line 1026
    move-object/from16 v0, v22

    iput v8, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    .line 1027
    move-object/from16 v0, v22

    iput-wide v14, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1034
    .end local v22    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :cond_e
    if-eqz v9, :cond_2

    .line 1036
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 1037
    :catch_2
    move-exception v34

    goto/16 :goto_0

    .line 1032
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v30    # "type":I
    .end local v31    # "userFile":Landroid/util/AtomicFile;
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_3
    move-exception v34

    .line 1034
    if-eqz v9, :cond_b

    .line 1036
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    .line 1037
    :catch_4
    move-exception v34

    goto/16 :goto_2

    .line 1034
    :catchall_0
    move-exception v34

    if-eqz v9, :cond_f

    .line 1036
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1038
    :cond_f
    :goto_3
    throw v34

    .line 1037
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "type":I
    .restart local v31    # "userFile":Landroid/util/AtomicFile;
    :catch_5
    move-exception v34

    goto/16 :goto_0

    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v30    # "type":I
    .end local v31    # "userFile":Landroid/util/AtomicFile;
    :catch_6
    move-exception v34

    goto/16 :goto_2

    :catch_7
    move-exception v35

    goto :goto_3
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 7
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 1441
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1442
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1443
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1444
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1445
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 1443
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1448
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1449
    return-void
.end method

.method private removeRestrictionsForUser(IZ)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "unhideApps"    # Z

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1597
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestrictions(Landroid/os/Bundle;I)V

    .line 1599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->setRestrictionsChallenge(Ljava/lang/String;)Z

    .line 1601
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictions(I)V

    .line 1602
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    if-eqz p2, :cond_0

    .line 1604
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->unhideAllInstalledAppsForUser(I)V

    .line 1606
    :cond_0
    return-void

    .line 1602
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeUserStateLocked(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1425
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(Lcom/android/server/pm/UserManagerService;I)V

    .line 1428
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1430
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1432
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1433
    .local v0, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 1435
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 1436
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 1437
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 1438
    return-void
.end method

.method private restrictionsFileNameToPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1883
    const-string v0, "res_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".xml"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendProfileRemovedBroadcast(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .prologue
    .line 1452
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1453
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1455
    const-string v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1456
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1457
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 434
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    .line 1657
    const-string v0, "0123456789ABCDEF"

    .line 1658
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1659
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1663
    :cond_0
    return-object v2
.end method

.method private unhideAllInstalledAppsForUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1629
    return-void
.end method

.method private updateUserIdsLocked()V
    .locals 6

    .prologue
    .line 1824
    const/4 v4, 0x0

    .line 1825
    .local v4, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1826
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_0

    .line 1827
    add-int/lit8 v4, v4, 0x1

    .line 1825
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1830
    :cond_1
    new-array v3, v4, [I

    .line 1831
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    .line 1832
    .local v1, "n":I
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1833
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_2

    .line 1834
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .line 1832
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1837
    :cond_3
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 1838
    return-void
.end method

.method private upgradeIfNecessaryLocked()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 715
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 716
    .local v1, "userVersion":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 718
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 719
    .local v0, "user":Landroid/content/pm/UserInfo;
    const-string v2, "Primary"

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10406fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 721
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 723
    :cond_0
    const/4 v1, 0x1

    .line 726
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 728
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 729
    .restart local v0    # "user":Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_2

    .line 730
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 731
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 733
    :cond_2
    const/4 v1, 0x2

    .line 737
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    .line 738
    const/4 v1, 0x4

    .line 741
    :cond_4
    if-ge v1, v5, :cond_5

    .line 742
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 743
    const/4 v1, 0x5

    .line 746
    :cond_5
    if-ge v1, v5, :cond_6

    .line 747
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :goto_0
    return-void

    .line 750
    :cond_6
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 751
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    goto :goto_0
.end method

.method private writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 1748
    const/4 v5, 0x0

    .line 1749
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v10, Landroid/util/AtomicFile;

    new-instance v14, Ljava/io/File;

    invoke-static/range {p3 .. p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v15

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v14}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1753
    .local v10, "restrictionsFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1754
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1757
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1758
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v2, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1759
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1760
    const-string v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1762
    const/4 v14, 0x0

    const-string v15, "restrictions"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1765
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 1766
    .local v12, "value":Ljava/lang/Object;
    const/4 v14, 0x0

    const-string v15, "entry"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1767
    const/4 v14, 0x0

    const-string v15, "key"

    invoke-interface {v11, v14, v15, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1769
    instance-of v14, v12, Ljava/lang/Boolean;

    if-eqz v14, :cond_1

    .line 1770
    const/4 v14, 0x0

    const-string v15, "type"

    const-string v16, "b"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1771
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1788
    .end local v12    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    const/4 v14, 0x0

    const-string v15, "entry"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1795
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v4

    .line 1796
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v10, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1797
    const-string v14, "UserManagerService"

    const-string v15, "Error writing application restrictions list"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1772
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v14, v12, Ljava/lang/Integer;

    if-eqz v14, :cond_2

    .line 1773
    const/4 v14, 0x0

    const-string v15, "type"

    const-string v16, "i"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1774
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1775
    :cond_2
    if-eqz v12, :cond_3

    instance-of v14, v12, Ljava/lang/String;

    if-eqz v14, :cond_5

    .line 1776
    :cond_3
    const/4 v14, 0x0

    const-string v15, "type"

    const-string v16, "s"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1777
    if-eqz v12, :cond_4

    check-cast v12, Ljava/lang/String;

    .end local v12    # "value":Ljava/lang/Object;
    :goto_3
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .restart local v12    # "value":Ljava/lang/Object;
    :cond_4
    const-string v12, ""

    goto :goto_3

    .line 1779
    :cond_5
    const/4 v14, 0x0

    const-string v15, "type"

    const-string v16, "sa"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1780
    check-cast v12, [Ljava/lang/String;

    .end local v12    # "value":Ljava/lang/Object;
    move-object v0, v12

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1781
    .local v13, "values":[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "m"

    array-length v0, v13

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1782
    move-object v1, v13

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v9, :cond_0

    aget-object v3, v1, v7

    .line 1783
    .local v3, "choice":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "value"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1784
    if-eqz v3, :cond_6

    .end local v3    # "choice":Ljava/lang/String;
    :goto_5
    invoke-interface {v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1785
    const/4 v14, 0x0

    const-string v15, "value"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1782
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1784
    .restart local v3    # "choice":Ljava/lang/String;
    :cond_6
    const-string v3, ""

    goto :goto_5

    .line 1791
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "choice":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v13    # "values":[Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    const-string v15, "restrictions"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1793
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1794
    invoke-virtual {v10, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 596
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 597
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "photo.png"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 598
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 599
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 600
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 606
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 617
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "UserManagerService"

    const-string v5, "Error setting photo for user "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 611
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1087
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    :cond_0
    return-void
.end method

.method private writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 894
    const-string v0, "restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 895
    const-string v0, "no_config_wifi"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 896
    const-string v0, "no_modify_accounts"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 897
    const-string v0, "no_install_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 898
    const-string v0, "no_uninstall_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 899
    const-string v0, "no_share_location"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 900
    const-string v0, "no_install_unknown_sources"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 902
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 903
    const-string v0, "no_usb_file_transfer"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 904
    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 905
    const-string v0, "no_remove_user"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 906
    const-string v0, "no_debugging_features"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 907
    const-string v0, "no_config_vpn"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 908
    const-string v0, "no_config_tethering"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 909
    const-string v0, "no_factory_reset"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 910
    const-string v0, "no_add_user"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 911
    const-string v0, "ensure_verify_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 912
    const-string v0, "no_config_cell_broadcasts"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 913
    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 914
    const-string v0, "no_control_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 915
    const-string v0, "no_physical_media"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 916
    const-string v0, "no_unmute_microphone"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 917
    const-string v0, "no_adjust_volume"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 918
    const-string v0, "no_outgoing_calls"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 919
    const-string v0, "no_sms"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 920
    const-string v0, "no_create_windows"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 921
    const-string v0, "no_cross_profile_copy_paste"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 922
    const-string v0, "no_outgoing_beam"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 923
    const-string v0, "restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 924
    return-void
.end method

.method private writeUserListLocked()V
    .locals 10

    .prologue
    .line 856
    const/4 v2, 0x0

    .line 857
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 859
    .local v6, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 860
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 863
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 864
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 865
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 866
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 868
    const/4 v7, 0x0

    const-string v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 869
    const/4 v7, 0x0

    const-string v8, "nextSerialNumber"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 870
    const/4 v7, 0x0

    const-string v8, "version"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 872
    const/4 v7, 0x0

    const-string v8, "guestRestrictions"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 873
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {p0, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 874
    const/4 v7, 0x0

    const-string v8, "guestRestrictions"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 876
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 877
    .local v5, "user":Landroid/content/pm/UserInfo;
    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 878
    const/4 v7, 0x0

    const-string v8, "id"

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 882
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v7, 0x0

    const-string v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 885
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    .line 886
    :catch_0
    move-exception v1

    .line 887
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 888
    const-string v7, "UserManagerService"

    const-string v8, "Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeUserLocked(Landroid/content/pm/UserInfo;)V
    .locals 12
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 782
    const/4 v1, 0x0

    .line 783
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 785
    .local v6, "userFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 786
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 789
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 790
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 791
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 792
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 794
    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    const/4 v7, 0x0

    const-string v8, "id"

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 796
    const/4 v7, 0x0

    const-string v8, "serialNumber"

    iget v9, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 797
    const/4 v7, 0x0

    const-string v8, "flags"

    iget v9, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 798
    const/4 v7, 0x0

    const-string v8, "created"

    iget-wide v10, p1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 799
    const/4 v7, 0x0

    const-string v8, "lastLoggedIn"

    iget-wide v10, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 802
    .local v3, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-eqz v3, :cond_2

    .line 803
    iget-wide v8, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 804
    const/4 v7, 0x0

    const-string v8, "salt"

    iget-wide v10, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 806
    :cond_0
    iget-object v7, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 807
    const/4 v7, 0x0

    const-string v8, "pinHash"

    iget-object v9, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 809
    :cond_1
    iget v7, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    if-eqz v7, :cond_2

    .line 810
    const/4 v7, 0x0

    const-string v8, "failedAttempts"

    iget v9, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 812
    const/4 v7, 0x0

    const-string v8, "lastAttemptMs"

    iget-wide v10, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    :cond_2
    iget-object v7, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 817
    const/4 v7, 0x0

    const-string v8, "icon"

    iget-object v9, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 819
    :cond_3
    iget-boolean v7, p1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v7, :cond_4

    .line 820
    const/4 v7, 0x0

    const-string v8, "partial"

    const-string v9, "true"

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 822
    :cond_4
    iget-boolean v7, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v7, :cond_5

    .line 823
    const/4 v7, 0x0

    const-string v8, "guestToRemove"

    const-string v9, "true"

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    :cond_5
    iget v7, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 826
    const/4 v7, 0x0

    const-string v8, "profileGroupId"

    iget v9, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 830
    :cond_6
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    iget-object v7, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 832
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 833
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 834
    .local v4, "restrictions":Landroid/os/Bundle;
    if-eqz v4, :cond_7

    .line 835
    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/UserManagerService;->writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 837
    :cond_7
    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 840
    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    .end local v4    # "restrictions":Landroid/os/Bundle;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v2

    .line 842
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v7, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writing user info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public canAddMoreManagedProfiles()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 546
    const-string v3, "check if more managed profiles can be added."

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 547
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    :goto_0
    return v1

    .line 550
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 552
    const/16 v4, 0x20

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/UserManagerService;->numberOfUsersOfTypeLocked(IZ)I

    move-result v4

    if-lt v4, v2, :cond_1

    .line 554
    monitor-exit v3

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 556
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLocked()I

    move-result v0

    .line 558
    .local v0, "usersCount":I
    if-eq v0, v2, :cond_2

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    if-ge v0, v4, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public checkRestrictionsChallenge(Ljava/lang/String;)I
    .locals 10
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1530
    const-string v3, "Only system can verify the restrictions pin"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1532
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1533
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1535
    .local v0, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-eqz v0, :cond_0

    iget-wide v6, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1536
    :cond_0
    const/4 v2, -0x2

    monitor-exit v4

    .line 1556
    :goto_0
    return v2

    .line 1537
    :cond_1
    if-nez p1, :cond_2

    .line 1539
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingTimeForPinAttempt(Lcom/android/server/pm/UserManagerService$RestrictionsPinState;)I

    move-result v2

    .line 1540
    .local v2, "waitTime":I
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remaining waittime peek="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    monitor-exit v4

    goto :goto_0

    .line 1559
    .end local v0    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    .end local v2    # "waitTime":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1543
    .restart local v0    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingTimeForPinAttempt(Lcom/android/server/pm/UserManagerService$RestrictionsPinState;)I

    move-result v2

    .line 1544
    .restart local v2    # "waitTime":I
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remaining waittime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    if-lez v2, :cond_3

    .line 1546
    monitor-exit v4

    goto :goto_0

    .line 1548
    :cond_3
    iget-wide v6, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/pm/UserManagerService;->passwordToHash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1549
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    .line 1550
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1551
    const/4 v2, -0x1

    monitor-exit v4

    goto :goto_0

    .line 1553
    :cond_4
    iget v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    .line 1554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J

    .line 1555
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1556
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1158
    const-string v0, "Only the system can create users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1159
    if-eqz p3, :cond_0

    .line 1160
    const-string v0, "UserManagerService"

    const-string v1, "Only user owner can have profiles"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v0, 0x0

    .line 1163
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 1168
    const-string v0, "Only the system can create users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1169
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 1889
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1891
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump UserManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    :goto_0
    return-void

    .line 1899
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1900
    .local v2, "now":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1901
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1902
    :try_start_0
    const-string v5, "Users:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 1904
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1905
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_1

    .line 1903
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1906
    :cond_1
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " serialNo="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1907
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, " <removing> "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1908
    :cond_2
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_3

    const-string v5, " <partial>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1909
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1910
    const-string v5, "    Created: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1911
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_4

    .line 1912
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    :goto_3
    const-string v5, "    Last logged in: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1920
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_5

    .line 1921
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1929
    .end local v0    # "i":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1914
    .restart local v0    # "i":I
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1915
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v8, v2, v8

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1916
    const-string v5, " ago"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 1923
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1924
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v8, v2, v8

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1925
    const-string v5, " ago"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 1929
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public exists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method finishRemoveUser(I)V
    .locals 12
    .param p1, "userHandle"    # I

    .prologue
    .line 1390
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1392
    .local v10, "ident":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v1, "addedIntent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1394
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    new-instance v4, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1421
    return-void

    .line 1419
    .end local v1    # "addedIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1461
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1466
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1468
    :cond_0
    const-string v0, "Only system can get restrictions for other users/apps"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1470
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1472
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 483
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v1

    return-object v0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 321
    const-string v3, "get the profile parent"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 323
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 324
    .local v1, "profile":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    .line 325
    monitor-exit v3

    .line 331
    :goto_0
    return-object v2

    .line 327
    :cond_0
    iget v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 328
    .local v0, "parentUserId":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 329
    monitor-exit v3

    goto :goto_0

    .line 333
    .end local v0    # "parentUserId":I
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 331
    .restart local v0    # "parentUserId":I
    .restart local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting profiles related to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 285
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 287
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 288
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfilesLocked(IZ)Ljava/util/List;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 289
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getUserHandle(I)I
    .locals 6
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 1811
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1812
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 1813
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v4, p1, :cond_0

    monitor-exit v5

    .line 1816
    .end local v3    # "userId":I
    :goto_1
    return v3

    .line 1812
    .restart local v3    # "userId":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1816
    .end local v3    # "userId":I
    :cond_1
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_1

    .line 1817
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 439
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 440
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_1

    .line 441
    :cond_0
    const-string v2, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    monitor-exit v4

    move-object v2, v3

    .line 452
    :goto_0
    return-object v2

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 445
    .local v0, "callingGroupId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, v2, :cond_3

    .line 447
    :cond_2
    const-string v2, "get the icon of a user who is not related"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 449
    :cond_3
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 450
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 452
    :cond_4
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v4

    goto :goto_0

    .line 453
    .end local v0    # "callingGroupId":I
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUserIds()[I
    .locals 2

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v1

    return-object v0

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getUserIdsLPr()[I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    return-object v0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 356
    const-string v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 511
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 513
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 514
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserSerialNumber(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1803
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1804
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 1805
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    monitor-exit v1

    goto :goto_0

    .line 1806
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 6
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    const-string v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 265
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 266
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 268
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 269
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 267
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 276
    .restart local v0    # "i":I
    .restart local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public hasRestrictionsChallenge()Z
    .locals 3

    .prologue
    .line 1573
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1574
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1575
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasRestrictionsPinLocked(I)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 1576
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 501
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 503
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 504
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRestricted()Z
    .locals 2

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeInitialized(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 457
    const-string v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 460
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    .line 464
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 465
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 467
    :cond_2
    monitor-exit v2

    .line 468
    return-void

    .line 467
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markGuestForDeletion(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1280
    const-string v5, "Only the system can remove users"

    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1281
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "no_remove_user"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1283
    const-string v4, "UserManagerService"

    const-string v5, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :goto_0
    return v3

    .line 1287
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1290
    .local v0, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1291
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1292
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1293
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1295
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1296
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1303
    :cond_3
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 1306
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1307
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1308
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    .line 1312
    goto :goto_0

    .line 1308
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1310
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeRestrictions()V
    .locals 2

    .prologue
    .line 1589
    const-string v1, "Only system can remove restrictions"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1590
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1591
    .local v0, "userHandle":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->removeRestrictionsForUser(IZ)V

    .line 1592
    return-void
.end method

.method public removeUser(I)Z
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1321
    const-string v7, "Only the system can remove users"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1322
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "no_remove_user"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1324
    const-string v5, "UserManagerService"

    const-string v7, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :goto_0
    return v6

    .line 1328
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1331
    .local v2, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1332
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1333
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_1

    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1334
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1382
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1340
    :cond_2
    :try_start_2
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1343
    :try_start_3
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v8, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1350
    :goto_1
    const/4 v8, 0x1

    :try_start_4
    iput-boolean v8, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 1353
    iget v8, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 1354
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1355
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1357
    :try_start_5
    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1361
    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1367
    :cond_3
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v8, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v7, p1, v8}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v1

    .line 1380
    .local v1, "res":I
    if-nez v1, :cond_4

    .line 1382
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v5

    goto :goto_0

    .line 1344
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v8, "UserManagerService"

    const-string v9, "Unable to notify AppOpsService of removing user"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1355
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1382
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1377
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v0

    .line 1382
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_4
    move v5, v6

    .line 1380
    goto :goto_2
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 1479
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-ne v1, p3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1481
    :cond_0
    const-string v1, "Only system can set restrictions for other users/apps"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1483
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1484
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1485
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackage(Ljava/lang/String;I)V

    .line 1490
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1492
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1494
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1495
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1496
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1497
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1499
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 1488
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 1490
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 491
    const-string v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 494
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 495
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 496
    monitor-exit v1

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .locals 10
    .param p1, "newPin"    # Ljava/lang/String;

    .prologue
    .line 1503
    const-string v3, "Only system can modify the restrictions pin"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1504
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1505
    .local v2, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1506
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1507
    .local v1, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-nez v1, :cond_0

    .line 1508
    new-instance v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .end local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1510
    .restart local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :cond_0
    if-nez p1, :cond_1

    .line 1511
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    .line 1512
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    .line 1522
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1523
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1524
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    const/4 v3, 0x1

    return v3

    .line 1515
    :cond_1
    :try_start_1
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1519
    :goto_1
    :try_start_2
    iget-wide v6, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/pm/UserManagerService;->passwordToHash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    .line 1520
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    goto :goto_0

    .line 1524
    .end local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1516
    .restart local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :catch_0
    move-exception v0

    .line 1517
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v6, v8

    double-to-long v6, v6

    iput-wide v6, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setUserEnabled(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 344
    const-string v1, "enable user"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 347
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 349
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 351
    :cond_0
    monitor-exit v2

    .line 352
    return-void

    .line 351
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 411
    const-string v3, "update users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 414
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 415
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 416
    .local v2, "info":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 417
    :cond_0
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    :goto_0
    return-void

    .line 420
    :cond_1
    :try_start_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 421
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 422
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 422
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 425
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 393
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 394
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_2

    .line 395
    :cond_0
    const-string v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    monitor-exit v3

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 399
    iput-object p2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 400
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 401
    const/4 v0, 0x1

    .line 403
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    if-eqz v0, :cond_1

    .line 405
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    goto :goto_0

    .line 403
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 519
    const-string v1, "setUserRestrictions"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 520
    if-nez p1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 524
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 525
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 527
    .local v2, "token":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v5, v1, p2}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 531
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 534
    monitor-exit v4

    goto :goto_0

    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 528
    .restart local v2    # "token":J
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "UserManagerService"

    const-string v5, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 531
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method systemReady()V
    .locals 5

    .prologue
    .line 250
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->userForeground(I)V

    .line 251
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    aget v4, v4, v1

    invoke-interface {v3, v2, v4}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "UserManagerService"

    const-string v3, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public userForeground(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1845
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1846
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1847
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1848
    .local v0, "now":J
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 1849
    :cond_0
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userForeground: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    monitor-exit v4

    .line 1857
    :goto_0
    return-void

    .line 1852
    :cond_1
    const-wide v6, 0xdc46c32800L

    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    .line 1853
    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 1854
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1856
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "now":J
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
