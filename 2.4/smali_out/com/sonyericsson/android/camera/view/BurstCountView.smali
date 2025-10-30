.class public Lcom/sonyericsson/android/camera/view/BurstCountView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "BurstCountView.java"


# instance fields
.field private final mFadeOutAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "alpha"

    const/4 p2, 0x2

    .line 24
    new-array p2, p2, [F

    fill-array-data p2, :array_24

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 25
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/sonyericsson/android/camera/view/BurstCountView$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/BurstCountView$1;-><init>(Lcom/sonyericsson/android/camera/view/BurstCountView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_24
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public hide()V
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/BurstCountView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_13

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_13
    return-void
.end method

.method public setUiOrientation(I)V
    .registers 2

    .line 70
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setRotation(F)V

    return-void
.end method

.method public update(I)V
    .registers 2

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 55
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 57
    :cond_14
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/BurstCountView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_23

    const/high16 p1, 0x3f800000    # 1.0f

    .line 58
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setAlpha(F)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setVisibility(I)V

    :cond_23
    return-void
.end method
