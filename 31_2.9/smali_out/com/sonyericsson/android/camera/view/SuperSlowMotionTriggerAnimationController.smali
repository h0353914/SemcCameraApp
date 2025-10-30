.class public Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;
.super Ljava/lang/Object;
.source "SuperSlowMotionTriggerAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;
    }
.end annotation


# instance fields
.field private mAlphaAnimation:Landroid/view/animation/Animation;

.field private mBackground:Landroid/view/View;

.field private mLineLandscape:Landroid/view/View;

.field private mLinePortrait:Landroid/view/View;

.field private mListener:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

.field private mPreviewContainer:Landroid/widget/FrameLayout;

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mListener:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    return-object p0
.end method

.method private createLineAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .registers 23

    .line 129
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_31

    if-nez p2, :cond_1e

    .line 132
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_54

    .line 138
    :cond_1e
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_54

    :cond_31
    if-eqz p2, :cond_43

    .line 146
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_54

    .line 152
    :cond_43
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    :goto_54
    const-wide/16 v1, 0x12c

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const v1, 0x7f0b0001

    move-object/from16 v2, p1

    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public prepareViews()V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mPreviewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_9

    goto :goto_55

    .line 62
    :cond_9
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c00b0

    .line 67
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mBackground:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    const v2, 0x7f0900e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    const v2, 0x7f0900e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    const v1, 0x7f010024

    .line 72
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mAlphaAnimation:Landroid/view/animation/Animation;

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mAlphaAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;-><init>(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_55
    :goto_55
    return-void
.end method

.method public setup(Landroid/widget/FrameLayout;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mPreviewContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public start(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;Z)V
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mListener:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

    if-eqz p2, :cond_12

    .line 109
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->LANDSCAPE:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    goto :goto_14

    :cond_12
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    .line 112
    :goto_14
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    const/16 v2, 0x8

    if-ne v0, p1, :cond_3a

    .line 114
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->createLineAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_53

    .line 119
    :cond_3a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->createLineAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    :goto_53
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mBackground:Landroid/view/View;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
