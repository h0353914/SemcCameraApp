.class Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;
.super Ljava/lang/Object;
.source "ModeTransitionAnimation.java"


# static fields
.field private static final ANIMATION_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATION_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATION_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final COMPLEMENT_ANIMATION_DURATION_RATIO:F = 0.5f

.field private static final EASE_OUT_IN:Landroid/view/animation/Interpolator;

.field private static final MODE_TRANSITION:Landroid/view/animation/Interpolator;

.field private static final VIEW_FINDER_FADE_DURATION:I = 0xc8


# instance fields
.field private final mCaptureButton:Landroid/view/View;

.field private final mCurrentModeIndicator:Landroid/widget/ImageView;

.field private final mFrontAngleSwitchButton:Landroid/view/View;

.field private final mGridLineView:Landroid/view/View;

.field private final mHorizontalLevelMeterView:Landroid/view/View;

.field private final mModeSelectorShortcut:Landroid/view/View;

.field private final mModeShortcutButton:Landroid/view/View;

.field private mModeSwitchImageView:Landroid/widget/ImageView;

.field private mModeSwitchTextView:Landroid/widget/TextView;

.field private final mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

.field private mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mPrimaryShortcutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryShortcutLeft:Landroid/view/View;

.field private final mSecondaryShortcutRight:Landroid/view/View;

.field private final mThumbnail:Landroid/view/View;

.field private final mViewFinderCover:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 67
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e28f5c3    # 0.165f

    const v3, 0x3f570a3d    # 0.84f

    const v4, 0x3ee147ae    # 0.44f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->MODE_TRANSITION:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f251eb8    # 0.645f

    const v3, 0x3d3851ec    # 0.045f

    const v4, 0x3eb5c28f    # 0.355f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/android/camera/view/ApplicationNavigator;Ljava/util/List;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/ApplicationNavigator;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    .line 79
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getCurrentModeIndicatorView()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCurrentModeIndicator:Landroid/widget/ImageView;

    .line 81
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    .line 82
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    .line 83
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    .line 84
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    .line 85
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    .line 86
    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    .line 87
    iput-object p8, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mHorizontalLevelMeterView:Landroid/view/View;

    .line 88
    iput-object p9, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    .line 89
    iput-object p11, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    .line 90
    iput-object p12, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    .line 91
    iput-object p10, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    return-void
.end method

.method private getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .registers 10

    const-string v0, "alpha"

    const/4 v1, 0x1

    .line 426
    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "scaleX"

    const/4 v4, 0x2

    .line 427
    new-array v5, v4, [F

    fill-array-data v5, :array_3c

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v5, "scaleY"

    .line 428
    new-array v6, v4, [F

    fill-array-data v6, :array_44

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const/4 v6, 0x3

    .line 429
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v3

    aput-object v2, v6, v1

    aput-object v5, v6, v4

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long v0, p2

    .line 431
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 432
    sget-object p2, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    :array_3c
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_44
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getEaseOutAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .registers 8

    const-string v0, "alpha"

    const/4 v1, 0x1

    .line 418
    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 419
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long v0, p2

    .line 420
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 421
    sget-object p2, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .registers 10

    const-string v0, "alpha"

    const/4 v1, 0x1

    .line 437
    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "scaleX"

    .line 438
    new-array v5, v1, [F

    aput v3, v5, v4

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v5, "scaleY"

    .line 439
    new-array v6, v1, [F

    aput v3, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v5, 0x3

    .line 440
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v4

    aput-object v2, v5, v1

    const/4 v0, 0x2

    aput-object v3, v5, v0

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long v0, p2

    .line 442
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 443
    sget-object p2, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getLinearFadeInAnimator(Landroid/view/View;IFF)Landroid/animation/Animator;
    .registers 8

    const-string v0, "alpha"

    const/4 v1, 0x2

    .line 404
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 405
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object p4, p3, v2

    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p2

    .line 406
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;
    .registers 8

    const-string v0, "alpha"

    const/4 v1, 0x2

    .line 411
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    const/4 v3, 0x0

    aput v3, v1, p3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 412
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p3, v2

    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p2

    .line 413
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private getModeIconAutoTransitionAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;I)Landroid/animation/ObjectAnimator;
    .registers 9

    .line 449
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v0

    array-length v0, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/NavigatorContents;->indexOf(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    .line 451
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    new-array v1, p1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModeIconAutoTransitionAnimation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 453
    :cond_29
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCurrentModeIndicator:Landroid/widget/ImageView;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 455
    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v5

    aput v5, v4, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    .line 456
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateModeIndicatorPosition(I)I

    move-result v0

    int-to-float v0, v0

    aput v0, v4, p1

    .line 453
    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long v0, p2

    .line 457
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 458
    sget-object p2, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->MODE_TRANSITION:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getModeSwitchEaseOutAnimation()Landroid/animation/AnimatorSet;
    .registers 9

    .line 375
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_19

    .line 381
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 382
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 384
    :cond_19
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 387
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/16 v3, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    .line 388
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 389
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 393
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 394
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 395
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 399
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method static getPreviewAlpha(IF)F
    .registers 2

    .line 370
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p0, p1, p0

    sub-float/2addr p1, p0

    return p1
.end method

.method private isScaleOut(Landroid/view/View;)Z
    .registers 4

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method private setupModeSwitchContainer()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getModeSwitchImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getModeSwitchNameView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method getCancelAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;)Landroid/animation/AnimatorSet;
    .registers 8

    .line 265
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xc8

    .line 269
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getModeIconAutoTransitionAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 273
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 277
    :cond_2d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_41

    .line 278
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_41
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    .line 284
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-direct {p0, v3, v4, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeInAnimator(Landroid/view/View;IFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mHorizontalLevelMeterView:Landroid/view/View;

    if-eqz p1, :cond_6b

    .line 292
    invoke-direct {p0, p1, v4, v5, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeInAnimator(Landroid/view/View;IFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_6b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->isScaleOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 306
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_a9
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method getExecuteAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;)Landroid/animation/AnimatorSet;
    .registers 9

    .line 209
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    const/high16 v5, 0x43480000    # 200.0f

    if-gez v4, :cond_1d

    sub-float v4, v3, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_1f

    :cond_1d
    const/16 v4, 0xc8

    :goto_1f
    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 218
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getModeIconAutoTransitionAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    sub-float v4, v3, v2

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-direct {p0, p1, v4, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeInAnimator(Landroid/view/View;IFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v5, 0x64

    if-eqz v3, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 226
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 231
    :cond_55
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_60

    .line 232
    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_60
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    invoke-direct {p0, p1, v4, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mHorizontalLevelMeterView:Landroid/view/View;

    if-eqz p1, :cond_a1

    .line 255
    invoke-direct {p0, p1, v4, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_a1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method getFinishAnimation(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/animation/AnimatorSet;
    .registers 7

    .line 314
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    .line 318
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 320
    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 321
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_55

    .line 324
    :cond_2b
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v2

    if-nez v2, :cond_55

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v2, :cond_55

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v2, :cond_55

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, v2, :cond_41

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v2, :cond_55

    :cond_41
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, v2, :cond_49

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, p2, :cond_55

    .line 331
    :cond_49
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateModeSwitchViews()V

    .line 332
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getModeSwitchEaseOutAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/16 v2, 0xc8

    if-eqz p2, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 338
    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 342
    :cond_71
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_7c

    .line 343
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_7c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->isScaleOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 355
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_ba
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    .line 359
    invoke-direct {p0, p1, v2, p2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    const/4 p2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v2, p2, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeInAnimator(Landroid/view/View;IFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method getStartAnimation()Landroid/animation/AnimatorSet;
    .registers 6

    .line 170
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    if-nez v2, :cond_11

    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->setupModeSwitchContainer()V

    .line 178
    :cond_11
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xc8

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 179
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 183
    :cond_2d
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz v2, :cond_41

    .line 184
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_41
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v4, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mHorizontalLevelMeterView:Landroid/view/View;

    if-eqz v2, :cond_84

    .line 200
    invoke-direct {p0, v2, v4, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_84
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method resume()V
    .registers 5

    .line 95
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "resume"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 98
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 104
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_20

    .line 111
    :cond_38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mHorizontalLevelMeterView:Landroid/view/View;

    if-eqz v0, :cond_85

    .line 136
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 140
    :cond_85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz v0, :cond_b4

    .line 151
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_b4
    return-void
.end method
