.class public Lcom/android/internal/util/pac/ActionHelper;
.super Ljava/lang/Object;
.source "ActionHelper.java"


# static fields
.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SYSTEMUI_METADATA_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSTEM_METADATA_NAME:Ljava/lang/String; = "android"

.field public static useSystemUI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/util/pac/ActionHelper;->useSystemUI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "customIcon"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 206
    const/4 v6, -0x1

    .line 207
    .local v6, "resId":I
    const/4 v0, 0x0

    .line 208
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 209
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    .line 274
    :goto_0
    return-object v8

    .line 215
    :cond_0
    :try_start_0
    sget-boolean v9, Lcom/android/internal/util/pac/ActionHelper;->useSystemUI:Z

    if-eqz v9, :cond_3

    .line 216
    const-string v9, "com.android.systemui"

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 225
    .local v7, "systemUiResources":Landroid/content/res/Resources;
    :goto_1
    const-string v9, "**"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 227
    :try_start_1
    const-string v9, ".*?hasExtraIcon="

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "extraIconPath":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 229
    new-instance v4, Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 231
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 235
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "f":Ljava/io/File;
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-nez v0, :cond_2

    .line 236
    const/4 v9, 0x0

    invoke-static {p1, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 250
    .end local v3    # "extraIconPath":Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz p2, :cond_4

    const-string v9, "system_shortcut="

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 251
    const-string v8, "system_shortcut="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 253
    if-lez v6, :cond_7

    .line 254
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_0

    .line 218
    .end local v7    # "systemUiResources":Landroid/content/res/Resources;
    :cond_3
    :try_start_2
    invoke-static {p0}, Lcom/android/internal/util/pac/ActionHelper;->getNavbarThemedResources(Landroid/content/Context;)Landroid/content/res/Resources;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .restart local v7    # "systemUiResources":Landroid/content/res/Resources;
    goto :goto_1

    .line 220
    .end local v7    # "systemUiResources":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "ActionHelper:"

    const-string v10, "can\'t access systemui resources"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 238
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "systemUiResources":Landroid/content/res/Resources;
    :catch_1
    move-exception v2

    .line 239
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "com.android.systemui:drawable/ic_sysbar_null"

    invoke-virtual {v7, v9, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 241
    if-lez v6, :cond_2

    .line 242
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v8, v0

    .line 243
    goto/16 :goto_0

    .line 245
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v2

    .line 246
    .local v2, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    .line 256
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_4
    if-eqz p2, :cond_6

    const-string v9, "empty"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 257
    new-instance v4, Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v4    # "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 259
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/util/pac/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 264
    :cond_5
    const-string v9, "ActionHelper:"

    const-string v10, "can\'t access custom icon image"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 267
    .end local v4    # "f":Ljava/io/File;
    :cond_6
    const-string v8, "**"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 268
    invoke-static {v7, p1}, Lcom/android/internal/util/pac/ActionHelper;->getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v6

    .line 270
    if-lez v6, :cond_7

    .line 271
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto/16 :goto_0

    :cond_7
    move-object v8, v0

    .line 274
    goto/16 :goto_0
.end method

.method private static getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "systemUiResources"    # Landroid/content/res/Resources;
    .param p1, "clickAction"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 278
    const/4 v0, -0x1

    .line 281
    .local v0, "resId":I
    const-string v1, "**home**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const-string v1, "com.android.systemui:drawable/ic_sysbar_home"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 347
    :goto_0
    return v0

    .line 284
    :cond_0
    const-string v1, "**back**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    const-string v1, "com.android.systemui:drawable/ic_sysbar_back"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 287
    :cond_1
    const-string v1, "**recents**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    const-string v1, "com.android.systemui:drawable/ic_sysbar_recent"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 290
    :cond_2
    const-string v1, "**search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "**assist**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "**keyguard_search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    :cond_3
    const-string v1, "com.android.systemui:drawable/ic_sysbar_search"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 295
    :cond_4
    const-string v1, "**menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    const-string v1, "com.android.systemui:drawable/ic_sysbar_menu"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 298
    :cond_5
    const-string v1, "**menu_big**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 299
    const-string v1, "com.android.systemui:drawable/ic_sysbar_menu_big"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 301
    :cond_6
    const-string v1, "**ime**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 302
    const-string v1, "com.android.systemui:drawable/ic_sysbar_ime_switcher"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 304
    :cond_7
    const-string v1, "**power**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 305
    const-string v1, "com.android.systemui:drawable/ic_sysbar_power"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 307
    :cond_8
    const-string v1, "**power_menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 308
    const-string v1, "com.android.systemui:drawable/ic_sysbar_power_menu"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 310
    :cond_9
    const-string v1, "**ring_vib**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 311
    const-string v1, "com.android.systemui:drawable/ic_sysbar_vib"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 313
    :cond_a
    const-string v1, "**ring_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 314
    const-string v1, "com.android.systemui:drawable/ic_sysbar_silent"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 316
    :cond_b
    const-string v1, "**ring_vib_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 317
    const-string v1, "com.android.systemui:drawable/ic_sysbar_ring_vib_silent"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 319
    :cond_c
    const-string v1, "**kill**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 320
    const-string v1, "com.android.systemui:drawable/ic_sysbar_killtask"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 322
    :cond_d
    const-string v1, "**lastapp**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 323
    const-string v1, "com.android.systemui:drawable/ic_sysbar_lastapp"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 325
    :cond_e
    const-string v1, "**notifications**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 326
    const-string v1, "com.android.systemui:drawable/ic_sysbar_notifications"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 328
    :cond_f
    const-string v1, "**settings_panel**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 329
    const-string v1, "com.android.systemui:drawable/ic_sysbar_qs"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 331
    :cond_10
    const-string v1, "**pie**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 332
    const-string v1, "com.android.systemui:drawable/ic_sysbar_pie"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 334
    :cond_11
    const-string v1, "**nav_bar**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 335
    const-string v1, "com.android.systemui:drawable/ic_sysbar_navbar"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 337
    :cond_12
    const-string v1, "**screenshot**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 338
    const-string v1, "com.android.systemui:drawable/ic_sysbar_screenshot"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 340
    :cond_13
    const-string v1, "**torch**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 341
    const-string v1, "com.android.systemui:drawable/ic_sysbar_torch"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 344
    :cond_14
    const-string v1, "com.android.systemui:drawable/ic_sysbar_null"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static getLockscreenShortcutConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_shortcuts"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 54
    const-string v0, ""

    .line 57
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v4, v4, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static getNavBarConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-static {p0}, Lcom/android/internal/util/pac/ActionHelper;->getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getNavBarConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "entries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/internal/util/pac/ActionHelper;->getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_config"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    const-string v0, "**back**|**null**|empty|**home**|**null**|empty|**recents**|**null**|empty"

    .line 94
    :cond_0
    return-object v0
.end method

.method public static getNavbarThemedResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 200
    :cond_0
    :goto_0
    return-object v1

    .line 184
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 185
    .local v3, "themeConfig":Landroid/content/res/ThemeConfig;
    const/4 v1, 0x0

    .line 186
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_2

    .line 188
    :try_start_0
    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "navbarThemePkgName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "sysuiThemePkgName":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getThemedResourcesForApplication(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    .end local v0    # "navbarThemePkgName":Ljava/lang/String;
    .end local v2    # "sysuiThemePkgName":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0

    .line 195
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static getPieConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-static {p0}, Lcom/android/internal/util/pac/ActionHelper;->getPieProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPieConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "entries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/internal/util/pac/ActionHelper;->getPieProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getPieProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_buttons_config"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 129
    const-string v0, "**back**|**null**|empty|**home**|**null**|empty|**recents**|**null**|empty"

    .line 131
    :cond_0
    return-object v0
.end method

.method public static getPieSecondLayerConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-static {p0}, Lcom/android/internal/util/pac/ActionHelper;->getPieSecondLayerProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPieSecondLayerConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "entries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p0}, Lcom/android/internal/util/pac/ActionHelper;->getPieSecondLayerProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getPieSecondLayerProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_buttons_config_second_layer"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 164
    const-string v0, "**power_menu**|**null**|empty|**notifications**|**null**|empty|**search**|**null**|empty|**screenshot**|**null**|empty|**ime**|**null**|empty"

    .line 166
    :cond_0
    return-object v0
.end method

.method public static setLockscreenShortcutConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "actionConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/pac/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 64
    const-string v0, ""

    .line 68
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_shortcuts"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$PAC;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    return-void

    .line 66
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setNavBarConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "actionConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/pac/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 101
    const-string v0, "**back**|**null**|empty|**home**|**null**|empty|**recents**|**null**|empty"

    .line 105
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_config"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$PAC;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    return-void

    .line 103
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setPieConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "buttonsConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/pac/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 138
    const-string v0, "**back**|**null**|empty|**home**|**null**|empty|**recents**|**null**|empty"

    .line 142
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_buttons_config"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$PAC;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    return-void

    .line 140
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setPieSecondLayerConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "buttonsConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/pac/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 173
    const-string v0, "**power_menu**|**null**|empty|**notifications**|**null**|empty|**search**|**null**|empty|**screenshot**|**null**|empty|**ime**|**null**|empty"

    .line 177
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_buttons_config_second_layer"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$PAC;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    return-void

    .line 175
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/pac/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method
