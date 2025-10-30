.class public Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;
.super Ljava/lang/Object;
.source "TransitionAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;,
        Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;
    }
.end annotation


# instance fields
.field private final mFacingAnimation:Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;

.field private mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

.field private final mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmQueue(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastRequest(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ApplicationNavigator;Ljava/util/List;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;)V
    .registers 27
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
            "Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    .line 39
    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    .line 49
    new-instance v1, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    move-object v2, v1

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v2 .. v13}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;-><init>(Lcom/sonyericsson/android/camera/view/ApplicationNavigator;Ljava/util/List;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    .line 52
    new-instance v1, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p12

    invoke-direct {v1, v4, v3, v2}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;Landroid/view/View;Ljava/util/List;)V

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mFacingAnimation:Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;

    return-void
.end method

.method private getModeIconAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Landroid/animation/AnimatorSet;
    .registers 4

    .line 196
    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$1;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 p0, 0x0

    goto :goto_31

    .line 205
    :cond_15
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getFinishAnimation(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_31

    .line 201
    :cond_1e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 202
    invoke-static {p1}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getExecuteAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_31

    .line 198
    :cond_2b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getStartAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    :goto_31
    return-object p0
.end method

.method private getModeTouchAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Landroid/animation/AnimatorSet;
    .registers 4

    .line 164
    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$1;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_53

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/4 p0, 0x0

    goto :goto_59

    .line 186
    :cond_18
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getFinishAnimation(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_59

    .line 182
    :cond_21
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 183
    invoke-static {p1}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getCancelAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_59

    .line 169
    :cond_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 178
    :cond_46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 179
    invoke-static {p1}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getExecuteAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_59

    .line 166
    :cond_53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getStartAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    :goto_59
    return-object p0
.end method

.method public static getPreviewAlpha(Landroid/content/Context;I)F
    .registers 2

    .line 232
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->getSwipeThreshold(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getPreviewAlpha(IF)F

    move-result p0

    return p0
.end method

.method public static getSwipeThreshold(Landroid/content/Context;)I
    .registers 2

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07022b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getSwitchAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Landroid/animation/AnimatorSet;
    .registers 3

    .line 215
    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$1;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    const/4 p0, 0x0

    goto :goto_29

    .line 223
    :cond_15
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mFacingAnimation:Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getAfterSwitchAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_29

    .line 220
    :cond_1c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mFacingAnimation:Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getDraggingCancelAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_29

    .line 217
    :cond_23
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mFacingAnimation:Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getSwipeSwitchAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    :goto_29
    return-object p0
.end method

.method public static getSwitchSwipeThreshold(Landroid/content/Context;)I
    .registers 2

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private verifyLastRequest(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    .registers 6

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    .line 322
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-ne p1, v0, :cond_15

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 323
    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    return v2

    :cond_15
    return v1

    .line 329
    :cond_16
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    if-eq v0, v3, :cond_1f

    return v1

    .line 334
    :cond_1f
    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$1;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_42

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_34

    goto :goto_4f

    .line 349
    :cond_34
    iget-object p0, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-ne p0, p1, :cond_4f

    return v2

    .line 342
    :cond_3b
    iget-object p0, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-ne p0, p1, :cond_4f

    return v2

    .line 336
    :cond_42
    iget-object p0, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-eq p0, v0, :cond_50

    iget-object p0, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-ne p0, p1, :cond_4f

    goto :goto_50

    :cond_4f
    :goto_4f
    return v1

    :cond_50
    :goto_50
    return v2
.end method


# virtual methods
.method public pause()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 63
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 64
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_6

    .line 66
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    return-void
.end method

.method public requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    .registers 3

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;)Z
    .registers 8

    .line 106
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTarget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 111
    :cond_40
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->verifyLastRequest(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_48

    return v1

    .line 116
    :cond_48
    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$1;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    iget-object v2, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_88

    const/4 v3, 0x2

    if-eq v0, v3, :cond_83

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7e

    const/4 v3, 0x4

    if-eq v0, v3, :cond_79

    const/4 v3, 0x5

    if-eq v0, v3, :cond_62

    return v1

    .line 130
    :cond_62
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-ne v0, v3, :cond_74

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    .line 132
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mFacingAnimation:Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getSwitchAnimationView()Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->startDraggingStartedAnimation()V

    return v2

    .line 136
    :cond_74
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->getSwitchAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_8c

    .line 127
    :cond_79
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->getModeIconAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_8c

    .line 124
    :cond_7e
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->getModeIconAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_8c

    .line 121
    :cond_83
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->getModeTouchAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_8c

    .line 118
    :cond_88
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->getModeIconAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Landroid/animation/AnimatorSet;

    move-result-object v0

    :goto_8c
    if-nez v0, :cond_8f

    return v1

    .line 147
    :cond_8f
    new-instance v3, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;-><init>(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener-IA;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    :try_start_98
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 150
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    .line 151
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p0

    if-ne p0, v2, :cond_aa

    .line 152
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_98 .. :try_end_aa} :catch_ab

    :cond_aa
    return v2

    .line 155
    :catch_ab
    const-string/jumbo p0, "startAnimation failed."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1
.end method

.method public resume()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mModeAnimation:Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->resume()V

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mFacingAnimation:Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->resume()V

    return-void
.end method

.method public startSwitchDraggingAnimation(F)Z
    .registers 4

    .line 236
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "startDraggingAnimation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 237
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mLastRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    if-eqz v0, :cond_23

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    if-ne v0, v1, :cond_23

    .line 239
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->mFacingAnimation:Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getSwitchAnimationView()Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->startDraggingAnimation(F)V

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method
