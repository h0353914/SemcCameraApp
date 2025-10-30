.class Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;
.super Landroid/widget/LinearLayout;
.source "SimpleIqControlSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;,
        Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final FADE_ANIMATION_DURATION:J = 0x64L

.field private static final NON_TRACKING_POSITION:I = -0x1


# instance fields
.field private mArea:Landroid/view/View;

.field private mCurrentProgress:I

.field private mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

.field private mIsAscending:Z

.field private mIsTouchable:Z

.field private mKnob:Landroid/view/View;

.field private mLastPositionY:F

.field private mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;

.field private mMaximum:I

.field private mMinimum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentProgress(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;)I
    .registers 1

    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 32
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mLastPositionY:F

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mIsAscending:Z

    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mIsTouchable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 32
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mLastPositionY:F

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mIsAscending:Z

    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mIsTouchable:Z

    return-void
.end method

.method private convertPositionToProgress(F)I
    .registers 6

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getStrokeRange()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_49

    .line 255
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mIsAscending:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1f

    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getPadding()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    goto :goto_36

    .line 258
    :cond_1f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getPadding()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mKnob:Landroid/view/View;

    .line 259
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    sub-float p1, v1, p1

    :goto_36
    div-float/2addr p1, v0

    .line 262
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    add-int/2addr p1, v0

    .line 263
    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    if-ge p0, p1, :cond_44

    move v0, p0

    goto :goto_4a

    :cond_44
    if-ge p1, v0, :cond_47

    goto :goto_4a

    :cond_47
    move v0, p1

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    return v0
.end method

.method private convertProgressToPosition(I)F
    .registers 7

    .line 273
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    if-ge v0, p1, :cond_6

    :goto_4
    move p1, v0

    goto :goto_b

    .line 275
    :cond_6
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    if-ge p1, v0, :cond_b

    goto :goto_4

    .line 280
    :cond_b
    :goto_b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getStrokeRange()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v1, :cond_2b

    .line 282
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    iget v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    sub-int/2addr v1, v4

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_27

    sub-int/2addr p1, v4

    int-to-float p1, p1

    mul-float/2addr p1, v0

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    goto :goto_2c

    :cond_27
    sub-int/2addr p1, v4

    int-to-float p1, p1

    mul-float/2addr p1, v0

    goto :goto_2c

    :cond_2b
    move p1, v2

    .line 288
    :goto_2c
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mIsAscending:Z

    if-eqz v0, :cond_3d

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getPadding()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 290
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    goto :goto_52

    :cond_3d
    mul-float/2addr p1, v2

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 294
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getPadding()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 295
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    :goto_52
    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float/2addr p1, p0

    return p1
.end method

.method private doProgress(FZ)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 235
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->convertPositionToProgress(F)I

    move-result p1

    if-eqz p2, :cond_f

    .line 236
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    if-eq v0, p1, :cond_24

    .line 237
    :cond_f
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    .line 238
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;

    if-eqz p1, :cond_24

    .line 239
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_24

    .line 240
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    invoke-interface {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;->onProgressChanged(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;IZ)V

    :cond_24
    return-void
.end method

.method private doStartTracking()V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;

    if-eqz v0, :cond_19

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_19

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;I)V

    :cond_19
    return-void
.end method

.method private doStopTracking()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;

    if-eqz v0, :cond_19

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_19

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;I)V

    :cond_19
    return-void
.end method

.method private doTracking(F)V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    .line 218
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mLastPositionY:F

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 220
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getPadding()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    cmpg-float v1, v0, p1

    if-gez v1, :cond_1f

    move v0, p1

    .line 225
    :cond_1f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getPadding()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    cmpl-float v1, v0, p1

    if-lez v1, :cond_39

    move v0, p1

    :cond_39
    const/4 p1, 0x1

    .line 229
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->doProgress(FZ)V

    return-void
.end method

.method private getPadding()I
    .registers 2

    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701af

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getStrokeRange()F
    .registers 4

    .line 301
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    if-gt v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 304
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getPadding()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method private startFadeEffectAnimation(Z)V
    .registers 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    if-eqz p1, :cond_b

    move v0, v1

    .line 321
    :cond_b
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    if-eqz v3, :cond_2c

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;->-$$Nest$misRunning(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 322
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;->cancel()V

    .line 323
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;->-$$Nest$mgetCurrentProgress(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;)F

    move-result v2

    if-eqz p1, :cond_24

    sub-float/2addr v1, v2

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    float-to-long v2, v2

    move-wide v3, v2

    move v2, v1

    goto :goto_2e

    :cond_2c
    const-wide/16 v3, 0x64

    .line 328
    :goto_2e
    new-instance p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    const/4 v1, 0x0

    invoke-direct {p1, v2, v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;-><init>(FFLcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    .line 330
    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;->setDuration(J)V

    .line 334
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 351
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v1, v0, :cond_9

    return-void

    .line 140
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    if-eqz v0, :cond_13

    .line 141
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;->cancel()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    .line 144
    :cond_13
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setVisibility(I)V

    return-void
.end method

.method public moveToCenterProgress()V
    .registers 3

    .line 308
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    if-ge v0, v1, :cond_10

    add-int/2addr v1, v0

    .line 309
    div-int/lit8 v1, v1, 0x2

    .line 310
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    if-eq v0, v1, :cond_10

    .line 311
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setProgress(I)V

    :cond_10
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const v0, 0x7f0901bb

    .line 55
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    .line 56
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0901bc

    .line 58
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mKnob:Landroid/view/View;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_46

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mIsTouchable:Z

    if-nez p1, :cond_c

    goto :goto_46

    .line 67
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_40

    if-eq p2, v1, :cond_38

    const/4 v2, 0x2

    if-eq p2, v2, :cond_20

    const/4 p1, 0x3

    if-eq p2, p1, :cond_38

    goto :goto_45

    .line 74
    :cond_20
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-nez p2, :cond_29

    return v0

    .line 77
    :cond_29
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 78
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->doTracking(F)V

    .line 79
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mLastPositionY:F

    goto :goto_45

    .line 84
    :cond_38
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->doStopTracking()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 85
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mLastPositionY:F

    goto :goto_45

    .line 70
    :cond_40
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->doStartTracking()V

    .line 71
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mLastPositionY:F

    :goto_45
    return v1

    :cond_46
    :goto_46
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    if-nez p1, :cond_11

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 97
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->doStopTracking()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 98
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mLastPositionY:F

    .line 100
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setAscending(Z)V
    .registers 2

    .line 195
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mIsAscending:Z

    return-void
.end method

.method public setMaximum(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    return-void
.end method

.method public setMinimum(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;

    return-void
.end method

.method setProgress(I)V
    .registers 3

    .line 172
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMaximum:I

    if-ge v0, p1, :cond_7

    .line 173
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    goto :goto_10

    .line 174
    :cond_7
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mMinimum:I

    if-ge p1, v0, :cond_e

    .line 175
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    goto :goto_10

    .line 177
    :cond_e
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    .line 180
    :goto_10
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_17

    return-void

    .line 184
    :cond_17
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mCurrentProgress:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->convertProgressToPosition(I)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_27

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->doProgress(FZ)V

    :cond_27
    return-void
.end method

.method public setSeekBarResource(I)V
    .registers 3

    const v0, 0x7f0901bb

    .line 191
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setTextForAccessibility(I)V
    .registers 3

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchable(Z)V
    .registers 2

    .line 148
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mIsTouchable:Z

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 2

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_f

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_24

    .line 111
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->doStopTracking()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 114
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mLastPositionY:F

    .line 117
    :cond_24
    :goto_24
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public show(Z)V
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setVisibility(I)V

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->startFadeEffectAnimation(Z)V

    goto :goto_1c

    .line 128
    :cond_12
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    if-eqz p1, :cond_1c

    .line 129
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;->cancel()V

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$FadeAnimation;

    :cond_1c
    :goto_1c
    return-void
.end method
