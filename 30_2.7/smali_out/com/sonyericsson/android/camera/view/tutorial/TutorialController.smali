.class public Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
.super Ljava/lang/Object;
.source "TutorialController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;
    }
.end annotation


# static fields
.field private static final FADE_OUT_ANIMATION_DURATION_MILLIS:J = 0x12cL

.field private static final SLIDE_IN_ANIMATION_DURATION_LAND_MILLIS:J = 0x2bcL

.field private static final SLIDE_IN_ANIMATION_DURATION_PORT_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "TutorialController"

.field private static final TRACE:Z = true


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

.field private mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOpened:Z

.field private mOrientation:I

.field private mPostStartAnimationTask:Ljava/lang/Runnable;

.field private mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

.field private final mRootView:Landroid/view/ViewGroup;

.field private mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

.field private final mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/Window;)V
    .registers 4

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    .line 76
    iput v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 164
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mRootView:Landroid/view/ViewGroup;

    .line 165
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    .line 166
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    .line 167
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mHandler:Landroid/os/Handler;

    .line 168
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mWindow:Landroid/view/Window;

    .line 170
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->prepareTutorial()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->show()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->startSlideInAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Z)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setNavigationBarThemeLight(Z)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1

    .line 47
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateUiOrientation()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->release()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hide()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    return-object p0
.end method

.method private addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V
    .registers 6

    .line 314
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;-><init>(Landroid/content/Context;)V

    .line 315
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 317
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 322
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)Z

    .line 323
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    return-void
.end method

.method private addFlags(I)V
    .registers 3

    .line 800
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    if-eqz v0, :cond_7

    .line 801
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;->onAddFlags(I)V

    :cond_7
    return-void
.end method

.method private canHandleNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z
    .registers 3

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    if-eq v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private clearFlags(I)V
    .registers 3

    .line 806
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    if-eqz v0, :cond_7

    .line 807
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;->onClearFlags(I)V

    :cond_7
    return-void
.end method

.method private getFadeOutAnimator(J)Landroid/animation/ObjectAnimator;
    .registers 8

    .line 647
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f251eb8    # 0.645f

    const v2, 0x3d3851ec    # 0.045f

    const v3, 0x3eb5c28f    # 0.355f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alpha"

    const/4 v2, 0x2

    .line 649
    new-array v2, v2, [F

    fill-array-data v2, :array_38

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 651
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 654
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 655
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 656
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    nop

    :array_38
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getNextTutorialType(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;
    .registers 9

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-lez v0, :cond_6c

    const/4 v0, 0x0

    move v2, v0

    .line 491
    :goto_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 492
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 493
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v3

    .line 494
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    move v3, v0

    .line 495
    :goto_25
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_69

    .line 496
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_66

    add-int/lit8 v5, v3, 0x1

    .line 497
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 498
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object p1

    :cond_40
    add-int/lit8 v4, v2, 0x1

    .line 500
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v5

    if-ge v4, v5, :cond_65

    .line 501
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 502
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v4

    .line 503
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v4

    .line 504
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_66

    .line 505
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object p1

    :cond_65
    return-object v1

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_6c
    return-object v1
.end method

.method private getSlideInAnimator(J)Landroid/animation/ObjectAnimator;
    .registers 9

    .line 599
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f251eb8    # 0.645f

    const v2, 0x3d3851ec    # 0.045f

    const v3, 0x3eb5c28f    # 0.355f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 601
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 605
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "translationY"

    goto :goto_29

    :cond_27
    const-string v2, "translationX"

    :goto_29
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 606
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_33

    neg-int v1, v1

    :cond_33
    int-to-float v1, v1

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x0

    const/4 v5, 0x1

    aput v1, v3, v5

    .line 604
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 608
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 611
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 612
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 613
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method private getTutorialCount()I
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    :goto_a
    return v0
.end method

.method private getTutorialView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;
    .registers 5

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 524
    :goto_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 525
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 526
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1b

    return-object v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    return-object v1
.end method

.method private hide()V
    .registers 3

    const-string v0, "hide()"

    .line 385
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setVisibility(I)V

    return-void
.end method

.method private isPortrait()Z
    .registers 3

    .line 376
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private prepareTutorial()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0901d9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 179
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->getViewFlipper()Landroid/widget/ViewFlipper;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_33

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 187
    :cond_33
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateFlipperAnimation()V

    return-void
.end method

.method private release()V
    .registers 4

    const-string v0, "release()"

    .line 359
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 360
    :goto_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 361
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 362
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 364
    :cond_1b
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setNavigationBarThemeLight(Z)V

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 367
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 368
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    .line 370
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 371
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 372
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    return-void
.end method

.method private setContentToView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 241
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-object v10, v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->tutorialTypes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_32
    :goto_32
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 248
    iget-object v12, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v13, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    invoke-virtual {v12, v11, v13}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v12

    .line 249
    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->isSimpleTutorialContent()Z

    move-result v13

    if-eqz v13, :cond_55

    .line 250
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p2

    goto :goto_32

    .line 252
    :cond_55
    iget-boolean v13, v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    if-eqz v13, :cond_62

    .line 253
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p2

    goto :goto_32

    .line 256
    :cond_62
    iget-boolean v13, v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isReadMore:Z

    if-nez v13, :cond_6f

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->canShowContent(Lcom/sonyericsson/android/camera/setting/StoredSettings;)Z

    move-result v14

    if-eqz v14, :cond_32

    goto :goto_71

    :cond_6f
    move-object/from16 v13, p2

    .line 257
    :goto_71
    move-object v14, v12

    check-cast v14, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    .line 258
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getNavigatorType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    move-result-object v14

    sget-object v15, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->NORMAL:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    if-ne v14, v15, :cond_83

    .line 259
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 262
    :cond_83
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 269
    :cond_8a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_a4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a4

    .line 270
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a4

    return v10

    :cond_a4
    move v1, v10

    .line 274
    :goto_a5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_c2

    .line 275
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    new-instance v12, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    .line 276
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-direct {v12, v0, v13}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    .line 275
    invoke-direct {v0, v11, v12}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a5

    .line 279
    :cond_c2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_dd

    .line 280
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v7, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 281
    invoke-virtual {v1, v7, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v1

    if-nez p3, :cond_d8

    .line 282
    new-instance v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    goto :goto_da

    :cond_d8
    move-object/from16 v3, p3

    :goto_da
    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    .line 286
    :cond_dd
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f8

    .line 287
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v3, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 288
    invoke-virtual {v1, v3, v4, v5}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v1

    if-nez p3, :cond_f3

    .line 290
    new-instance v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    goto :goto_f5

    :cond_f3
    move-object/from16 v3, p3

    :goto_f5
    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    .line 294
    :cond_f8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_113

    .line 295
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v3, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 296
    invoke-virtual {v1, v3, v8, v9}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v1

    if-nez p3, :cond_10e

    .line 297
    new-instance v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    goto :goto_110

    :cond_10e
    move-object/from16 v3, p3

    :goto_110
    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    .line 301
    :cond_113
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_122

    .line 302
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    goto :goto_14e

    .line 303
    :cond_122
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_131

    .line 304
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    goto :goto_14e

    .line 305
    :cond_131
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_140

    .line 306
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    goto :goto_14e

    .line 307
    :cond_140
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14e

    .line 308
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    :cond_14e
    :goto_14e
    const/4 v1, 0x1

    return v1
.end method

.method private setNavigationBarThemeLight(Z)V
    .registers 5

    .line 828
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1e

    .line 830
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 832
    invoke-interface {v0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    const/16 v2, 0x10

    if-eqz p1, :cond_18

    move p1, v2

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    if-eq v1, p1, :cond_1e

    .line 836
    invoke-interface {v0, p1, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_1e
    return-void
.end method

.method private show()V
    .registers 3

    const-string v0, "show()"

    .line 380
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setVisibility(I)V

    return-void
.end method

.method private startSlideInAnimation()V
    .registers 3

    .line 330
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->show()V

    .line 331
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x3e8

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x2bc

    :goto_e
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getSlideInAnimator(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private updateFlipperAnimation()V
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_5

    return-void

    .line 572
    :cond_5
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const v0, 0x7f01001c

    const v1, 0x7f01001a

    goto :goto_17

    :cond_11
    const v0, 0x7f01001d

    const v1, 0x7f01001b

    .line 586
    :goto_17
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    .line 587
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 588
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    .line 591
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 592
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateUiOrientation()V
    .registers 4

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUiOrientation() E orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 422
    :goto_1b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 423
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 424
    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setUiOrientation(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 427
    :cond_31
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateFlipperAnimation()V

    const-string v0, "updateUiOrientation() X"

    .line 428
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public backToPreviousPage()Z
    .registers 3

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_1a

    const v1, 0x7f090110

    .line 817
    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    .line 819
    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 820
    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 3

    const-string v0, "close()"

    .line 351
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-eqz v0, :cond_14

    const-wide/16 v0, 0x12c

    .line 353
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getFadeOutAnimator(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_14
    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    return-void
.end method

.method public doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .registers 4

    const-string v0, "doNextAction()"

    .line 447
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 449
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->canHandleNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 450
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getNextTutorialType(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 462
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 463
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    .line 464
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_2e

    .line 466
    :cond_2b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    :goto_2e
    return-void

    :cond_2f
    return-void
.end method

.method public getCurrentType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object v0
.end method

.method public getTutorialTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z
    .registers 5

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-lez v0, :cond_2d

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 552
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2d

    const/4 p1, 0x0

    return p1

    :cond_2d
    return v1
.end method

.method public isOpened()Z
    .registers 2

    .line 393
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    return v0
.end method

.method public open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z
    .registers 7

    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string p1, "open()  :  is already accepted.In the middle of starting to open tutorial..."

    .line 194
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return v1

    .line 200
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setContentToView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z

    move-result p2

    if-nez p2, :cond_14

    return v1

    .line 204
    :cond_14
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_48

    const-string p2, "open()  :  is requested."

    .line 206
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 208
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    .line 210
    iget-boolean p2, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    if-nez p2, :cond_3a

    .line 211
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isReadMore:Z

    iget-boolean v2, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    invoke-virtual {p2, v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->initSetupwizard(ZZ)V

    .line 213
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    .line 218
    :cond_3a
    new-instance p2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    .line 228
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_48
    return p3
.end method

.method public pause()V
    .registers 2

    const-string v0, "pause()"

    .line 340
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-eqz v0, :cond_11

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->release()V

    .line 343
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hide()V

    :cond_11
    return-void
.end method

.method public setOnClickTutorialButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;)V
    .registers 2

    .line 784
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    return-void
.end method

.method public setSystemUiAccessor(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;)V
    .registers 2

    .line 796
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 4

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiOrientation() E orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 403
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    if-eq v0, p1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_32

    .line 405
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 406
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "setUiOrientation() X : Tutorial open animation is running."

    .line 407
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void

    .line 411
    :cond_2f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateUiOrientation()V

    :cond_32
    const-string p1, "setUiOrientation() X"

    .line 413
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void
.end method
