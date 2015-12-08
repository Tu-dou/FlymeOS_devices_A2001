.class public Lcom/android/internal/util/pac/ActionChecker;
.super Ljava/lang/Object;
.source "ActionChecker.java"


# static fields
.field private static final mConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/util/pac/ActionChecker;->mConfigs:Ljava/util/ArrayList;

    .line 30
    sget-object v0, Lcom/android/internal/util/pac/ActionChecker;->mConfigs:Ljava/util/ArrayList;

    const-string v1, "navigation_bar_config"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/internal/util/pac/ActionChecker;->mConfigs:Ljava/util/ArrayList;

    const-string v1, "pie_buttons_config"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionConfigContainsAction(Lcom/android/internal/util/pac/ActionConfig;Ljava/lang/String;)Z
    .locals 1
    .param p0, "config"    # Lcom/android/internal/util/pac/ActionConfig;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/internal/util/pac/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/util/pac/ActionConfig;->getLongpressAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static containsAction(Landroid/content/Context;Lcom/android/internal/util/pac/ActionConfig;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/android/internal/util/pac/ActionConfig;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-static {p1, p2}, Lcom/android/internal/util/pac/ActionChecker;->actionConfigContainsAction(Lcom/android/internal/util/pac/ActionConfig;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 70
    :goto_0
    return v5

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/pac/Action;->isNavBarDefault(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lcom/android/internal/util/pac/ActionChecker;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v5, Lcom/android/internal/util/pac/ActionChecker;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v9, -0x2

    invoke-static {v8, v5, v9}, Landroid/provider/Settings$PAC;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "configsString":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 55
    move-object v4, v0

    .line 56
    .local v4, "input":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 57
    .local v3, "index":I
    const/4 v1, 0x0

    .line 58
    .local v1, "count":I
    :goto_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 63
    :cond_2
    if-gt v1, v6, :cond_3

    move v5, v7

    .line 64
    goto :goto_0

    :cond_3
    move v5, v6

    .line 66
    goto :goto_0

    .line 50
    .end local v1    # "count":I
    .end local v3    # "index":I
    .end local v4    # "input":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "configsString":Ljava/lang/String;
    :cond_5
    move v5, v7

    .line 70
    goto :goto_0
.end method
