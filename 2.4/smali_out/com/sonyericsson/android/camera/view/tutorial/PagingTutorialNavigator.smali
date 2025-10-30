.class public abstract Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;
.super Landroid/widget/FrameLayout;
.source "PagingTutorialNavigator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

.field protected final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    return-object p0
.end method


# virtual methods
.method protected abstract doFirstPage()V
.end method

.method protected abstract doLastPage()V
.end method

.method protected abstract doMiddlePage()V
.end method

.method protected abstract doSingleContent()V
.end method

.method protected abstract getPageCount()I
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 37
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->doSingleContent()V

    goto :goto_22

    .line 86
    :cond_b
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->updatePageSelected(I)V

    if-nez p1, :cond_14

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->doFirstPage()V

    goto :goto_22

    .line 90
    :cond_14
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->getPageCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1f

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->doLastPage()V

    goto :goto_22

    .line 93
    :cond_1f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->doMiddlePage()V

    :goto_22
    return-void
.end method

.method protected abstract setPageSize(I)V
.end method

.method protected setViewController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    return-void
.end method

.method protected updateClickEventListener(Landroid/view/View;)V
    .registers 3

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mOnClickListener:Landroid/view/View$OnClickListener;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updatePageSelected(I)V
    .registers 2

    return-void
.end method
