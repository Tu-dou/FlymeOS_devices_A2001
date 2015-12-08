.class final Lcom/android/server/pm/PackageManagerService$3;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r2"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 8745
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 8746
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 8748
    .local v1, "v2":I
    if-eq v0, v1, :cond_2

    .line 8749
    if-le v0, v1, :cond_1

    .line 8768
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 8749
    goto :goto_0

    .line 8751
    :cond_2
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 8752
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 8753
    if-eq v0, v1, :cond_3

    .line 8754
    if-gt v0, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 8756
    :cond_3
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_4

    .line 8757
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 8759
    :cond_4
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 8760
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 8762
    if-eq v0, v1, :cond_5

    .line 8763
    if-gt v0, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 8765
    :cond_5
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_6

    .line 8766
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 8768
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8743
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$3;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
