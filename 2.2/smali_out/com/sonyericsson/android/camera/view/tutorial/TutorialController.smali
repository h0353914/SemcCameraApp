.class public Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
.super Ljava/lang/Object;
.source "TutorialController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;,
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

.field private mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

.field private mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOpened:Z

.field private mOrientation:I

.field private mPostStartAnimationTask:Ljava/lang/Runnable;

.field private mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field private final mRootView:Landroid/view/ViewGroup;

.field private mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

.field private final mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/Window;)V
    .registers 4

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    .line 76
    iput v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 172
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mRootView:Landroid/view/ViewGroup;

    .line 173
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    .line 174
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    .line 175
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mHandler:Landroid/os/Handler;

    .line 176
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mWindow:Landroid/view/Window;

    .line 178
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->prepareTutorial()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->startSlideInAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Z)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setNavigationBarThemeLight(Z)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .registers 1

    .line 47
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateUiOrientation()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->release()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hide()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    return-object p0
.end method

.method private addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V
    .registers 6

    .line 301
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;-><init>(Landroid/content/Context;)V

    .line 302
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 304
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 305
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 309
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)Z

    .line 310
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    return-void
.end method

.method private addFlags(I)V
    .registers 3

    .line 786
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    if-eqz v0, :cond_9

    .line 787
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;->onAddFlags(I)V

    :cond_9
    return-void
.end method

.method private canHandleNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Z
    .registers 2

    .line 528
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    if-eq p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private clearFlags(I)V
    .registers 3

    .line 792
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    if-eqz v0, :cond_9

    .line 793
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;->onClearFlags(I)V

    :cond_9
    return-void
.end method

.method private getFadeOutAnimator(J)Landroid/animation/ObjectAnimator;
    .registers 8

    .line 634
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f251eb8    # 0.645f

    const v2, 0x3d3851ec    # 0.045f

    const v3, 0x3eb5c28f    # 0.355f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alpha"

    const/4 v2, 0x2

    .line 636
    new-array v2, v2, [F

    fill-array-data v2, :array_38

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 638
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 641
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 642
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 643
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

.method private getNextTutorialType(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;
    .registers 9

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-lez v0, :cond_6c

    const/4 v0, 0x0

    move v2, v0

    .line 478
    :goto_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 479
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 480
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v3

    .line 481
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    move v3, v0

    .line 482
    :goto_25
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_69

    .line 483
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_66

    add-int/lit8 v5, v3, 0x1

    .line 484
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 485
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    return-object p0

    :cond_40
    add-int/lit8 v4, v2, 0x1

    .line 487
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v5

    if-ge v4, v5, :cond_65

    .line 488
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 489
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v4

    .line 490
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v4

    .line 491
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_66

    .line 492
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    return-object p0

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

    .line 586
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f251eb8    # 0.645f

    const v2, 0x3d3851ec    # 0.045f

    const v3, 0x3eb5c28f    # 0.355f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 588
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070205

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 592
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

    .line 593
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

    .line 591
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 595
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 598
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 599
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 600
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method private getTutorialCount()I
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result p0

    :goto_c
    return p0
.end method

.method private getTutorialView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;
    .registers 5

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 511
    :goto_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 512
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 513
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
    .registers 2

    const-string v0, "hide()"

    .line 372
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 373
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setVisibility(I)V

    return-void
.end method

.method private isPortrait()Z
    .registers 2

    .line 363
    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private prepareTutorial()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->getViewFlipper()Landroid/widget/ViewFlipper;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_33

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 195
    :cond_33
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateFlipperAnimation()V

    return-void
.end method

.method private release()V
    .registers 4

    const-string v0, "release()"

    .line 346
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 347
    :goto_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 348
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 349
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 351
    :cond_1b
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setNavigationBarThemeLight(Z)V

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 355
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    .line 357
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 358
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 359
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    return-void
.end method

.method private setContentToView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z
    .registers 15

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget-object v6, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->tutorialTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 247
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v9, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    invoke-virtual {v8, v7, v9}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v8

    .line 248
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->isSimpleTutorialContent()Z

    move-result v9

    if-eqz v9, :cond_45

    .line 249
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 252
    :cond_45
    iget-boolean v9, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isReadMore:Z

    if-nez v9, :cond_4f

    invoke-virtual {v8, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->canShowContent(Lcom/sonyericsson/android/camera/setting/StoredSettings;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 253
    :cond_4f
    move-object v9, v8

    check-cast v9, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    .line 254
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getNavigatorType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->NORMAL:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    if-ne v9, v10, :cond_61

    .line 255
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 258
    :cond_61
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 265
    :cond_68
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_7c

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7c

    return p2

    :cond_7c
    move p1, p2

    .line 270
    :goto_7d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_9a

    .line 271
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    new-instance v7, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    .line 272
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-direct {v7, p0, v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    .line 271
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7d

    .line 275
    :cond_9a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b4

    .line 276
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 277
    invoke-virtual {p1, v5, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object p1

    if-nez p3, :cond_b0

    .line 278
    new-instance v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    goto :goto_b1

    :cond_b0
    move-object v1, p3

    :goto_b1
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    .line 282
    :cond_b4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_cc

    .line 283
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 284
    invoke-virtual {p1, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object p1

    if-nez p3, :cond_c9

    .line 286
    new-instance p3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    invoke-direct {p3, p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    :cond_c9
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    .line 290
    :cond_cc
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_db

    .line 291
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    goto :goto_f8

    .line 292
    :cond_db
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_ea

    .line 293
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    goto :goto_f8

    .line 294
    :cond_ea
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f8

    .line 295
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    :cond_f8
    :goto_f8
    const/4 p0, 0x1

    return p0
.end method

.method private setNavigationBarThemeLight(Z)V
    .registers 3

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1e

    .line 815
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_13

    or-int/lit8 p1, v0, 0x10

    goto :goto_15

    :cond_13
    and-int/lit8 p1, v0, -0x11

    .line 821
    :goto_15
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1e
    return-void
.end method

.method private show()V
    .registers 2

    const-string v0, "show()"

    .line 367
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 368
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setVisibility(I)V

    return-void
.end method

.method private startSlideInAnimation()V
    .registers 3

    .line 317
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->show()V

    .line 318
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

    .line 320
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

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

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_5

    return-void

    .line 559
    :cond_5
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const v0, 0x7f01001d

    const v1, 0x7f01001b

    goto :goto_17

    :cond_11
    const v0, 0x7f01001e

    const v1, 0x7f01001c

    .line 573
    :goto_17
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    .line 574
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 575
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    .line 578
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 579
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateUiOrientation()V
    .registers 4

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUiOrientation() E orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 409
    :goto_1b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 410
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 411
    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setUiOrientation(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 414
    :cond_31
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateFlipperAnimation()V

    const-string p0, "updateUiOrientation() X"

    .line 415
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public backToPreviousPage()Z
    .registers 2

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_1c

    .line 803
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_1c

    .line 805
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 806
    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .registers 3

    const-string v0, "close()"

    .line 338
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-eqz v0, :cond_14

    const-wide/16 v0, 0x12c

    .line 340
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getFadeOutAnimator(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_14
    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    return-void
.end method

.method public doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V
    .registers 4

    const-string v0, "doNextAction()"

    .line 434
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 436
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->canHandleNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 437
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getNextTutorialType(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 449
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 450
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;I)V

    .line 451
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_2e

    .line 453
    :cond_2b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    :goto_2e
    return-void

    :cond_2f
    return-void
.end method

.method public getCurrentType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;
    .registers 1

    .line 461
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    return-object p0
.end method

.method public getTutorialTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Z
    .registers 4

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-lez v0, :cond_2d

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 539
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object p0

    .line 540
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object p0

    .line 541
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_2d

    const/4 p0, 0x0

    return p0

    :cond_2d
    return v1
.end method

.method public isOpened()Z
    .registers 1

    .line 380
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    return p0
.end method

.method public open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z
    .registers 6

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string p0, "open()  :  is already accepted.In the middle of starting to open tutorial..."

    .line 202
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return v1

    .line 208
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setContentToView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z

    move-result p2

    if-nez p2, :cond_14

    return v1

    .line 212
    :cond_14
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_42

    const-string p2, "open()  :  is requested."

    .line 214
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 216
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    .line 218
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    iget-boolean p1, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isReadMore:Z

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->initSetupwizard(Z)V

    .line 219
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {p1, p2, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;I)V

    .line 223
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    .line 229
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_42
    return p3
.end method

.method public pause()V
    .registers 2

    const-string v0, "pause()"

    .line 327
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-eqz v0, :cond_11

    .line 329
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->release()V

    .line 330
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hide()V

    :cond_11
    return-void
.end method

.method public setOnClickTutorialButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;)V
    .registers 2

    .line 770
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    return-void
.end method

.method public setSystemUiAccessor(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;)V
    .registers 2

    .line 782
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 4

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiOrientation() E orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 390
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    if-eq v0, p1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_34

    .line 392
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 393
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p0, "setUiOrientation() X : Tutorial open animation is running."

    .line 394
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void

    .line 398
    :cond_31
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateUiOrientation()V

    :cond_34
    const-string p0, "setUiOrientation() X"

    .line 400
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void
.end method
