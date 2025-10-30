.class public Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SelfTimerCountDownNumberView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;
    }
.end annotation


# static fields
.field private static final ANIMATION_FADING_DURATION_MS:I = 0xfa

.field private static final ANIMATION_VALUE:I = 0xff

.field private static final SECOND_COUNT_MILLIS:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "SelfTimerCountDownNumberView"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

.field private mCountDownIconId:I

.field private mCountDownInitNum:I

.field private mCurrentCount:I

.field private mIsCountDownStarted:Z

.field private mIsTenDigit:Z

.field private mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 42
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 45
    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 42
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 43
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 45
    new-instance p2, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {p2, p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 42
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 43
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 45
    new-instance p2, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {p2, p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    return p0
.end method

.method static synthetic access$410(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I
    .registers 3

    .line 29
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->postNextUpdateEvent()V

    return-void
.end method

.method private getAnimationRatio(I)F
    .registers 2

    int-to-float p0, p1

    const/high16 p1, 0x437a0000    # 250.0f

    div-float/2addr p1, p0

    return p1
.end method

.method private getDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I
    .registers 4

    .line 187
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result p0

    const/16 v0, 0x5dc

    const/16 v1, 0x3e8

    if-ge p0, v1, :cond_d

    const/16 v0, 0x1f4

    goto :goto_15

    .line 189
    :cond_d
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result p0

    if-ne p0, v0, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    return v0
.end method

.method private postNextUpdateEvent()V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .registers 5

    .line 217
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getCountDownIconId()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    .line 219
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I

    move-result p1

    .line 220
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getAnimationRatio(I)F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 221
    fill-array-data v1, :array_42

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 222
    new-instance v2, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 223
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownInitNum:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 224
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 225
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_42
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private setImage()V
    .registers 12

    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    iget v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-le v1, v2, :cond_33

    .line 90
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsTenDigit:Z

    const v4, 0x7f070261

    if-eqz v1, :cond_28

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 93
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_47

    .line 94
    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setVisibility(I)V

    goto :goto_47

    .line 97
    :cond_28
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_47

    .line 101
    :cond_33
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsTenDigit:Z

    if-eqz v1, :cond_45

    .line 102
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_47

    .line 104
    invoke-virtual {p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setVisibility(I)V

    goto :goto_47

    .line 107
    :cond_45
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 110
    :cond_47
    :goto_47
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_54

    .line 113
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_154

    .line 115
    :cond_54
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsTenDigit:Z

    const-string v1, "]"

    const-string v4, "setImage() [Irregal Value = "

    const-string v5, "setImage() : mCurrentCount = "

    const v6, 0x7f08028c

    const v7, 0x7f08028b

    const v8, 0x7f08028a

    const/4 v9, 0x1

    if-eqz v0, :cond_c9

    .line 116
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    div-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_154

    if-eq v0, v9, :cond_c4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_bf

    const/4 v2, 0x3

    if-eq v0, v2, :cond_ba

    .line 129
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9e

    new-array v0, v9, [Ljava/lang/String;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 131
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 130
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_154

    :cond_9e
    new-array v0, v9, [Ljava/lang/String;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_154

    .line 118
    :cond_ba
    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_154

    .line 121
    :cond_bf
    invoke-virtual {p0, v7}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_154

    .line 124
    :cond_c4
    invoke-virtual {p0, v8}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_154

    .line 138
    :cond_c9
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    rem-int/lit8 v10, v0, 0xa

    packed-switch v10, :pswitch_data_156

    goto :goto_113

    :pswitch_d1
    const v0, 0x7f080292

    .line 140
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_154

    :pswitch_d9
    const v0, 0x7f080291

    .line 143
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_154

    :pswitch_e1
    const v0, 0x7f080290

    .line 146
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_154

    :pswitch_e9
    const v0, 0x7f08028f

    .line 149
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_154

    :pswitch_f0
    const v0, 0x7f08028e

    .line 152
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_154

    :pswitch_f7
    const v0, 0x7f08028d

    .line 155
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_154

    .line 158
    :pswitch_fe
    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_154

    .line 161
    :pswitch_102
    invoke-virtual {p0, v7}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_154

    .line 164
    :pswitch_106
    invoke-virtual {p0, v8}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_154

    :pswitch_10a
    if-le v0, v2, :cond_113

    const v0, 0x7f080289

    .line 168
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_154

    .line 173
    :cond_113
    :goto_113
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13a

    new-array v0, v9, [Ljava/lang/String;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 175
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 174
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_154

    :cond_13a
    new-array v0, v9, [Ljava/lang/String;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_154
    :goto_154
    return-void

    nop

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_10a
        :pswitch_106
        :pswitch_102
        :pswitch_fe
        :pswitch_f7
        :pswitch_f0
        :pswitch_e9
        :pswitch_e1
        :pswitch_d9
        :pswitch_d1
    .end packed-switch
.end method

.method private startCountDownNumber()V
    .registers 3

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 283
    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 284
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownInitNum:I

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 285
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V

    .line 286
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->postNextUpdateEvent()V

    return-void
.end method

.method private stopCountDownNumber()V
    .registers 3

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 291
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 293
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public cancelSelfTimerAnimation()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 208
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->stopCountDownNumber()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setIsTenDigit(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsTenDigit:Z

    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .registers 3

    .line 202
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownInitNum:I

    .line 203
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 213
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public startAnimation()V
    .registers 3

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 70
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 71
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    goto :goto_1f

    .line 73
    :cond_18
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    :goto_1f
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 76
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 78
    :cond_2c
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    if-nez v0, :cond_33

    .line 79
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startCountDownNumber()V

    :cond_33
    return-void
.end method
