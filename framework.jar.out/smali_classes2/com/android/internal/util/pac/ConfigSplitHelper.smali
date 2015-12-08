.class public Lcom/android/internal/util/pac/ConfigSplitHelper;
.super Ljava/lang/Object;
.source "ConfigSplitHelper.java"


# static fields
.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "entries"    # Ljava/lang/String;
    .param p4, "isShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v15, 0x0

    .line 34
    .local v15, "counter":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v13, "actionConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/pac/ActionConfig;>;"
    const/4 v12, 0x0

    .line 37
    .local v12, "actionConfig":Lcom/android/internal/util/pac/ActionConfig;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 38
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 40
    .local v4, "settingsResources":Landroid/content/res/Resources;
    :try_start_0
    const-string v2, "com.android.settings"

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 46
    :goto_0
    const-string v2, "\\|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-object v5, v14, v17

    .line 47
    .local v5, "configValue":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    .line 48
    const/4 v2, 0x1

    if-ne v15, v2, :cond_0

    .line 49
    new-instance v12, Lcom/android/internal/util/pac/ActionConfig;

    .end local v12    # "actionConfig":Lcom/android/internal/util/pac/ActionConfig;
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/pac/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/util/pac/ActionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .restart local v12    # "actionConfig":Lcom/android/internal/util/pac/ActionConfig;
    :cond_0
    const/4 v2, 0x2

    if-ne v15, v2, :cond_1

    .line 54
    if-eqz p4, :cond_3

    .line 55
    invoke-virtual {v12, v5}, Lcom/android/internal/util/pac/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v15, 0x0

    .line 66
    :cond_1
    :goto_2
    const/4 v2, 0x3

    if-ne v15, v2, :cond_2

    .line 67
    invoke-virtual {v12, v5}, Lcom/android/internal/util/pac/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v15, 0x0

    .line 46
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 41
    .end local v5    # "configValue":Ljava/lang/String;
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :catch_0
    move-exception v16

    .line 42
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "ConfigSplitHelper"

    const-string v6, "can\'t access settings resources"

    move-object/from16 v0, v16

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v5    # "configValue":Ljava/lang/String;
    .restart local v14    # "arr$":[Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v18    # "len$":I
    :cond_3
    invoke-virtual {v12, v5}, Lcom/android/internal/util/pac/ActionConfig;->setLongpressAction(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 61
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/pac/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/internal/util/pac/ActionConfig;->setLongpressActionDescription(Ljava/lang/String;)V

    goto :goto_2

    .line 74
    .end local v5    # "configValue":Ljava/lang/String;
    :cond_4
    return-object v13
.end method

.method public static setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 5
    .param p1, "isShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pac/ActionConfig;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "actionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/pac/ActionConfig;>;"
    const-string v1, ""

    .line 82
    .local v1, "finalConfig":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/pac/ActionConfig;

    .line 87
    .local v0, "actionConfig":Lcom/android/internal/util/pac/ActionConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/util/pac/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    if-nez p1, :cond_1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/util/pac/ActionConfig;->getLongpressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/util/pac/ActionConfig;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "actionConfig":Lcom/android/internal/util/pac/ActionConfig;
    :cond_2
    return-object v1
.end method
