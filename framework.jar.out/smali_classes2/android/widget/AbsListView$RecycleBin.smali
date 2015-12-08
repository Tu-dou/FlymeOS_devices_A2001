.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 6517
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6531
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;

    .prologue
    .line 6517
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4202(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;
    .param p1, "x1"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 6517
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method private clearAccessibilityFromScrap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6995
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6996
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6997
    return-void
.end method

.method private clearScrap(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6988
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6989
    .local v1, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 6990
    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 6989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6992
    :cond_0
    return-void
.end method

.method private pruneScrapViews()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 6872
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v12

    .line 6873
    .local v3, "maxViews":I
    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6874
    .local v11, "viewTypeCount":I
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6875
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_1

    .line 6876
    aget-object v4, v5, v1

    .line 6877
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 6878
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 6879
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 6880
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 6881
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-direct {p0, v12, v13}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 6880
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    .line 6875
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6885
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 6886
    .local v9, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v9, :cond_3

    .line 6887
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 6888
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 6889
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_2

    .line 6890
    invoke-direct {p0, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 6891
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 6892
    add-int/lit8 v1, v1, -0x1

    .line 6887
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6897
    .end local v10    # "v":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 6898
    .local v8, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v8, :cond_5

    .line 6899
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    .line 6900
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 6901
    .restart local v10    # "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_4

    .line 6902
    invoke-direct {p0, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 6903
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 6904
    add-int/lit8 v1, v1, -0x1

    .line 6899
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6908
    .end local v10    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 7000
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7001
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->access$4400(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7002
    return-void
.end method

.method private retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 10
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 6960
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 6961
    .local v5, "size":I
    if-lez v5, :cond_3

    .line 6963
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 6964
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 6965
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 6968
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 6969
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 6970
    .local v2, "id":J
    iget-wide v8, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 6971
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 6983
    .end local v0    # "i":I
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v2    # "id":J
    .end local v6    # "view":Landroid/view/View;
    :goto_1
    return-object v4

    .line 6973
    .restart local v0    # "i":I
    .restart local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .restart local v6    # "view":Landroid/view/View;
    :cond_0
    iget v7, v1, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v7, p2, :cond_1

    .line 6974
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 6975
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/AbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 6963
    .end local v4    # "scrap":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6979
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 6980
    .restart local v4    # "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/AbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 6983
    .end local v0    # "i":I
    .end local v4    # "scrap":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 6728
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 6729
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 6786
    :cond_0
    :goto_0
    return-void

    .line 6733
    :cond_1
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 6737
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 6738
    .local v2, "viewType":I
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView$RecycleBin;->mzProcessScrapView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6742
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 6748
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 6752
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 6753
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_7

    .line 6754
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_3

    .line 6757
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_2

    .line 6758
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 6760
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 6761
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_5

    .line 6764
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    .line 6765
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 6767
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 6770
    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 6771
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 6773
    :cond_6
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6776
    :cond_7
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_8

    .line 6777
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6782
    :goto_1
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 6783
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 6779
    :cond_8
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 5

    .prologue
    .line 6600
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 6601
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6602
    .local v1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 6611
    .end local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 6612
    return-void

    .line 6604
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6605
    .local v2, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 6606
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v3, v0

    .line 6607
    .restart local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 6605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method clearTransientStateViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6684
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 6685
    .local v3, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_1

    .line 6686
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 6687
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6688
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 6687
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6690
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 6693
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 6694
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 6695
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 6696
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 6697
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 6696
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6699
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 6701
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 6622
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 6623
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6625
    :cond_0
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 6628
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6629
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 6630
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6631
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 6633
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 6636
    aput-object v1, v0, v2

    .line 6638
    add-int v4, p2, v2

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 6629
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6641
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 6651
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 6652
    .local v1, "index":I
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6653
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 6654
    aget-object v2, v0, v1

    .line 6655
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 6658
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 6707
    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6708
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 6715
    :goto_0
    return-object v1

    .line 6710
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 6711
    .local v0, "whichScrap":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 6712
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6715
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 6662
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    .line 6663
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 6664
    .local v0, "id":J
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6665
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 6676
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 6668
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 6669
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 6670
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 6671
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6672
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 6676
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 6562
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 6563
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6564
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6565
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 6566
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 6565
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6569
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6570
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 6571
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 6572
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6573
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 6574
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 6573
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6570
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6578
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    .line 6579
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 6580
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 6581
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 6580
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6584
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_4

    .line 6585
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 6586
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 6587
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 6586
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6590
    .end local v0    # "count":I
    :cond_4
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6914
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 6915
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6924
    :cond_0
    return-void

    .line 6917
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6918
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6919
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 6920
    aget-object v1, v2, v0

    .line 6921
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6919
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeSkippedScrap()V
    .locals 4

    .prologue
    .line 6792
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 6800
    :goto_0
    return-void

    .line 6795
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6796
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 6797
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 6796
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6799
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 15

    .prologue
    const/4 v14, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 6806
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6807
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v13, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v13, :cond_2

    move v2, v11

    .line 6808
    .local v2, "hasListener":Z
    :goto_0
    iget v13, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v13, v11, :cond_3

    move v7, v11

    .line 6810
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6811
    .local v8, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 6812
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 6813
    aget-object v9, v0, v3

    .line 6814
    .local v9, "victim":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 6815
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    .line 6817
    .local v6, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v10, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 6819
    .local v10, "whichScrap":I
    const/4 v11, 0x0

    aput-object v11, v0, v3

    .line 6821
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 6823
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 6825
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v11, v11, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_4

    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v11, v11, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v11, :cond_4

    .line 6826
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v11, :cond_0

    .line 6827
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 6829
    :cond_0
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v11, v11, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v11, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 6830
    .local v4, "id":J
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 6812
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v10    # "whichScrap":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "victim":Landroid/view/View;
    :cond_2
    move v2, v12

    .line 6807
    goto :goto_0

    .restart local v2    # "hasListener":Z
    :cond_3
    move v7, v12

    .line 6808
    goto :goto_1

    .line 6831
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "victim":Landroid/view/View;
    .restart local v10    # "whichScrap":I
    :cond_4
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v11, v11, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v11, :cond_6

    .line 6832
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v11, :cond_5

    .line 6833
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 6835
    :cond_5
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v11, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 6836
    :cond_6
    if-eq v10, v14, :cond_1

    .line 6838
    invoke-direct {p0, v9, v12}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 6840
    :cond_7
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 6842
    if-eq v10, v14, :cond_1

    .line 6843
    invoke-direct {p0, v9, v12}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 6847
    :cond_8
    if-eqz v7, :cond_9

    .line 6848
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v8, v11, v10

    .line 6851
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 6852
    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v3

    iput v11, v6, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 6853
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6855
    if-eqz v2, :cond_1

    .line 6856
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v11, v9}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 6862
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v9    # "victim":Landroid/view/View;
    .end local v10    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 6863
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 6932
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 6933
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6934
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 6935
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 6936
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6935
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6939
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6940
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 6941
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 6942
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 6943
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 6944
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6943
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6940
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6949
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6950
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 6951
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 6952
    aget-object v7, v0, v2

    .line 6953
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 6954
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6951
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6957
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 6548
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 6549
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6552
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 6553
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 6554
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 6553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6556
    :cond_1
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6557
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6558
    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6559
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 6593
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mzProcessScrapView(Landroid/view/View;)V
    .locals 3
    .param p1, "scrap"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .local v1, "viewType":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
