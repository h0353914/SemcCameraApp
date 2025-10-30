.class Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;
.super Landroid/widget/LinearLayout;
.source "SemiAutoSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;,
        Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;
    }
.end annotation


# static fields
.field private static final FADE_ANIMATION_DURATION:J = 0x64L

.field private static final NON_TRACKING_POSITION:I = -0x1


# instance fields
.field private mArea:Landroid/view/View;

.field private mCurrentProgress:I

.field private mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

.field private mIsAscending:Z

.field private mKnob:Landroid/view/View;

.field private mLastPositionY:F

.field private mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

.field private mMaximum:I

.field private mMinimum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 32
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 32
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    return-void
.end method

.method private convertPositionToProgress(F)I
    .registers 6

    .line 247
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getStrokeRange()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4e

    .line 250
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1f

    .line 251
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    goto :goto_36

    .line 253
    :cond_1f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    .line 254
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    sub-float p1, v1, p1

    :goto_36
    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    add-int/2addr p1, v0

    .line 258
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    if-ge v0, p1, :cond_47

    .line 259
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    goto :goto_4f

    .line 260
    :cond_47
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    if-ge p1, v0, :cond_4f

    .line 261
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    goto :goto_4f

    :cond_4e
    const/4 p1, 0x0

    :cond_4f
    :goto_4f
    return p1
.end method

.method private convertProgressToPosition(I)F
    .registers 7

    .line 268
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    if-ge v0, p1, :cond_7

    .line 269
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    goto :goto_d

    .line 270
    :cond_7
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    if-ge p1, v0, :cond_d

    .line 271
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    .line 275
    :cond_d
    :goto_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getStrokeRange()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v1, :cond_31

    .line 277
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iget v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    sub-int/2addr v1, v4

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2b

    .line 278
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    goto :goto_32

    .line 280
    :cond_2b
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    goto :goto_32

    :cond_31
    move p1, v2

    .line 284
    :goto_32
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    if-nez v0, :cond_46

    .line 285
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 286
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float/2addr p1, p0

    goto :goto_5e

    :cond_46
    mul-float/2addr p1, v2

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 291
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float/2addr p1, p0

    :goto_5e
    return p1
.end method

.method private doProgress(FZ)V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 230
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->convertPositionToProgress(F)I

    move-result p1

    if-eqz p2, :cond_f

    .line 231
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    if-eq v0, p1, :cond_24

    .line 232
    :cond_f
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    .line 233
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    if-eqz p1, :cond_24

    .line 234
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_24

    .line 235
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    invoke-interface {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;->onProgressChanged(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;IZ)V

    :cond_24
    return-void
.end method

.method private doStartTracking()V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    if-eqz v0, :cond_19

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_19

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;->onStartTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;I)V

    :cond_19
    return-void
.end method

.method private doStopTracking()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    if-eqz v0, :cond_19

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_19

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;->onStopTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;I)V

    :cond_19
    return-void
.end method

.method private doTracking(F)V
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    .line 213
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    cmpg-float v1, v0, p1

    if-gez v1, :cond_1f

    goto :goto_20

    :cond_1f
    move p1, v0

    .line 220
    :goto_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3a

    move p1, v0

    :cond_3a
    const/4 v0, 0x1

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doProgress(FZ)V

    return-void
.end method

.method private getPadding()I
    .registers 2

    .line 242
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070181

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getStrokeRange()F
    .registers 4

    .line 297
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    if-gt v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 300
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method private setProgress(I)V
    .registers 3

    .line 167
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    if-ge v0, p1, :cond_9

    .line 168
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    goto :goto_14

    .line 169
    :cond_9
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    if-ge p1, v0, :cond_12

    .line 170
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    goto :goto_14

    .line 172
    :cond_12
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    .line 175
    :goto_14
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1b

    return-void

    .line 179
    :cond_1b
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->convertProgressToPosition(I)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2b

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doProgress(FZ)V

    :cond_2b
    return-void
.end method

.method private startFadeEffectAnimation(Z)V
    .registers 8

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

    :cond_b
    const-wide/16 v3, 0x64

    .line 317
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    # invokes: Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->isRunning()Z
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 318
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->cancel()V

    .line 319
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    # invokes: Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->getCurrentProgress()F
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;)F

    move-result v2

    if-eqz p1, :cond_28

    sub-float/2addr v1, v2

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-long v3, p1

    goto :goto_2f

    :cond_2e
    move v1, v2

    .line 324
    :goto_2f
    new-instance p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;-><init>(FFLcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->setDuration(J)V

    .line 328
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v1, v0, :cond_9

    return-void

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    if-eqz v0, :cond_15

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->cancel()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    .line 143
    :cond_15
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setVisibility(I)V

    return-void
.end method

.method public moveToCenterProgress()V
    .registers 3

    .line 304
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    if-ge v0, v1, :cond_14

    .line 305
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 306
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    if-eq v1, v0, :cond_14

    .line 307
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setProgress(I)V

    :cond_14
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const v0, 0x7f09014f

    .line 54
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090150

    .line 57
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    return v0

    .line 66
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_3c

    goto :goto_39

    .line 73
    :pswitch_14
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-nez p2, :cond_1d

    return v0

    .line 76
    :cond_1d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doTracking(F)V

    .line 78
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    goto :goto_39

    .line 83
    :pswitch_2c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doStopTracking()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 84
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    goto :goto_39

    .line 69
    :pswitch_34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doStartTracking()V

    .line 70
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    :goto_39
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2c
        :pswitch_14
        :pswitch_2c
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    if-nez p1, :cond_11

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 96
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doStopTracking()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 97
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    .line 99
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setAscending(Z)V
    .registers 2

    .line 190
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    return-void
.end method

.method public setMaximum(I)V
    .registers 2

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    return-void
.end method

.method public setMinimum(I)V
    .registers 2

    .line 159
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    return-void
.end method

.method public setOnSemiAutoSeekBarChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    return-void
.end method

.method public setSeekBarResource(I)V
    .registers 3

    const v0, 0x7f09014f

    .line 186
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setTextForAccessibility(I)V
    .registers 3

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 2

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_f

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_24

    .line 110
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doStopTracking()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 113
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    .line 116
    :cond_24
    :goto_24
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public show(Z)V
    .registers 3

    .line 120
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setVisibility(I)V

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->startFadeEffectAnimation(Z)V

    goto :goto_1e

    .line 127
    :cond_12
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    if-eqz p1, :cond_1e

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->cancel()V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    :cond_1e
    :goto_1e
    return-void
.end method
