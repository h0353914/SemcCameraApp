.class public Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
.super Ljava/lang/Object;
.source "HintTextViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;,
        Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;,
        Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;,
        Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;,
        Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HintTextViewController"


# instance fields
.field private mAutoPowerOffExclusiveView:Landroid/view/View;

.field private mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field private mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sonyericsson/android/camera/view/hint/HintTextContent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

.field private mFaultDetectionPreviewLister:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;

.field private mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

.field private mHintTextBackground:Landroid/view/ViewGroup;

.field private mHintTextContainer:Landroid/widget/FrameLayout;

.field private mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

.field private mIsHintTextVisible:Z

.field private mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .registers 6

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    .line 74
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 160
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    .line 161
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 163
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->initHintTextBackground(Landroid/view/ViewGroup;)V

    .line 164
    invoke-direct {p0, p1, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->initHintTextView(Landroid/view/ViewGroup;I)V

    const-string p1, "alpha"

    const/4 p2, 0x2

    .line 166
    new-array p2, p2, [F

    fill-array-data p2, :array_40

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-static {p2, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_40
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/view/View;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mAutoPowerOffExclusiveView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionPreviewLister:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 7
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 583
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 584
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel: content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 586
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 588
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4a

    .line 589
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel: content is not queued, content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4a
    return v1

    .line 594
    :cond_4b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 598
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 600
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 604
    :cond_5f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 605
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isSameContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 606
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isToast()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 607
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 609
    :cond_74
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz p1, :cond_87

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 610
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_87

    .line 611
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_87
    return v2
.end method

.method private cancelTimeoutCount()V
    .registers 2

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    if-eqz v0, :cond_a

    .line 634
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->cancelCount()V

    const/4 v0, 0x0

    .line 635
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    :cond_a
    return-void
.end method

.method private hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 3
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_10

    .line 558
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_f

    const-string p1, "hideInternal: content is null"

    .line 559
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    return-void

    .line 564
    :cond_10
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelTimeoutCount()V

    .line 566
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isFaultDetectionHintText(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->detach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    .line 568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_29

    .line 570
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->detach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    .line 573
    :goto_29
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isToast()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 575
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3c

    const-string v0, "hideInternal: remove onetime content"

    .line 576
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 578
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_41
    return-void
.end method

.method private initHintTextBackground(Landroid/view/ViewGroup;)V
    .registers 4

    .line 742
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 744
    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    .line 745
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 746
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 747
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 748
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 749
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method private initHintTextView(Landroid/view/ViewGroup;I)V
    .registers 6

    const/16 v0, 0x30

    if-ne p2, v0, :cond_e

    const v0, 0x7f0900e6

    .line 755
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    goto :goto_17

    :cond_e
    const v0, 0x7f09014e

    .line 757
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 759
    :goto_17
    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    .line 761
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    .line 762
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p1, v0, :cond_44

    .line 763
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    .line 765
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070118

    .line 764
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    .line 763
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 768
    :cond_44
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    .line 769
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setLayoutGravity(I)V

    .line 770
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    .line 774
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->setLayoutGravity(I)V

    .line 776
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 777
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isFaultDetectionHintText(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 3

    .line 781
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    if-nez v0, :cond_b

    instance-of p1, p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private isSameContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 3
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    .line 716
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    if-eqz p2, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method private referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 695
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    return-object v0

    .line 697
    :cond_11
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const-string v0, "referTop: queue is empty"

    .line 698
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 6
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_10

    .line 496
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_f

    const-string p1, "showInternal: content is null"

    .line 497
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    return-void

    .line 502
    :cond_10
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelTimeoutCount()V

    .line 503
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    if-eqz v0, :cond_3b

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->initFaultDetectionButton()V

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->setFaultDetectionCloseButtonVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    .line 507
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->setFaultDetectionCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->attach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    .line 519
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const-string v1, "preview"

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendFaultDetectionEvent(Ljava/lang/String;)V

    goto :goto_69

    .line 520
    :cond_3b
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    if-eqz v0, :cond_64

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->initFaultDetectionButton()V

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->setFaultDetectionCheckButtonVisible()V

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    move-object v1, p1

    check-cast v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    .line 524
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->getShowContentButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 523
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->setFaultDetectionCheckButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->attach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    .line 526
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const-string v1, "snapshot"

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendFaultDetectionEvent(Ljava/lang/String;)V

    goto :goto_69

    .line 528
    :cond_64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->attach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    .line 532
    :goto_69
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->shouldVibrate()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_FOR_FAULT_DETECTOR:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/VibrationManager;->vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V

    .line 536
    :cond_76
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTimedOutDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8e

    .line 538
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getFadeDuration()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8b

    .line 540
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    goto :goto_8e

    .line 542
    :cond_8b
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method private startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 7

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    if-nez v0, :cond_c

    .line 627
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    .line 629
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    return-void
.end method

.method private startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 6

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    if-nez v0, :cond_c

    .line 619
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    .line 621
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    .line 298
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    .line 299
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel: content is empty = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_26
    return v2

    :cond_27
    const/4 v0, 0x0

    .line 305
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    .line 306
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object v0, v4

    :cond_45
    if-nez v0, :cond_64

    .line 315
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_63

    .line 316
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel: content is not queued, tag = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_63
    return v2

    .line 320
    :cond_64
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result p1

    return p1
.end method

.method public clearAll()V
    .registers 2

    .line 201
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelTimeoutCount()V

    .line 204
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 206
    :goto_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    goto :goto_a

    .line 210
    :cond_18
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_25

    const-string v0, "clear: removed all entry"

    .line 211
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public clearToastContent()V
    .registers 3

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 224
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isToast()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 225
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    :cond_f
    return-void
.end method

.method public hide()Z
    .registers 3

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mIsHintTextVisible:Z

    .line 388
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v1, :cond_13

    .line 389
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v0, 0x1

    return v0

    .line 393
    :cond_13
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_20

    const-string v1, "hide: hint text was already hidden"

    .line 394
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_20
    return v0
.end method

.method public isFaultDetectionHintDisplayed(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 461
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    if-nez v0, :cond_c

    goto :goto_1f

    .line 467
    :cond_c
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    return v2

    :cond_1f
    :goto_1f
    return v2
.end method

.method public isHintTextDisplayed(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 441
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    if-nez v0, :cond_c

    goto :goto_1f

    .line 447
    :cond_c
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    return v2

    :cond_1f
    :goto_1f
    return v2
.end method

.method public isHintTextVisible(Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;)Z
    .registers 3

    .line 482
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mIsHintTextVisible:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v0, :cond_10

    .line 483
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public isNoTimeOutHinTextDisplayed()Z
    .registers 5

    .line 428
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 430
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTimedOutDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public post(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 8
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 242
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 243
    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post: content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 246
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 248
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4a

    .line 249
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post: content has been queued, content = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4a
    return v2

    .line 254
    :cond_4b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 257
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isFaultDetectionHintText(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isFaultDetectionHintText(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 258
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gtz v3, :cond_6c

    return v2

    .line 263
    :cond_6c
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object p1

    .line 266
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isSameContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result v3

    if-nez v3, :cond_bb

    .line 268
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_a3

    .line 269
    new-array v3, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post: top is changed, old = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 269
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 274
    :cond_a3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v2, :cond_bb

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 275
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_bb

    if-eqz v0, :cond_b8

    .line 278
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 280
    :cond_b8
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_bb
    return v1
.end method

.method public setAutoPowerOffExclusiveView(Landroid/view/View;)V
    .registers 2

    .line 864
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mAutoPowerOffExclusiveView:Landroid/view/View;

    return-void
.end method

.method public setHintTextFaultDetectionPreviewEventLister(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;)V
    .registers 2

    .line 884
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionPreviewLister:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;

    return-void
.end method

.method public setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .registers 6

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    if-nez v0, :cond_5

    return-void

    .line 414
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    if-nez v0, :cond_d

    return-void

    .line 419
    :cond_d
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V

    return-void
.end method

.method public show(Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;)Z
    .registers 6
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mIsHintTextVisible:Z

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v1, :cond_1c

    .line 353
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_1c

    .line 354
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1a

    const-string p1, "show: hint text was already shown"

    .line 355
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1a
    const/4 p1, 0x0

    return p1

    .line 360
    :cond_1c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 362
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_40

    .line 363
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v2, :cond_3c

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 364
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_43

    .line 365
    :cond_3c
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    goto :goto_43

    .line 368
    :cond_40
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 371
    :cond_43
    :goto_43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return v0
.end method

.method public showAll()Z
    .registers 2

    .line 334
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->ULTRA_LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->show(Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;)Z

    move-result v0

    return v0
.end method

.method public updateHintTextContainer(Landroid/view/View;II)V
    .registers 6

    .line 792
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    .line 793
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 794
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 795
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 796
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 797
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p2, 0x10

    .line 798
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_35

    .line 802
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 803
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne p2, p3, :cond_31

    .line 805
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_35

    .line 807
    :cond_31
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 810
    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
