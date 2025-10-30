.class public Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;
.super Landroid/widget/FrameLayout;
.source "PredictiveLaunchCoverView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;,
        Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;
    }
.end annotation


# static fields
.field private static final LOWER_TOUCH_INTERVAL_TIME_MILLIS:J = 0x0L

.field private static final TOUCH_AREA_SIZE_PER_DP:D = 0.5555555555555556

.field private static final UPPER_TOUCH_INTERVAL_TIME_MILLIS:J = 0x12cL


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mDescriptionMargin:I

.field private mExists:Z

.field private mHoleView:Landroid/widget/ImageView;

.field private mListener:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;

.field private mOrientation:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mSquareBox:Landroid/widget/FrameLayout;

.field private mTouchArea:Landroid/widget/FrameLayout;

.field private mTouchDownTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    return-void
.end method

.method private checkTouchEnabled()Z
    .registers 5

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_15

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static inflate(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;
    .registers 8

    const-string v0, "layout_inflater"

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0b0028

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    .line 80
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v2, p2, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->mDescriptionResourceId:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 80
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p0, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->mDescriptionResourceId:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;

    const/4 p0, 0x1

    .line 84
    iput-boolean p0, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mExists:Z

    .line 85
    iput-object p3, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 86
    iput-object p4, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mPreviewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private sendStartupPerformanceDataForReadyForUse()V
    .registers 3

    .line 98
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 102
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    return-void
.end method

.method private show()V
    .registers 3

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    .line 169
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->startPredictiveLaunchAnimation(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_20
    return-void
.end method

.method private startPredictiveLaunchAnimation(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable2;

    .line 194
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable2;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz p1, :cond_17

    .line 196
    invoke-interface {v0, p1}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 198
    :cond_17
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable2;->start()V

    :cond_1a
    return-void
.end method

.method private updateLayout()V
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mSquareBox:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_b9

    .line 230
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 232
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 234
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mSquareBox:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide v0, 0x3fe1c71c71c71c72L    # 0.5555555555555556

    .line 237
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getMeasuredWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    .line 238
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    double-to-int v1, v2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 239
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 244
    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_59

    const/16 v1, 0x51

    .line 245
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescriptionMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 247
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_79

    :cond_59
    const/16 v2, 0x13

    .line 250
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 251
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    .line 252
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    .line 253
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescriptionMargin:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRotation(F)V

    .line 257
    :goto_79
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_b9

    const/4 v0, 0x0

    .line 261
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_9c

    .line 263
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0700fd

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 266
    :cond_9c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    .line 267
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 268
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 269
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mSquareBox:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_b9
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 92
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->sendStartupPerformanceDataForReadyForUse()V

    return-void
.end method

.method public exists()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mExists:Z

    return v0
.end method

.method public hide(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mExists:Z

    .line 189
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->startPredictiveLaunchAnimation(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900ca

    .line 109
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    const v0, 0x7f090128

    .line 110
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0901b0

    .line 111
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mSquareBox:Landroid/widget/FrameLayout;

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013d

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescriptionMargin:I

    const v0, 0x7f0901e2

    .line 114
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 127
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 128
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    if-eqz p1, :cond_17

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mExists:Z

    if-eqz p1, :cond_17

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout()V

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->show()V

    :cond_17
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_38

    goto :goto_36

    .line 148
    :pswitch_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->checkTouchEnabled()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 149
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 152
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;

    if-eqz p1, :cond_36

    .line 153
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;->onCircleTouched()V

    goto :goto_36

    .line 145
    :pswitch_30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchDownTime:J

    :cond_36
    :goto_36
    const/4 p1, 0x1

    return p1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_30
        :pswitch_8
    .end packed-switch
.end method

.method public performClick()Z
    .registers 2

    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public updateLayout(I)V
    .registers 3

    .line 217
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    if-eqz p1, :cond_6

    .line 219
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    :cond_6
    if-eqz v0, :cond_d

    if-eq v0, p1, :cond_d

    .line 223
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout()V

    :cond_d
    return-void
.end method
