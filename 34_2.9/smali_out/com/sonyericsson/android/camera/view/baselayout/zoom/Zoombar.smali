.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;
.super Landroid/widget/FrameLayout;
.source "Zoombar.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DELAY_ZOOMBAR_HIDE:I = 0x3e8

.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field private static final IMMEDIATE_ANIMATION_DURATION_IN_MILLIS:J = 0x0L

.field private static final INVISIBLE_ALPHA:F = 0.0f

.field private static final INVISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final MIN_VALUE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Zoombar"

.field private static final VISIBLE_ALPHA:F = 1.0f

.field private static final VISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L


# instance fields
.field private mCurText:Ljava/lang/String;

.field private mHideAnimationlistener:Landroid/animation/Animator$AnimatorListener;

.field private final mHideEvent:Ljava/lang/Runnable;

.field private mLeftIndicator:Landroid/widget/ImageView;

.field private mRightIndicator:Landroid/widget/ImageView;

.field private mValueIndicator:Landroid/widget/Button;

.field private mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomStep:I

.field private mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

.field private mZoomValue:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurText(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mCurText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideWithAnimation(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideWithAnimation(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 86
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomValue:F

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomStep:I

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    .line 103
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideAnimationlistener:Landroid/animation/Animator$AnimatorListener;

    .line 341
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$3;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    return-void
.end method

.method private grayOutWithoutAnimation()V
    .registers 3

    .line 375
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    .line 376
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    .line 377
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 378
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_22
    return-void
.end method

.method private hideWithAnimation(Z)V
    .registers 5

    .line 365
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_e

    const-wide/16 v1, 0x64

    goto :goto_10

    :cond_e
    const-wide/16 v1, 0x0

    .line 367
    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideAnimationlistener:Landroid/animation/Animator$AnimatorListener;

    .line 370
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showWithAnimation(Z)V
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 350
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowZoom(Z)V

    .line 353
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 355
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1c

    const-wide/16 v0, 0x64

    goto :goto_1e

    :cond_1c
    const-wide/16 v0, 0x0

    .line 356
    :goto_1e
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 359
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private validateZoomParameters(I)Z
    .registers 3

    .line 391
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 395
    :cond_6
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_17

    .line 396
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    return v0
.end method


# virtual methods
.method public getCurrentStep()I
    .registers 1

    .line 338
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomStep:I

    return p0
.end method

.method public getCurrentZoomValue()F
    .registers 1

    .line 334
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomValue:F

    return p0
.end method

.method public getZoomRatios()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    return-object p0
.end method

.method public grayOut()V
    .registers 2

    .line 327
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 328
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->grayOutWithoutAnimation()V

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoomValueClickable(Z)V

    :cond_d
    return-void
.end method

.method public hideDelayed()V
    .registers 4

    .line 305
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 307
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void
.end method

.method public hideImmediately()V
    .registers 3

    .line 315
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 316
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 318
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideWithAnimation(Z)V

    :cond_15
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090106

    .line 154
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    const v0, 0x7f090169

    .line 155
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    const v0, 0x7f09021f

    .line 156
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/Button;

    const v1, 0x7f090117

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAccessibilityTraversalAfter(I)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 2

    .line 273
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/Button;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setRotation(F)V

    return-void
.end method

.method public setZoomRatios(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    return-void
.end method

.method public setZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    return-void
.end method

.method public setZoomValueClickable(Z)V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    if-eqz p1, :cond_10

    .line 186
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/Button;

    const p1, 0x7f0803af

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_16

    .line 188
    :cond_10
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_16
    return-void
.end method

.method public setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-void
.end method

.method public show()V
    .registers 3

    .line 277
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 280
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->showWithAnimation(Z)V

    return-void
.end method

.method public showImmediately()V
    .registers 3

    .line 291
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 294
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 296
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->showWithAnimation(Z)V

    return-void
.end method

.method public zoom(IIF)I
    .registers 10

    .line 217
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3b

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "zoom() current:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxZoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zoomRatios:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 224
    :cond_3b
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->validateZoomParameters(I)Z

    move-result v0

    if-nez v0, :cond_45

    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideImmediately()V

    return p1

    :cond_45
    const/4 v0, 0x0

    if-gez p1, :cond_49

    move p1, v0

    :cond_49
    if-le p1, p2, :cond_4c

    goto :goto_4d

    :cond_4c
    move p2, p1

    .line 236
    :goto_4d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 238
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070124

    .line 240
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 241
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 242
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 243
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v1, v2

    sub-int/2addr v4, v3

    .line 246
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v3

    sub-int p1, v4, p1

    mul-int/2addr v1, p1

    div-int/2addr v1, v4

    add-int/2addr v1, v2

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 250
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 249
    const-string v3, "%.1f"

    invoke-static {p1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 253
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 254
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomValue:F

    .line 256
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomStep:I

    .line 258
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 259
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 261
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_eb

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "zoom() position:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " srPosition:0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 266
    :cond_eb
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, v3, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mCurText:Ljava/lang/String;

    .line 267
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mCurText:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomRatio(F)V

    .line 268
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mCurText:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialTapEvent(Ljava/util/List;FZ)V

    return p2
.end method

.method public zoomEnd()V
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    if-eqz v0, :cond_16

    .line 405
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 406
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$4;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method
