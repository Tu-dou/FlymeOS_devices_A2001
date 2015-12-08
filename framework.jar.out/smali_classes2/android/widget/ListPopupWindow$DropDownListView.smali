.class Landroid/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field private static final CLICK_ANIM_ALPHA:I = 0x80

.field private static final CLICK_ANIM_DURATION:J = 0x96L

.field private static final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickAnimation:Landroid/animation/Animator;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1491
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/4 v0, 0x0

    const v1, #android:attr@dropDownListViewStyle#t

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListPopupWindow$DropDownListView;->mzSetDelayTopOverScrollEnabled()V

    return-void
.end method

.method static synthetic access$502(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .prologue
    .line 1483
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private clearPressedItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1647
    iput-boolean v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1648
    invoke-virtual {p0, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1649
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->updateSelectorState()V

    .line 1651
    iget v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1652
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1653
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1656
    :cond_0
    iget-object v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 1657
    iget-object v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1658
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1660
    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1627
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1628
    .local v4, "id":J
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1630
    .local v6, "anim":Landroid/animation/Animator;
    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1631
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1632
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListPopupWindow$DropDownListView$2;-><init>(Landroid/widget/ListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1638
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 1640
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1643
    :cond_0
    iput-object v6, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1644
    return-void

    .line 1628
    nop

    :array_0
    .array-data 4
        0xff
        0x80
        0xff
    .end array-data
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v5, 0x1

    .line 1663
    iput-boolean v5, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1666
    invoke-virtual {p0, p3, p4}, Landroid/widget/ListPopupWindow$DropDownListView;->drawableHotspotChanged(FF)V

    .line 1667
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1668
    invoke-virtual {p0, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1672
    :cond_0
    iget-boolean v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDataChanged:Z

    if-eqz v3, :cond_1

    .line 1673
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->layoutChildren()V

    .line 1678
    :cond_1
    iget v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mMotionPosition:I

    iget v4, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1679
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1680
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1682
    :cond_2
    iput p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mMotionPosition:I

    .line 1685
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, p3, v3

    .line 1686
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, p4, v3

    .line 1687
    .local v1, "childY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1688
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1689
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1693
    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelectedPositionInt(I)V

    .line 1694
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/ListPopupWindow$DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    .line 1698
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->refreshDrawableState()V

    .line 1700
    iget-object v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    .line 1701
    iget-object v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 1702
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1704
    :cond_4
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1762
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1742
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1752
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1732
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 1720
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 1722
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1723
    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1726
    :cond_0
    return-object v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v10, 0x1

    .line 1567
    const/4 v4, 0x1

    .line 1568
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 1570
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1571
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 1604
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 1605
    :cond_1
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->clearPressedItem()V

    .line 1609
    :cond_2
    if-eqz v4, :cond_7

    .line 1610
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v8, :cond_3

    .line 1611
    new-instance v8, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 1613
    :cond_3
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 1614
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1619
    :cond_4
    :goto_1
    return v4

    .line 1573
    :pswitch_0
    const/4 v4, 0x0

    .line 1574
    goto :goto_0

    .line 1576
    :pswitch_1
    const/4 v4, 0x0

    .line 1579
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1580
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 1581
    const/4 v4, 0x0

    .line 1582
    goto :goto_0

    .line 1585
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 1586
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 1587
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/ListPopupWindow$DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 1588
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 1589
    const/4 v3, 0x1

    .line 1590
    goto :goto_0

    .line 1593
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1594
    .local v2, "child":Landroid/view/View;
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-direct {p0, v2, v5, v8, v9}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 1595
    const/4 v4, 0x1

    .line 1597
    if-ne v0, v10, :cond_0

    .line 1598
    invoke-direct {p0, v2, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .line 1615
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v8, :cond_4

    .line 1616
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    goto :goto_1

    .line 1571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1708
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

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

.method private mzSetDelayTopOverScrollEnabled()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->setDelayTopOverScrollEnabled(Z)V

    return-void
.end method
