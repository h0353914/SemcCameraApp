.class public Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
.super Ljava/lang/Object;
.source "HintTextViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

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

.field private mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

.field private mHintTextBackground:Landroid/view/ViewGroup;

.field private mHintTextContainer:Landroid/widget/FrameLayout;

.field private mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

.field private mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

.field private mOnLeftClickListener:Landroid/view/View$OnClickListener;

.field private mOnRightClickListener:Landroid/view/View$OnClickListener;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .registers 6

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    .line 70
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mOnLeftClickListener:Landroid/view/View$OnClickListener;

    .line 80
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mOnRightClickListener:Landroid/view/View$OnClickListener;

    .line 164
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    .line 165
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 166
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 168
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getHintTextViewContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->initHintTextBackground(Landroid/view/ViewGroup;)V

    .line 170
    invoke-direct {p0, p1, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->initHintTextView(Landroid/view/ViewGroup;I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 172
    fill-array-data p1, :array_4c

    const-string p2, "alpha"

    invoke-static {p2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 173
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-static {p2, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 174
    new-instance p2, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_4c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mAutoPowerOffExclusiveView:Landroid/view/View;

    return-object p0
.end method

.method private cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 7

    .line 538
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    new-array v0, v2, [Ljava/lang/String;

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel: content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 541
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 543
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4e

    new-array p0, v2, [Ljava/lang/String;

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel: content is not queued, content = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4e
    return v1

    .line 549
    :cond_4f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 553
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 555
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 559
    :cond_63
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 560
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isSameContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v0, :cond_83

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 562
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_83

    .line 563
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    goto :goto_86

    .line 565
    :cond_83
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_86
    :goto_86
    return v2
.end method

.method private cancelTimeoutCount()V
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    if-eqz v0, :cond_a

    .line 588
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->cancelCount()V

    const/4 v0, 0x0

    .line 589
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    :cond_a
    return-void
.end method

.method private hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 3

    if-nez p1, :cond_10

    .line 518
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_f

    const-string p0, "hideInternal: content is null"

    .line 519
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    return-void

    .line 524
    :cond_10
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelTimeoutCount()V

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->detach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    .line 527
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isToast()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 529
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2b

    const-string v0, "hideInternal: remove onetime content"

    .line 530
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 532
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 534
    :cond_30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;->onHintTextHidden()V

    return-void
.end method

.method private initHintTextBackground(Landroid/view/ViewGroup;)V
    .registers 4

    .line 708
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 710
    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    .line 711
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 712
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 713
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 714
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 715
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method private initHintTextView(Landroid/view/ViewGroup;I)V
    .registers 6

    const/16 v0, 0x30

    if-ne p2, v0, :cond_e

    const v0, 0x7f0900e1

    .line 721
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    goto :goto_17

    :cond_e
    const v0, 0x7f090143

    .line 723
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 725
    :goto_17
    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    .line 727
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    .line 728
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p1, v0, :cond_44

    .line 729
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    .line 731
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070137

    .line 730
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    .line 729
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 734
    :cond_44
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    .line 735
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setLayoutGravity(I)V

    .line 736
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mOnLeftClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mOnRightClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isSameContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 3

    if-eqz p1, :cond_7

    .line 670
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    if-eqz p2, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .registers 2

    .line 648
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 649
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    return-object p0

    .line 651
    :cond_11
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1e

    const-string p0, "referTop: queue is empty"

    .line 652
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 6

    if-nez p1, :cond_10

    .line 486
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_f

    const-string p0, "showInternal: content is null"

    .line 487
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    return-void

    .line 492
    :cond_10
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelTimeoutCount()V

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->attach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    .line 495
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTimedOutDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_30

    .line 497
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getFadeDuration()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    .line 499
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    goto :goto_30

    .line 501
    :cond_2d
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 504
    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;->onHintTextShown()V

    return-void
.end method

.method private startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 7

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    if-nez v0, :cond_c

    .line 581
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    .line 583
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    return-void
.end method

.method private startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 6

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    if-nez v0, :cond_c

    .line 573
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    .line 575
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .registers 8

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 297
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_28

    new-array p0, v1, [Ljava/lang/String;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel: content is empty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_28
    return v2

    :cond_29
    const/4 v0, 0x0

    .line 304
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    .line 305
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    move-object v0, v4

    :cond_47
    if-nez v0, :cond_68

    .line 314
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_67

    new-array p0, v1, [Ljava/lang/String;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel: content is not queued, tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_67
    return v2

    .line 319
    :cond_68
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result p0

    return p0
.end method

.method public clearAll()V
    .registers 2

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelTimeoutCount()V

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 212
    :goto_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    goto :goto_a

    .line 216
    :cond_18
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_25

    const-string p0, "clear: removed all entry"

    .line 217
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public clearToastContent()V
    .registers 3

    .line 228
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 230
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isToast()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 231
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    :cond_f
    return-void
.end method

.method public hide()Z
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v0, :cond_10

    .line 386
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 p0, 0x1

    return p0

    .line 390
    :cond_10
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1d

    const-string p0, "hide: hint text was already hidden"

    .line 391
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public isHighPriorityHintTextDisplayed()Z
    .registers 3

    .line 460
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 461
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    if-nez v0, :cond_c

    goto :goto_1c

    .line 465
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1c

    .line 466
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-ne p0, v0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    return v1
.end method

.method public isHintTextDisplayed(Ljava/lang/String;)Z
    .registers 4

    .line 441
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 443
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    if-nez v0, :cond_c

    goto :goto_1e

    .line 447
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1e

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    return v1
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

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isShown()Z
    .registers 1

    .line 473
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public post(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 8

    .line 248
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    new-array v0, v2, [Ljava/lang/String;

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post: content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 252
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 254
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4e

    new-array p0, v2, [Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post: content has been queued, content = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4e
    return v1

    .line 260
    :cond_4f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 262
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object p1

    .line 265
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isSameContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 267
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_8e

    new-array v3, v2, [Ljava/lang/String;

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post: top is changed, old = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 269
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 268
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 273
    :cond_8e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v1, :cond_a6

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 274
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_a6

    if-eqz v0, :cond_a3

    .line 277
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 279
    :cond_a3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_a6
    return v2
.end method

.method public setAutoPowerOffExclusiveView(Landroid/view/View;)V
    .registers 2

    .line 821
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mAutoPowerOffExclusiveView:Landroid/view/View;

    return-void
.end method

.method public setTouchable(Z)V
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTouchable(Z)V

    return-void
.end method

.method public setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .registers 5

    .line 416
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    if-nez p0, :cond_5

    return-void

    .line 419
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V

    return-void
.end method

.method public show(Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;)Z
    .registers 5

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v0, :cond_19

    .line 351
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_19

    .line 352
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_17

    const-string p0, "show: hint text was already shown"

    .line 353
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_17
    const/4 p0, 0x0

    return p0

    .line 358
    :cond_19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 360
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_3d

    .line 361
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 362
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_40

    .line 363
    :cond_39
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    goto :goto_40

    .line 366
    :cond_3d
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 369
    :cond_40
    :goto_40
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 p0, 0x1

    return p0
.end method

.method public showAll()Z
    .registers 2

    .line 333
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->show(Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;)Z

    move-result p0

    return p0
.end method

.method public updateHintTextContainer()V
    .registers 5

    .line 746
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    .line 747
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    .line 748
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 749
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreview()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 755
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 756
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 757
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v3, :cond_31

    .line 759
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_35

    .line 761
    :cond_31
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 764
    :goto_35
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 765
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 767
    :cond_48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
