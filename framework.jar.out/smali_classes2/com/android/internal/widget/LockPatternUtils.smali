.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field public static final BIOMETRIC_WEAK_FACE:I = 0x0

.field public static final BIOMETRIC_WEAK_FINGERPRINT:I = 0x1

.field public static final BIOMETRIC_WEAK_UNKNOWN:I = -0x1

.field private static final DEBUG:Z = false

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field private static final ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final FLAG_BIOMETRIC_WEAK_LIVELINESS:I = 0x1

.field public static final GESTURE_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.gestureeverchosen"

.field public static final ID_DEFAULT_STATUS_WIDGET:I = -0x2

.field public static final KEYGUARD_SHOW_APPWIDGET:Ljava/lang/String; = "showappwidget"

.field public static final KEYGUARD_SHOW_SECURITY_CHALLENGE:Ljava/lang/String; = "showsecuritychallenge"

.field public static final KEYGUARD_SHOW_USER_SWITCHER:Ljava/lang/String; = "showuserswitcher"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field public static final LOCKSCREEN_FINGERPRINT_FALLBACK:Ljava/lang/String; = "lockscreen.fingerprint_fallback"

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_BIOMETRIC_EXACT_TYPE:Ljava/lang/String; = "lockscreen.password_biometric_type"

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final PATTERN_SIZE_DEFAULT:B = 0x3t

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field public static final THIRD_PARTY_KEYGUARD_COMPONENT:Ljava/lang/String; = "lockscreen.third_party"

.field private static volatile sCurrentUserId:I


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const/16 v0, -0x2710

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 226
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    .line 228
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static categoryChar(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 821
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    .line 824
    :goto_0
    return v0

    .line 822
    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 823
    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 824
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static combineStrings([ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "list"    # [I
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1735
    array-length v1, p0

    .line 1737
    .local v1, "listLength":I
    packed-switch v1, :pswitch_data_0

    .line 1746
    const/4 v4, 0x0

    .line 1747
    .local v4, "strLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1749
    .local v3, "separatorLength":I
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 1750
    .local v5, "stringList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1751
    aget v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1752
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 1753
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 1754
    add-int/2addr v4, v3

    .line 1750
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1739
    .end local v0    # "i":I
    .end local v3    # "separatorLength":I
    .end local v4    # "strLength":I
    .end local v5    # "stringList":[Ljava/lang/String;
    :pswitch_0
    const-string v6, ""

    .line 1767
    :goto_1
    return-object v6

    .line 1742
    :pswitch_1
    const/4 v6, 0x0

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1758
    .restart local v0    # "i":I
    .restart local v3    # "separatorLength":I
    .restart local v4    # "strLength":I
    .restart local v5    # "stringList":[Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1760
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 1761
    aget v6, p0, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1762
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_2

    .line 1763
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1767
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1737
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .line 797
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 798
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 799
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 800
    const/4 v0, 0x1

    .line 798
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 806
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 807
    const/high16 v4, 0x50000

    .line 817
    :goto_2
    return v4

    .line 809
    :cond_2
    if-eqz v1, :cond_3

    .line 810
    const/high16 v4, 0x40000

    goto :goto_2

    .line 812
    :cond_3
    if-eqz v0, :cond_5

    .line 813
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    const/high16 v4, 0x20000

    goto :goto_2

    :cond_4
    const/high16 v4, 0x30000

    goto :goto_2

    .line 817
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private finishBiometricWeak(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1971
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1975
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1976
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1978
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1979
    return-void
.end method

.method private getAppWidgets(I)[I
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1714
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "lock_screen_appwidget_ids"

    invoke-static {v7, v8, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1716
    .local v1, "appWidgetIdString":Ljava/lang/String;
    const-string v4, ","

    .line 1717
    .local v4, "delims":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1718
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1719
    .local v3, "appWidgetStringIds":[Ljava/lang/String;
    array-length v7, v3

    new-array v2, v7, [I

    .line 1720
    .local v2, "appWidgetIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 1721
    aget-object v0, v3, v6

    .line 1723
    .local v0, "appWidget":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1724
    :catch_0
    move-exception v5

    .line 1725
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when parsing widget id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const/4 v2, 0x0

    .line 1731
    .end local v0    # "appWidget":Ljava/lang/String;
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "appWidgetStringIds":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "i":I
    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const/4 v7, 0x0

    new-array v2, v7, [I

    goto :goto_1
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1693
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1686
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1688
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 1687
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getCurrentOrCallingUserId()I
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    .line 232
    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 234
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 236
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->setFlymeLockSettingsService()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 1853
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1856
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 1855
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 1856
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1845
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1847
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 1846
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 1847
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getSalt(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1332
    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 1333
    .local v2, "salt":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1335
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 1336
    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1337
    const-string v1, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialized lock password salt for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1338
    :catch_0
    move-exception v0

    .line 1340
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;

    .prologue
    .line 1874
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 1879
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1881
    :goto_0
    return-object v1

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .locals 5

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 212
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_0

    .line 213
    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get TrustManagerService: is it running?"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Stack trace:"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :cond_0
    return-object v0
.end method

.method public static isDeviceEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1104
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 1107
    .local v0, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-interface {v0}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v3, v2, :cond_0

    .line 1112
    :goto_0
    return v2

    .line 1107
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1109
    :catch_0
    move-exception v1

    .line 1110
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error getting encryption state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 3

    .prologue
    .line 1122
    const-string v1, "ro.crypto.state"

    const-string v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isSafeModeEnabled()Z
    .locals 1

    .prologue
    .line 1991
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1996
    :goto_0
    return v0

    .line 1993
    :catch_0
    move-exception v0

    .line 1996
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxDiffCategory(I)I
    .locals 1
    .param p0, "category"    # I

    .prologue
    const/4 v0, 0x1

    .line 828
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    .line 830
    :cond_0
    :goto_0
    return v0

    .line 829
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    .line 830
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 850
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 878
    :goto_0
    return v7

    .line 851
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 852
    .local v8, "previousChar":C
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v0

    .line 853
    .local v0, "category":I
    const/4 v5, 0x0

    .line 854
    .local v5, "diff":I
    const/4 v6, 0x0

    .line 855
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    .line 856
    .local v7, "maxLength":I
    const/4 v9, 0x0

    .line 857
    .local v9, "startSequence":I
    const/4 v2, 0x1

    .local v2, "current":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 858
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 859
    .local v3, "currentChar":C
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v1

    .line 860
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    .line 861
    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2

    .line 862
    :cond_1
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 863
    move v9, v2

    .line 864
    const/4 v6, 0x0

    .line 865
    move v0, v1

    .line 875
    :goto_2
    move v8, v3

    .line 857
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 868
    :cond_2
    if-eqz v6, :cond_3

    if-eq v4, v5, :cond_3

    .line 869
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 870
    add-int/lit8 v9, v2, -0x1

    .line 872
    :cond_3
    move v5, v4

    .line 873
    const/4 v6, 0x1

    goto :goto_2

    .line 877
    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 878
    goto :goto_0
.end method

.method private onAfterChangingPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 2073
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2074
    return-void
.end method

.method public static patternMatches(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "p1":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .local p1, "p2":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x0

    .line 1289
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v3

    .line 1301
    :goto_0
    return v2

    .line 1292
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_2

    move v2, v3

    .line 1293
    goto :goto_0

    .line 1295
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v1, v2

    .line 1296
    .local v1, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1297
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 1298
    goto :goto_0

    .line 1296
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1301
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;I)Ljava/lang/String;
    .locals 6
    .param p1, "patternGridSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1271
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1272
    const-string v4, ""

    .line 1281
    :goto_0
    return-object v4

    .line 1274
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1276
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1277
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1278
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1279
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/2addr v4, p1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1281
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1706
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1707
    return-void
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1698
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    :goto_0
    return-void

    .line 1699
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1861
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1862
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1866
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    :goto_0
    return-void

    .line 1867
    :catch_0
    move-exception v0

    .line 1869
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1886
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1887
    return-void
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1891
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    :goto_0
    return-void

    .line 1892
    :catch_0
    move-exception v0

    .line 1894
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;B)Ljava/util/List;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "size"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "B)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1237
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1239
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    filled-new-array {p1, p1}, [I

    move-result-object v6

    const-class v7, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1240
    .local v5, "tmp":[[Lcom/android/internal/widget/LockPatternView$Cell;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1241
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p1, :cond_0

    .line 1242
    aget-object v6, v5, v2

    new-instance v7, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v7, v2, v3, p1}, Lcom/android/internal/widget/LockPatternView$Cell;-><init>(IIB)V

    aput-object v7, v6, v3

    .line 1241
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1240
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1246
    .end local v3    # "j":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1247
    .local v1, "bytes":[B
    const/4 v2, 0x0

    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 1248
    aget-byte v0, v1, v2

    .line 1249
    .local v0, "b":B
    div-int v6, v0, p1

    rem-int v7, v0, p1

    invoke-static {v5, v6, v7, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->of([[Lcom/android/internal/widget/LockPatternView$Cell;IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1252
    .end local v0    # "b":B
    :cond_2
    return-object v4
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    .line 1371
    const-string v0, "0123456789ABCDEF"

    .line 1372
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1373
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1374
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

    .line 1375
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

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1377
    :cond_0
    return-object v2
.end method

.method private updateCryptoUserInfo()V
    .locals 7

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    .line 710
    .local v4, "userId":I
    if-eqz v4, :cond_0

    .line 729
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_1
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 717
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_2

    .line 718
    const-string v5, "LockPatternUtils"

    const-string v6, "Could not find the mount service to update the user info"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 722
    .restart local v2    # "ownerInfo":Ljava/lang/String;
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_2
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 724
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v5, "LockPatternUtils"

    const-string v6, "Setting owner info"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v5, "OwnerInfo"

    invoke-interface {v1, v5, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "LockPatternUtils"

    const-string v6, "Error changing user info"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateEncryptionPassword(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    :goto_0
    return-void

    .line 886
    :cond_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 887
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 888
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not find the mount service to update the encryption password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private writeAppWidgets([I)V
    .locals 4
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_appwidget_ids"

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->combineStrings([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1794
    return-void
.end method


# virtual methods
.method public addAppWidget(II)Z
    .locals 6
    .param p1, "widgetId"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1798
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1799
    .local v3, "widgets":[I
    if-nez v3, :cond_1

    .line 1817
    :cond_0
    :goto_0
    return v4

    .line 1802
    :cond_1
    if-ltz p2, :cond_0

    array-length v5, v3

    if-gt p2, v5, :cond_0

    .line 1805
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [I

    .line 1806
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 1807
    if-ne p2, v0, :cond_2

    .line 1808
    aput p1, v2, v0

    .line 1809
    add-int/lit8 v0, v0, 0x1

    .line 1811
    :cond_2
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 1812
    aget v4, v3, v1

    aput v4, v2, v0

    .line 1813
    add-int/lit8 v1, v1, 0x1

    .line 1806
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1816
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->writeAppWidgets([I)V

    .line 1817
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public checkGesture(Landroid/gesture/Gesture;)Z
    .locals 4
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 356
    .local v2, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lcom/android/internal/widget/ILockSettings;->checkGesture(Landroid/gesture/Gesture;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 357
    .local v0, "matched":Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 361
    .end local v0    # "matched":Z
    :cond_0
    :goto_0
    return v0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "re":Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 374
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 376
    :goto_0
    return v2

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 402
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 404
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v5

    .line 409
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 410
    .local v1, "passwordHashLength":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 411
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_0

    .line 414
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 416
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    .line 417
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 419
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 341
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 343
    :goto_0
    return v2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkVoldPassword()Z
    .locals 3

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 388
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 390
    :goto_0
    return v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearEncryptionPassword()V
    .locals 2

    .prologue
    .line 1130
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 1131
    return-void
.end method

.method public clearLock(Z)V
    .locals 1
    .param p1, "isFallback"    # Z

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(ZI)V

    .line 566
    return-void
.end method

.method public clearLock(ZI)V
    .locals 8
    .param p1, "isFallback"    # Z
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 572
    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery(I)V

    .line 573
    :cond_0
    const/high16 v2, 0x10000

    move-object v0, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZI)V

    .line 575
    invoke-virtual {p0, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(ZI)V

    .line 576
    invoke-virtual {p0, v1, p1, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZI)V

    .line 577
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockGesture(Landroid/gesture/Gesture;)V

    .line 578
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockGestureEnabled(Z)V

    .line 579
    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v6, v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 580
    const-string v0, "lockscreen.password_type_alternate"

    invoke-direct {p0, v0, v6, v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 582
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 583
    return-void
.end method

.method deleteGallery(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 630
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 632
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 633
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 635
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteTempGallery()V
    .locals 3

    .prologue
    .line 621
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 622
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 624
    return-void
.end method

.method public getActivePasswordQuality()I
    .locals 6

    .prologue
    .line 509
    const/4 v0, 0x0

    .line 512
    .local v0, "activePasswordQuality":I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v4, 0x10000

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 514
    .local v1, "quality":I
    sparse-switch v1, :sswitch_data_0

    .line 561
    :cond_0
    :goto_0
    return v0

    .line 516
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    const/high16 v0, 0x10000

    goto :goto_0

    .line 521
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    const v0, 0x8000

    goto :goto_0

    .line 526
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    const/high16 v0, 0x20000

    goto :goto_0

    .line 531
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    const/high16 v0, 0x30000

    goto :goto_0

    .line 536
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    const/high16 v0, 0x40000

    goto :goto_0

    .line 541
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    const/high16 v0, 0x50000

    goto :goto_0

    .line 546
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    const/high16 v0, 0x60000

    goto :goto_0

    .line 551
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockGestureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    const/high16 v0, 0x80000

    goto :goto_0

    .line 556
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isThirdPartyKeyguardEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    const/16 v0, 0x800

    goto :goto_0

    .line 514
    nop

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_8
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_6
        0x80000 -> :sswitch_7
    .end sparse-switch
.end method

.method public getAppWidgets()[I
    .locals 1

    .prologue
    .line 1710
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()I
    .locals 3

    .prologue
    .line 303
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 305
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 310
    :goto_0
    return v1

    .line 308
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnabledTrustAgents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2035
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledTrustAgents(I)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2051
    const-string v7, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2052
    .local v5, "serialized":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2053
    const/4 v0, 0x0

    .line 2062
    :cond_0
    return-object v0

    .line 2055
    :cond_1
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2056
    .local v6, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2057
    .local v0, "activeTrustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 2058
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2059
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFallbackAppWidgetId()I
    .locals 4

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 1

    .prologue
    .line 1140
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1150
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1154
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 1155
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1158
    :cond_0
    return v0
.end method

.method public getLockPatternSize()B
    .locals 6

    .prologue
    .line 1576
    const-string v2, "lock_pattern_size"

    const-wide/16 v4, -0x1

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1577
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x80

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1578
    long-to-int v2, v0

    int-to-byte v2, v2

    .line 1580
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 1631
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1632
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1633
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    :cond_0
    move-wide v0, v4

    .line 1636
    .end local v0    # "deadline":J
    :cond_1
    return-wide v0
.end method

.method public getNextAlarm()Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 3

    .prologue
    .line 1680
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1681
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    return-object v1
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 742
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .locals 2

    .prologue
    .line 1986
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .locals 3

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .locals 3

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getThirdPartyKeyguardComponent()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 1094
    const-string v1, "lockscreen.third_party"

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "component":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidgetsEnabled()Z
    .locals 1

    .prologue
    .line 2015
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getWidgetsEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2019
    const-string v0, "lockscreen.widgets_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public hasWidgetsEnabledInKeyguard(I)Z
    .locals 3
    .param p1, "userid"    # I

    .prologue
    .line 2005
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets(I)[I

    move-result-object v1

    .line 2006
    .local v1, "widgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2007
    aget v2, v1, v0

    if-lez v2, :cond_0

    .line 2008
    const/4 v2, 0x1

    .line 2011
    :goto_1
    return v2

    .line 2006
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2011
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isBiometricWeakEverChosen()Z
    .locals 2

    .prologue
    .line 501
    const-string v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1442
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1444
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.android.facelock"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    const-string v2, "android.hardware.camera.front"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1461
    :cond_0
    :goto_0
    return v5

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1453
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public isBiometricWeakLivelinessEnabled()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1492
    const-string v2, "lock_biometric_weak_flags"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1493
    .local v0, "currentFlag":J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCredentialRequiredToDecrypt(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2077
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "require_password_to_decrypt"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2079
    .local v0, "value":I
    if-ne v0, v3, :cond_0

    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_voice_capable#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .locals 2

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_enable_emergency_call_while_sim_locked#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isFingerprintInstalled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1220
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cyanogenmod.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGestureEverChosen()Z
    .locals 2

    .prologue
    .line 491
    const-string v0, "lockscreen.gestureeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 1963
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method public isLockGestureEnabled()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v6, 0x80000

    .line 1427
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    move v0, v1

    .line 1431
    .local v0, "backupEnabled":Z
    :goto_0
    const-string v3, "lock_gesture_autolock"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0    # "backupEnabled":Z
    :cond_1
    move v0, v2

    .line 1427
    goto :goto_0

    .restart local v0    # "backupEnabled":Z
    :cond_2
    move v1, v2

    .line 1431
    goto :goto_1
.end method

.method public isLockPasswordEnabled()Z
    .locals 10

    .prologue
    .line 1384
    const-string v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1385
    .local v4, "mode":J
    const-string v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1386
    .local v2, "backupMode":J
    const-wide/32 v6, 0x40000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x20000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x30000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x50000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x60000

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 1391
    .local v1, "passwordEnabled":Z
    :goto_0
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 1397
    .local v0, "backupEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    :cond_2
    const/4 v6, 0x1

    :goto_2
    return v6

    .line 1386
    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1391
    .restart local v1    # "passwordEnabled":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1397
    .restart local v0    # "backupEnabled":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public isLockPatternEnabled()Z
    .locals 1

    .prologue
    .line 1405
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isLockPatternEnabled(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-wide/32 v8, 0x10000

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1412
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    move v0, v1

    .line 1417
    .local v0, "backupEnabled":Z
    :goto_0
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0    # "backupEnabled":Z
    :cond_1
    move v0, v2

    .line 1412
    goto :goto_0

    .restart local v0    # "backupEnabled":Z
    :cond_2
    move v1, v2

    .line 1417
    goto :goto_1
.end method

.method public isLockScreenDisabled()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 602
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "lockscreen.disabled"

    invoke-direct {p0, v4, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-eqz v4, :cond_3

    .line 604
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 605
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 606
    .local v2, "userCount":I
    const/4 v1, 0x0

    .line 607
    .local v1, "switchableUsers":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 608
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 609
    add-int/lit8 v1, v1, 0x1

    .line 607
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_1
    const/4 v4, 0x2

    if-ge v1, v4, :cond_2

    move v4, v5

    .line 614
    .end local v0    # "i":I
    .end local v1    # "switchableUsers":I
    .end local v2    # "userCount":I
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v4

    .restart local v0    # "i":I
    .restart local v1    # "switchableUsers":I
    .restart local v2    # "userCount":I
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    move v4, v6

    .line 612
    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "switchableUsers":I
    .end local v2    # "userCount":I
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    move v4, v6

    .line 614
    goto :goto_1
.end method

.method public isOwnerInfoEnabled()Z
    .locals 2

    .prologue
    .line 746
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPatternEverChosen()Z
    .locals 2

    .prologue
    .line 481
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .locals 2

    .prologue
    .line 1645
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .locals 2

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_enable_puk_unlock_screen#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1899
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1903
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    int-to-long v4, v7

    .line 1904
    .local v4, "mode":J
    const-wide/32 v8, 0x10000

    cmp-long v7, v4, v8

    if-nez v7, :cond_4

    move v2, v3

    .line 1905
    .local v2, "isPattern":Z
    :goto_0
    const-wide/32 v8, 0x80000

    cmp-long v7, v4, v8

    if-nez v7, :cond_5

    move v0, v3

    .line 1906
    .local v0, "isGesture":Z
    :goto_1
    const-wide/32 v8, 0x20000

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    const-wide/32 v8, 0x30000

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    const-wide/32 v8, 0x40000

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    const-wide/32 v8, 0x50000

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    const-wide/32 v8, 0x60000

    cmp-long v7, v4, v8

    if-nez v7, :cond_6

    :cond_0
    move v1, v3

    .line 1911
    .local v1, "isPassword":Z
    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists(I)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockGestureEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedGestureExists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1915
    .local v3, "secure":Z
    :cond_3
    :goto_3
    return v3

    .end local v0    # "isGesture":Z
    .end local v1    # "isPassword":Z
    .end local v2    # "isPattern":Z
    .end local v3    # "secure":Z
    :cond_4
    move v2, v6

    .line 1904
    goto :goto_0

    .restart local v2    # "isPattern":Z
    :cond_5
    move v0, v6

    .line 1905
    goto :goto_1

    .restart local v0    # "isGesture":Z
    :cond_6
    move v1, v6

    .line 1906
    goto :goto_2

    .restart local v1    # "isPassword":Z
    :cond_7
    move v3, v6

    .line 1911
    goto :goto_3
.end method

.method public isShowErrorPath()Z
    .locals 2

    .prologue
    .line 1603
    const-string v0, "lock_pattern_show_error_path"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1568
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThirdPartyKeyguardEnabled()Z
    .locals 6

    .prologue
    .line 1468
    const-string v1, "lockscreen.third_party"

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "component":Ljava/lang/String;
    const-string v1, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1470
    .local v2, "type":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v4, 0x800

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisibleDotsEnabled()Z
    .locals 2

    .prologue
    .line 1595
    const-string v0, "lock_pattern_dotsvisible"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisibleGestureEnabled()Z
    .locals 2

    .prologue
    .line 1554
    const-string v0, "lock_gesture_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 2

    .prologue
    .line 1514
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1354
    if-nez p1, :cond_0

    .line 1355
    const/4 v2, 0x0

    .line 1367
    :goto_0
    return-object v2

    .line 1357
    :cond_0
    const/4 v0, 0x0

    .line 1358
    .local v0, "algo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1360
    .local v2, "hashed":[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1361
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1362
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1363
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1364
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .line 1365
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

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

.method public patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1312
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p1, :cond_0

    .line 1313
    const/4 v1, 0x0

    .line 1327
    :goto_0
    return-object v1

    .line 1316
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 1317
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 1318
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 1319
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1320
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternSize()B

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1318
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1323
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1324
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1325
    .local v1, "hash":[B
    goto :goto_0

    .line 1326
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 1327
    goto :goto_0
.end method

.method public patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1261
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternSize()B

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAppWidget(I)Z
    .locals 6
    .param p1, "widgetId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1821
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1823
    .local v3, "widgets":[I
    array-length v5, v3

    if-nez v5, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return v4

    .line 1827
    :cond_1
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 1828
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 1829
    aget v5, v3, v0

    if-ne v5, p1, :cond_2

    .line 1828
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1831
    :cond_2
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 1835
    aget v5, v3, v0

    aput v5, v2, v1

    .line 1836
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1839
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->writeAppWidgets([I)V

    .line 1840
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove lock settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt()V
    .locals 3

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    .line 287
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 288
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 289
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/trust/TrustManager;->reportRequireCredentialEntry(I)V

    .line 290
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 294
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 296
    return-void
.end method

.method public requireCredentialEntry(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2069
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportRequireCredentialEntry(I)V

    .line 2070
    return-void
.end method

.method public resumeCall()V
    .locals 2

    .prologue
    .line 1956
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1957
    return-void
.end method

.method public saveLockGesture(Landroid/gesture/Gesture;)V
    .locals 1
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockGesture(Landroid/gesture/Gesture;Z)V

    .line 755
    return-void
.end method

.method public saveLockGesture(Landroid/gesture/Gesture;Z)V
    .locals 11
    .param p1, "gesture"    # Landroid/gesture/Gesture;
    .param p2, "isFallback"    # Z

    .prologue
    .line 764
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    .line 765
    .local v9, "userId":I
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, v9}, Lcom/android/internal/widget/ILockSettings;->setLockGesture(Landroid/gesture/Gesture;I)V

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 767
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1

    .line 768
    const-string v1, "lockscreen.gestureeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 769
    if-nez p2, :cond_0

    .line 770
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery(I)V

    .line 771
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x80000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 772
    const/high16 v1, 0x80000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 789
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v9    # "userId":I
    :goto_0
    return-void

    .line 775
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v9    # "userId":I
    :cond_0
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x8000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 776
    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x80000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 778
    invoke-direct {p0, v9}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak(I)V

    .line 779
    const v1, 0x8000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v9    # "userId":I
    :catch_0
    move-exception v10

    .line 787
    .local v10, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock gesture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 783
    .end local v10    # "re":Landroid/os/RemoteException;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v9    # "userId":I
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 915
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z

    .prologue
    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZ)V

    .line 927
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZ)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isFingerprintFallback"    # Z

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZI)V

    .line 942
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZI)V
    .locals 33
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isFingerprintPassword"    # Z
    .param p5, "userHandle"    # I

    .prologue
    .line 955
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 956
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v5, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 958
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    .line 961
    .local v24, "computedQuality":I
    if-nez p5, :cond_0

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 963
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 976
    :cond_0
    :goto_0
    if-nez p3, :cond_d

    .line 977
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery(I)V

    .line 978
    const-string v5, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 979
    if-eqz v24, :cond_c

    .line 980
    const/4 v7, 0x0

    .line 981
    .local v7, "letters":I
    const/4 v8, 0x0

    .line 982
    .local v8, "uppercase":I
    const/4 v9, 0x0

    .line 983
    .local v9, "lowercase":I
    const/4 v10, 0x0

    .line 984
    .local v10, "numbers":I
    const/4 v11, 0x0

    .line 985
    .local v11, "symbols":I
    const/4 v12, 0x0

    .line 986
    .local v12, "nonletter":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_9

    .line 987
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 988
    .local v23, "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_6

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_6

    .line 989
    add-int/lit8 v7, v7, 0x1

    .line 990
    add-int/lit8 v8, v8, 0x1

    .line 986
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 966
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v23    # "c":C
    .end local v26    # "i":I
    :cond_1
    const/high16 v5, 0x20000

    move/from16 v0, v24

    if-ne v0, v5, :cond_3

    const/16 v27, 0x1

    .line 968
    .local v27, "numeric":Z
    :goto_3
    const/high16 v5, 0x30000

    move/from16 v0, v24

    if-ne v0, v5, :cond_4

    const/16 v28, 0x1

    .line 970
    .local v28, "numericComplex":Z
    :goto_4
    if-nez v27, :cond_2

    if-eqz v28, :cond_5

    :cond_2
    const/16 v32, 0x3

    .line 972
    .local v32, "type":I
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1056
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v24    # "computedQuality":I
    .end local v27    # "numeric":Z
    .end local v28    # "numericComplex":Z
    .end local v32    # "type":I
    :catch_0
    move-exception v31

    .line 1058
    .local v31, "re":Landroid/os/RemoteException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to save lock password "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .end local v31    # "re":Landroid/os/RemoteException;
    :goto_6
    return-void

    .line 966
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v24    # "computedQuality":I
    :cond_3
    const/16 v27, 0x0

    goto :goto_3

    .line 968
    .restart local v27    # "numeric":Z
    :cond_4
    const/16 v28, 0x0

    goto :goto_4

    .line 970
    .restart local v28    # "numericComplex":Z
    :cond_5
    const/16 v32, 0x0

    goto :goto_5

    .line 991
    .end local v27    # "numeric":Z
    .end local v28    # "numericComplex":Z
    .restart local v7    # "letters":I
    .restart local v8    # "uppercase":I
    .restart local v9    # "lowercase":I
    .restart local v10    # "numbers":I
    .restart local v11    # "symbols":I
    .restart local v12    # "nonletter":I
    .restart local v23    # "c":C
    .restart local v26    # "i":I
    :cond_6
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_7

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_7

    .line 992
    add-int/lit8 v7, v7, 0x1

    .line 993
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 994
    :cond_7
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_8

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_8

    .line 995
    add-int/lit8 v10, v10, 0x1

    .line 996
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 998
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 999
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1002
    .end local v23    # "c":C
    :cond_9
    :try_start_1
    move/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p5

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1026
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v26    # "i":I
    :cond_a
    :goto_7
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 1027
    .local v29, "passwordHistory":Ljava/lang/String;
    if-nez v29, :cond_b

    .line 1028
    const-string v29, ""

    .line 1030
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v30

    .line 1031
    .local v30, "passwordHistoryLength":I
    if-nez v30, :cond_e

    .line 1032
    const-string v29, ""

    .line 1042
    :goto_8
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p5

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1055
    .end local v24    # "computedQuality":I
    .end local v29    # "passwordHistory":Ljava/lang/String;
    .end local v30    # "passwordHistoryLength":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    goto :goto_6

    .line 1007
    .restart local v24    # "computedQuality":I
    :cond_c
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p5

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_7

    .line 1012
    :cond_d
    const-string v5, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1014
    if-nez p4, :cond_a

    .line 1016
    const-string v5, "lockscreen.password_type"

    const-wide/32 v14, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1018
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak(I)V

    .line 1019
    const v14, 0x8000

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p5

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_7

    .line 1034
    .restart local v29    # "passwordHistory":Ljava/lang/String;
    .restart local v30    # "passwordHistoryLength":I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v25

    .line 1035
    .local v25, "hash":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1038
    const/4 v5, 0x0

    move-object/from16 v0, v25

    array-length v6, v0

    mul-int v6, v6, v30

    add-int v6, v6, v30

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_8

    .line 1045
    .end local v24    # "computedQuality":I
    .end local v25    # "hash":[B
    .end local v29    # "passwordHistory":Ljava/lang/String;
    .end local v30    # "passwordHistoryLength":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, p5

    invoke-interface {v5, v6, v0}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 1046
    if-nez p5, :cond_10

    .line 1048
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 1051
    :cond_10
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p5

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZ)V

    .line 643
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZZ)V
    .locals 1
    .param p2, "isFallback"    # Z
    .param p3, "isFingerprintFallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZI)V

    .line 653
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZZI)V
    .locals 15
    .param p2, "isFallback"    # Z
    .param p3, "isFingerprintFallback"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 665
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 666
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_4

    .line 668
    if-nez p4, :cond_0

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 670
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v13

    .line 671
    .local v13, "required":Z
    if-nez v13, :cond_2

    .line 672
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 679
    .end local v13    # "required":Z
    :cond_0
    :goto_0
    const-string v3, "lockscreen.patterneverchosen"

    const/4 v4, 0x1

    move/from16 v0, p4

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 680
    if-nez p2, :cond_3

    .line 681
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery(I)V

    .line 682
    const-string v3, "lockscreen.password_type"

    const-wide/32 v4, 0x10000

    move/from16 v0, p4

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 684
    const/high16 v3, 0x10000

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p4

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 702
    :cond_1
    :goto_1
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 706
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_2
    return-void

    .line 674
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v13    # "required":Z
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 675
    .local v14, "stringPattern":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-direct {p0, v3, v14}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v13    # "required":Z
    .end local v14    # "stringPattern":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 704
    .local v12, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t save lock pattern "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 687
    .end local v12    # "re":Landroid/os/RemoteException;
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_3
    :try_start_1
    const-string v3, "lockscreen.password_type_alternate"

    const-wide/32 v4, 0x10000

    move/from16 v0, p4

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 689
    if-nez p3, :cond_1

    .line 690
    const-string v3, "lockscreen.password_type"

    const-wide/32 v4, 0x8000

    move/from16 v0, p4

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 692
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak(I)V

    .line 693
    const v3, 0x8000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p4

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_1

    .line 699
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p4

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public savedGestureExists()Z
    .locals 3

    .prologue
    .line 428
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveGesture(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 430
    :goto_0
    return v1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPasswordExists()Z
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists(I)Z

    move-result v0

    return v0
.end method

.method public savedPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 468
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 470
    :goto_0
    return v1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPatternExists()Z
    .locals 1

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v0

    return v0
.end method

.method public savedPatternExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 448
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 450
    :goto_0
    return v1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBiometricWeakLivelinessEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 1478
    const-string v4, "lock_biometric_weak_flags"

    const-wide/16 v6, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1480
    .local v0, "currentFlag":J
    if-eqz p1, :cond_0

    .line 1481
    const-wide/16 v4, 0x1

    or-long v2, v0, v4

    .line 1485
    .local v2, "newFlag":J
    :goto_0
    const-string v4, "lock_biometric_weak_flags"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1486
    return-void

    .line 1483
    .end local v2    # "newFlag":J
    :cond_0
    const-wide/16 v4, -0x2

    and-long v2, v0, v4

    .restart local v2    # "newFlag":J
    goto :goto_0
.end method

.method public setCredentialRequiredToDecrypt(Z)V
    .locals 3
    .param p1, "required"    # Z

    .prologue
    .line 2083
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2084
    const-string v0, "LockPatternUtils"

    const-string v1, "Only device owner may call setCredentialRequiredForDecrypt()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :goto_0
    return-void

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "require_password_to_decrypt"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 299
    sput p1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 300
    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2031
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 2032
    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2039
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2040
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2041
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2042
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2044
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2046
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    const-string v3, "lockscreen.enabledtrustagents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2047
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2048
    return-void
.end method

.method public setLockGestureEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1547
    const-string v0, "lock_gesture_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1548
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1500
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(ZI)V

    .line 1501
    return-void
.end method

.method public setLockPatternEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1507
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1508
    return-void
.end method

.method public setLockPatternSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 1587
    const-string v0, "lock_pattern_size"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1588
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    .line 592
    const-string v2, "lockscreen.disabled"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 593
    return-void

    .line 592
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setLockoutAttemptDeadline()J
    .locals 6

    .prologue
    .line 1620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1621
    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1622
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 732
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 733
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo()V

    .line 734
    return-void
.end method

.method public setOwnerInfoEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 737
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 738
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo()V

    .line 739
    return-void
.end method

.method public setPassToSecurityView(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1611
    const-string v0, "lock_screen_pass_to_security_view"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1612
    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1657
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1658
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1982
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1983
    return-void
.end method

.method public setShowErrorPath(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1599
    const-string v0, "lock_pattern_show_error_path"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1600
    return-void
.end method

.method public setThirdPartyKeyguard(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1068
    if-eqz p1, :cond_2

    .line 1070
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1071
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1073
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 1074
    .local v1, "hasThirdPartyKeyguardPermission":Z
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1075
    .local v4, "perm":Ljava/lang/String;
    const-string v7, "android.permission.THIRD_PARTY_KEYGUARD"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1076
    const/4 v1, 0x1

    .line 1080
    .end local v4    # "perm":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_2

    .line 1081
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "android.permission.THIRD_PARTY_KEYGUARD"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1074
    .restart local v4    # "perm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1086
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "hasThirdPartyKeyguardPermission":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const-string v8, "lockscreen.third_party"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-direct {p0, v8, v7}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string v7, "lockscreen.password_type"

    if-eqz p1, :cond_4

    const-wide/16 v8, 0x800

    :goto_2
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1091
    return-void

    .line 1086
    :cond_3
    const-string v7, ""

    goto :goto_1

    .line 1088
    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_2
.end method

.method public setUseFingerprint()V
    .locals 1

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setUseFingerprint(I)V

    .line 1202
    return-void
.end method

.method public setUseFingerprint(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1208
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1209
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string v1, "lockscreen.password_type"

    const-wide/32 v4, 0x8000

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1210
    const-string v1, "lockscreen.password_biometric_type"

    const-wide/16 v4, 0x1

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1211
    const v1, 0x8000

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1213
    return-void
.end method

.method public setVisibleDotsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1591
    const-string v0, "lock_pattern_dotsvisible"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1592
    return-void
.end method

.method public setVisibleGestureEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1561
    const-string v0, "lock_gesture_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1562
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1521
    const-string v4, "lock_pattern_visible_pattern"

    invoke-direct {p0, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1524
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    .line 1525
    .local v3, "userId":I
    if-eqz v3, :cond_0

    .line 1541
    :goto_0
    return-void

    .line 1529
    :cond_0
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1530
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1531
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the user info"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1535
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1537
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v5, "PatternVisible"

    if-eqz p1, :cond_2

    const-string v4, "1"

    :goto_1
    invoke-interface {v1, v5, v4}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing pattern visible state"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1537
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setWidgetsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2023
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(ZI)V

    .line 2024
    return-void
.end method

.method public setWidgetsEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2027
    const-string v0, "lockscreen.widgets_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2028
    return-void
.end method

.method public shouldPassToSecurityView()Z
    .locals 2

    .prologue
    .line 1607
    const-string v0, "lock_screen_pass_to_security_view"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternSize()B

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;ZZ)V
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "shown"    # Z
    .param p3, "showIcon"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1930
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const v2, #android:string@lockscreen_return_to_call#t

    .local v2, "textId":I
    if-eqz p3, :cond_1

    const v1, #android:drawable@stat_sys_phone_call#t

    .local v1, "phoneCallIcon":I
    :goto_0
    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .end local v1    # "phoneCallIcon":I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .end local v2    # "textId":I
    :goto_2
    return-void

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .restart local v2    # "textId":I
    :cond_1
    move v1, v3

    goto :goto_0

    .end local v2    # "textId":I
    :cond_2
    const v2, #android:string@lockscreen_emergency_call#t

    .restart local v2    # "textId":I
    if-eqz p3, :cond_3

    const v0, #android:drawable@ic_emergency#t

    .local v0, "emergencyIcon":I
    :goto_3
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .end local v0    # "emergencyIcon":I
    :cond_3
    move v0, v3

    .line 1945
    goto :goto_3
.end method

.method public usingBiometricWeak()Z
    .locals 1

    .prologue
    .line 1165
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v0

    return v0
.end method

.method public usingBiometricWeak(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1172
    const-string v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1174
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingFingerprint()Z
    .locals 1

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->usingFingerprint(I)Z

    move-result v0

    return v0
.end method

.method public usingFingerprint(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1190
    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    long-to-int v1, v4

    .line 1192
    .local v1, "quality":I
    const-string v3, "lockscreen.password_biometric_type"

    const-wide/16 v4, -0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v0, v4

    .line 1193
    .local v0, "exactType":I
    const v3, 0x8000

    if-ne v1, v3, :cond_0

    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public writeFallbackAppWidgetId(I)V
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1777
    return-void
.end method

.method private setFlymeLockSettingsService()V
    .locals 1

    .prologue
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-void
.end method
