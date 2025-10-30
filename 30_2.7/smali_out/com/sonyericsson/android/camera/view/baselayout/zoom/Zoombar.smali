.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;
.super Landroid/widget/FrameLayout;
.source "Zoombar.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DELAY_ZOOMBAR_HIDE:I = 0x3e8

.field private static final IMMEDIATE_ANIMATION_DURATION_IN_MILLIS:J = 0x0L

.field private static final INVISIBLE_ALPHA:F = 0.0f

.field private static final INVISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final MIN_VALUE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Zoombar"

.field private static final VISIBLE_ALPHA:F = 1.0f

.field private static final VISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L


# instance fields
.field private mHideAnimationlistener:Landroid/animation/Animator$AnimatorListener;

.field private final mHideEvent:Ljava/lang/Runnable;

.field private mLeftIndicator:Landroid/widget/ImageView;

.field private mRightIndicator:Landroid/widget/ImageView;

.field private mValueIndicator:Landroid/widget/TextView;

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

.field private mZoomValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 81
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomValue:F

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    .line 91
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideAnimationlistener:Landroid/animation/Animator$AnimatorListener;

    .line 276
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;Z)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideWithAnimation(Z)V

    return-void
.end method

.method private hideWithAnimation(Z)V
    .registers 5

    .line 300
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_e

    const-wide/16 v1, 0x64

    goto :goto_10

    :cond_e
    const-wide/16 v1, 0x0

    .line 302
    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideAnimationlistener:Landroid/animation/Animator$AnimatorListener;

    .line 305
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showWithAnimation(Z)V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 285
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowZoom(Z)V

    .line 288
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 290
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1c

    const-wide/16 v1, 0x64

    goto :goto_1e

    :cond_1c
    const-wide/16 v1, 0x0

    .line 291
    :goto_1e
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private validateZoomParameters(I)Z
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 320
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_17

    .line 321
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x1

    return p1

    :cond_17
    :goto_17
    return v1
.end method


# virtual methods
.method public getCurrentZoomValue()F
    .registers 2

    .line 273
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomValue:F

    return v0
.end method

.method public getZoomRatios()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method public hideDelayed()V
    .registers 5

    .line 253
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void
.end method

.method public hideImmediately()V
    .registers 3

    .line 263
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 266
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideWithAnimation(Z)V

    :cond_15
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 135
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900df

    .line 137
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    const v0, 0x7f090141

    .line 138
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0901eb

    .line 139
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/TextView;

    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

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

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    return-void
.end method

.method public setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-void
.end method

.method public show()V
    .registers 3

    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 228
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 230
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    const/4 v0, 0x1

    .line 232
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->showWithAnimation(Z)V

    return-void
.end method

.method public showImmediately()V
    .registers 3

    .line 239
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 242
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 244
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->showWithAnimation(Z)V

    return-void
.end method

.method public zoom(IIF)I
    .registers 11

    .line 167
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 168
    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoom() current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxZoom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " zoomRatios:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ratio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 174
    :cond_38
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->validateZoomParameters(I)Z

    move-result v0

    if-nez v0, :cond_42

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideImmediately()V

    return p1

    :cond_42
    if-gez p1, :cond_45

    move p1, v2

    :cond_45
    if-le p1, p2, :cond_48

    move p1, p2

    .line 186
    :cond_48
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070112

    .line 190
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 191
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 192
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 193
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v0, v3

    sub-int/2addr v5, v4

    .line 196
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v4

    sub-int v4, v5, v6

    mul-int/2addr v0, v4

    div-int/2addr v0, v5

    add-int/2addr v0, v3

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%.1f"

    new-array v5, v1, [Ljava/lang/Object;

    .line 200
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    .line 199
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 202
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 203
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mValueIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mZoomValue:F

    .line 207
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    .line 208
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    .line 210
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p3, :cond_e6

    .line 211
    new-array p3, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoom() position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " srPosition:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 215
    :cond_e6
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1f"

    new-array v1, v1, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 215
    invoke-virtual {p3, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomRatio(F)V

    return p1
.end method
