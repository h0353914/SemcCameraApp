.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
.super Landroid/widget/FrameLayout;
.source "ZoomDial.java"


# static fields
.field public static final BOKEH_MAX_ZOOM_RATIO:F = 5.0f

.field private static final BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

.field public static final DELAY_ZOOM_DIAL_BAR_HIDE_MILLIS:I = 0xfa0

.field public static final DELAY_ZOOM_DIAL_HIDE_MILLIS:I = 0x1f4

.field private static final IMMEDIATE_ANIMATION_DURATION_IN_MILLIS:J = 0x0L

.field private static final INVISIBLE_ALPHA:F = 0.0f

.field private static final INVISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final TRANSFER_CONSTANT:F = 20.0f

.field private static final VISIBLE_ALPHA:F = 1.0f

.field private static final VISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_DX:F = 0.0f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_DY:F = 1.0f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_RADIUS:F = 4.0f

.field private static final ZOOM_DIAL_MAX_ALPHA:F = 255.0f

.field public static final ZOOM_MAGNIFICATION_COEFFICIENT:F = 0.150515f


# instance fields
.field private firstPointText:Ljava/lang/String;

.field private mCameraChangeable:Z

.field private mCircleZoom1:Landroid/widget/ImageView;

.field private mClickable:Z

.field private mCurrentStep:I

.field private mCurrentZoomMagnification:F

.field private mDelayZoomDialHideMillis:I

.field private mDialbarArea:Landroid/widget/FrameLayout;

.field private final mDialbarAreaHideEvent:Ljava/lang/Runnable;

.field private mDialbarHideStart:J

.field private mFirstToSecondPointWidth:I

.field private final mHideDelyedTask:Ljava/lang/Runnable;

.field private final mHideEvent:Ljava/lang/Runnable;

.field private mIsBokehMode:Z

.field private mIsDirectionRtl:Z

.field private mIsRecording:Z

.field private mIsShown:Z

.field private mIsWideCameraSupported:Z

.field private mIsWideMode:Z

.field private mIsZooming:Z

.field private mLeftImageLayout:Landroid/widget/LinearLayout;

.field private mMagnificationBaseRatio:F

.field private mMaxZoomStep:I

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRunAfterHide:Ljava/lang/Runnable;

.field private mSCaleDot1Layout:Landroid/widget/LinearLayout;

.field private mSCaleDot2Layout:Landroid/widget/LinearLayout;

.field private mSecondToThirdPointWidth:I

.field private mSliderView:Landroid/widget/FrameLayout;

.field private mSliderViewBase:Landroid/widget/FrameLayout;

.field private mSliderViewWidth:I

.field private mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

.field private mWideTextLayout:Landroid/widget/FrameLayout;

.field private mWideTextView:Landroid/widget/TextView;

.field private mZoomButtonGestureDetector:Landroid/view/GestureDetector;

.field private mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

.field private mZoomDialBlurArea:Landroid/widget/ImageView;

.field private mZoomDialBlurBitmap:Landroid/graphics/Bitmap;

.field private mZoomDialBlurRestArea:Landroid/widget/ImageView;

.field private mZoomDialBlurRestBitmap:Landroid/graphics/Bitmap;

.field private mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonTextView:Landroid/widget/TextView;

.field private mZoomDialImageLayout:Landroid/widget/LinearLayout;

.field private mZoomDialScale1to2MarginView:Landroid/view/View;

.field private mZoomDialScale2to3MarginView:Landroid/view/View;

.field private mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

.field private mZoomPoint1TextView:Landroid/widget/TextView;

.field private mZoomPoint2Step:I

.field private mZoomPoint2TextView:Landroid/widget/TextView;

.field private mZoomPoint3TextView:Landroid/widget/TextView;

.field private mZoomRatioMax:F

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

.field private mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

.field private mZoomSecondPointRatioMax:F

.field private mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

.field private wideButtonText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 179
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 180
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    .line 179
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 181
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v2, v0, 0x1

    .line 182
    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    const/4 v2, 0x0

    :goto_21
    if-gt v2, v0, :cond_33

    .line 185
    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    int-to-float v4, v2

    int-to-float v5, v1

    mul-float/2addr v4, v5

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 441
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    const/4 p2, 0x0

    .line 78
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 82
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 87
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    .line 108
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 109
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 110
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2Step:I

    .line 112
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    .line 113
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCameraChangeable:Z

    const-wide/16 v1, 0x0

    .line 118
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    .line 120
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarAreaHideEvent:Ljava/lang/Runnable;

    .line 138
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    .line 144
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    .line 162
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 167
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    .line 168
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 171
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    .line 172
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    const/4 p2, 0x0

    .line 174
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    .line 195
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 443
    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 444
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchMagnification(ZI)V

    const/16 p2, 0xfa0

    .line 446
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 448
    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 449
    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSwitchPointZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    .line 450
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    cmpl-float p1, p2, p1

    if-nez p1, :cond_9a

    const-string p1, "zoom switch point ratio is invalid"

    .line 451
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 452
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p1, :cond_94

    goto :goto_9a

    .line 453
    :cond_94
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_9a
    :goto_9a
    const-string p1, "x1"

    .line 457
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    const-string p1, "W"

    .line 458
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    .line 460
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isWideCameraSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_b8

    .line 462
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    :cond_b8
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    return p0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayedImmediately()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    return p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    return p0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    return p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2Step:I

    return p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    return p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;D)F
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomMagnificationRound(D)F

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;IZ)I
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->convertCurrentStep(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->handleZoomDialButtonClick()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->handleZoomDialButtonLongPress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    return p1
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    return p1
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale2to3MarginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->handleWideButtonClick()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideWithAnimation(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    return p0
.end method

.method public static calcZoomStep(F)D
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_8

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_8
    float-to-double v0, p0

    .line 873
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc3441360000000L    # 0.15051500499248505

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private centerDipsZoomMagnification(F)Ljava/lang/String;
    .registers 5

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const-string v1, ".0"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private circleSwitch(Z)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 1447
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1448
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1447
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1449
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1450
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1449
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1451
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_53

    .line 1453
    :cond_28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1454
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1453
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1455
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1457
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1455
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1458
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_53
    return-void
.end method

.method private convertCurrentStep(IZ)I
    .registers 4

    if-eqz p2, :cond_7

    .line 848
    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    aget p1, p2, p1

    goto :goto_17

    .line 851
    :cond_7
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    :goto_9
    if-lez p2, :cond_16

    .line 852
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    aget v0, v0, p2

    if-ne v0, p1, :cond_13

    move p1, p2

    goto :goto_17

    :cond_13
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method private creaeDialbarBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 1463
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 1464
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1466
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1467
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getDotImage(FF)Landroid/widget/ImageView;
    .registers 5

    .line 1138
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08030e

    .line 1139
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1140
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private handleWideButtonClick()V
    .registers 3

    .line 1211
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCameraChangeable:Z

    if-nez v0, :cond_9

    goto :goto_25

    .line 1214
    :cond_9
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->WIDE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onChangeModeRequested()V

    const/4 v0, 0x1

    .line 1217
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 1218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayedImmediately()V

    return-void

    :cond_25
    :goto_25
    return-void
.end method

.method private handleZoomDialButtonClick()V
    .registers 5

    .line 1145
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    if-nez v0, :cond_5

    return-void

    .line 1148
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9c

    .line 1149
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 1150
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCameraChangeable:Z

    if-nez v0, :cond_14

    return-void

    .line 1153
    :cond_14
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 1154
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ZOOM_TOGGLE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 1156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onChangeModeRequested()V

    .line 1157
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialTapEvent(Ljava/util/List;F)V

    return-void

    .line 1160
    :cond_2e
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4e

    .line 1161
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1162
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 1163
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialTapEvent(Ljava/util/List;F)V

    goto :goto_9c

    .line 1165
    :cond_4e
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    if-nez v0, :cond_8e

    .line 1166
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCameraChangeable:Z

    if-nez v0, :cond_5b

    return-void

    .line 1169
    :cond_5b
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ZOOM_TOGGLE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 1171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onChangeModeRequested()V

    const/4 v0, 0x1

    .line 1172
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 1173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_84

    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1176
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    .line 1178
    :cond_84
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialTapEvent(Ljava/util/List;F)V

    goto :goto_9c

    .line 1180
    :cond_8e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 1181
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialTapEvent(Ljava/util/List;F)V

    :cond_9c
    :goto_9c
    return-void
.end method

.method private handleZoomDialButtonLongPress()Z
    .registers 3

    .line 1188
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialLongTapEvent()V

    .line 1189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4e

    .line 1190
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_32

    .line 1191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0}, Landroid/view/GestureDetector;->isLongpressEnabled()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1192
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayedImmediately()V

    .line 1193
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$10;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1199
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/VibrationManager;->vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V

    goto :goto_4e

    .line 1201
    :cond_32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4e

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez v0, :cond_4e

    .line 1202
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 1203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 1204
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/VibrationManager;->vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V

    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    return v0
.end method

.method private hideDialbarDelayedImmediately()V
    .registers 2

    .line 1262
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1266
    :cond_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    .line 1267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 1268
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    :cond_12
    return-void
.end method

.method private hideWithAnimation(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1417
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    .line 1418
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1419
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_11

    const-wide/16 v1, 0x64

    goto :goto_13

    :cond_11
    const-wide/16 v1, 0x0

    .line 1420
    :goto_13
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1423
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1425
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    if-eqz p1, :cond_24

    .line 1426
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 1427
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    .line 1430
    :cond_24
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz p1, :cond_2b

    .line 1431
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onHiddenZoom()V

    :cond_2b
    return-void
.end method

.method private hideZoomBarArea()V
    .registers 3

    .line 1436
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    .line 1437
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->releaseDialbarBitmap()V

    .line 1438
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v0, :cond_14

    .line 1440
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowSimpleView()V

    :cond_14
    return-void
.end method

.method private normalizeAngle(I)F
    .registers 3

    .line 1253
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const/high16 p1, 0x42b40000    # 90.0f

    return p1
.end method

.method private relayoutBlurArea(I)V
    .registers 6

    .line 560
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 563
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    .line 564
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_34

    .line 568
    :cond_26
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 570
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_34
    return-void
.end method

.method private releaseDialbarBitmap()V
    .registers 3

    .line 1472
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurArea:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1473
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1475
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 1476
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1478
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    .line 1479
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1481
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    .line 1482
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1d
    return-void
.end method

.method private setBokehSwitchLayout(Z)V
    .registers 8

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    .line 796
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 797
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 798
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    const-string v4, "x1"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCircleZoom1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 800
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_47

    .line 802
    :cond_22
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    if-eqz v2, :cond_31

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    if-nez v2, :cond_31

    .line 803
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 804
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 806
    :cond_31
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    const-string v3, "x2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCircleZoom1:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    :goto_47
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 813
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 815
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070252

    .line 816
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 817
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07023d

    .line 818
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 820
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-ne v5, v0, :cond_8c

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 822
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v5

    add-int/2addr v2, v4

    sub-int/2addr v5, v2

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 824
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    goto :goto_b2

    .line 826
    :cond_8c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, -0x2

    .line 827
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 828
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 829
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 830
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v0, 0x7f07023e

    .line 832
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    .line 835
    :goto_b2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%,d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$7;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$7;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setBokehSwitchMagnification(ZI)V
    .registers 4

    if-eqz p1, :cond_7

    const/high16 p1, 0x40a00000    # 5.0f

    .line 786
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    goto :goto_f

    .line 788
    :cond_7
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 790
    :goto_f
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    .line 791
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    int-to-float p1, p1

    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    div-float/2addr p1, p2

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    return-void
.end method

.method private setDrawDotLayout()V
    .registers 13

    .line 1114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07023b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 1115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07023c

    .line 1116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 1117
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070246

    .line 1118
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070247

    .line 1120
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v2, v2

    add-float v4, v0, v1

    div-float/2addr v2, v4

    float-to-double v5, v2

    .line 1122
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    const/4 v5, 0x0

    move v6, v5

    :goto_4a
    const/4 v7, 0x1

    if-ge v6, v2, :cond_6d

    .line 1124
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v11, v1

    invoke-direct {v10, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getDotImage(FF)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_6d
    int-to-float v2, v3

    div-float/2addr v2, v4

    float-to-double v2, v2

    .line 1129
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    :goto_75
    if-ge v5, v2, :cond_97

    .line 1131
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v8, v1

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getDotImage(FF)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    :cond_97
    return-void
.end method

.method private setZoomDialImageView()V
    .registers 15

    .line 692
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 693
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    if-nez v0, :cond_23

    .line 694
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurArea:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 699
    :cond_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 701
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->creaeDialbarBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 703
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07023d

    .line 704
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 705
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070237

    .line 706
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 708
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 709
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurBitmap:Landroid/graphics/Bitmap;

    .line 710
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 711
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v5, v1

    const/high16 v6, 0x437f0000    # 255.0f

    div-float v5, v6, v5

    .line 713
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_a7

    .line 714
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurArea:Landroid/widget/ImageView;

    .line 715
    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    sub-int/2addr v7, v9

    move v9, v8

    :goto_7e
    if-gt v9, v1, :cond_c6

    int-to-float v10, v9

    mul-float/2addr v10, v5

    sub-float v10, v6, v10

    float-to-double v10, v10

    .line 717
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    rsub-int v10, v10, 0xff

    .line 718
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 719
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v7, v9

    add-int/lit8 v12, v11, -0x1

    invoke-direct {v10, v12, v8, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 721
    new-instance v11, Landroid/graphics/Rect;

    sub-int v12, v1, v9

    add-int/lit8 v13, v12, -0x1

    invoke-direct {v11, v13, v8, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 723
    invoke-virtual {v4, v0, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7e

    :cond_a7
    move v7, v8

    :goto_a8
    if-gt v7, v1, :cond_c6

    int-to-float v9, v7

    mul-float/2addr v9, v5

    sub-float v9, v6, v9

    float-to-double v9, v9

    .line 727
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 728
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 729
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v1, v7

    add-int/lit8 v11, v10, -0x1

    invoke-direct {v9, v11, v8, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 731
    invoke-virtual {v4, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    .line 734
    :cond_c6
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurArea:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 738
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v1, :cond_f4

    .line 739
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    .line 740
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-direct {v1, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 741
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    .line 742
    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_123

    .line 744
    :cond_f4
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    .line 745
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    .line 746
    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-direct {v1, v3, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 747
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    .line 748
    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 750
    :goto_123
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    .line 751
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestBitmap:Landroid/graphics/Bitmap;

    .line 753
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 754
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 755
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 757
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 758
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 759
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 760
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private showWithAnimation(Z)V
    .registers 5

    const/4 v0, 0x1

    .line 1401
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    .line 1403
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v1, :cond_a

    .line 1404
    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowZoom(Z)V

    .line 1407
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1408
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1409
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1e

    const-wide/16 v1, 0x64

    goto :goto_20

    :cond_1e
    const-wide/16 v1, 0x0

    .line 1410
    :goto_20
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1413
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private zoomMagnificationRound(D)F
    .registers 4

    .line 883
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    return p1
.end method


# virtual methods
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

    .line 916
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method public hideDelayed(Ljava/lang/Runnable;)V
    .registers 5

    .line 1379
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1380
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 1383
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1384
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method

.method public hideDialbarDelayed()V
    .registers 7

    .line 1342
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_5

    return-void

    .line 1345
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    .line 1348
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    .line 1349
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideDialbarDelayed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1351
    :cond_31
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarAreaHideEvent:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_39
    return-void
.end method

.method public hideImmediately()V
    .registers 3

    .line 1360
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1361
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1363
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1365
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1e

    .line 1366
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->releaseDialbarBitmap()V

    .line 1367
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1e
    const/4 v0, 0x0

    .line 1369
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideWithAnimation(Z)V

    :cond_22
    return-void
.end method

.method public isFullView()Z
    .registers 2

    .line 1394
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isOnZoomDial(Landroid/graphics/Point;)Z
    .registers 7

    .line 1494
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1495
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 1496
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1497
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1499
    iget v4, p1, Landroid/graphics/Point;->x:I

    if-gt v0, v4, :cond_26

    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gt v0, v1, :cond_26

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-gt v2, v0, :cond_26

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-gt p1, v3, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method public isShown()Z
    .registers 2

    .line 1278
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 941
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090169

    .line 942
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const v0, 0x7f090098

    .line 943
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    const v0, 0x7f090203

    .line 946
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    const v0, 0x7f090202

    .line 947
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    .line 948
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    const/4 v0, 0x0

    .line 950
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    const v1, 0x7f090099

    .line 953
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const v1, 0x7f09015b

    .line 954
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f09015c

    .line 955
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090071

    .line 956
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

    const v1, 0x7f090072

    .line 957
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

    const v1, 0x7f09020e

    .line 958
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;

    .line 960
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 962
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setDrawDotLayout()V

    const v0, 0x7f090206

    .line 965
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    const v0, 0x7f090208

    .line 966
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    const v0, 0x7f09020a

    .line 967
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    const v0, 0x7f090210

    .line 970
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    const v0, 0x7f090211

    .line 971
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090204

    .line 973
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090201

    .line 974
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurArea:Landroid/widget/ImageView;

    const v0, 0x7f090205

    .line 975
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialBlurRestArea:Landroid/widget/ImageView;

    const v0, 0x7f0901fd

    .line 977
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 978
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    if-nez v0, :cond_f6

    .line 979
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f070252

    .line 980
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    .line 983
    :cond_f6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090207

    .line 985
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    const v0, 0x7f090209

    .line 986
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale2to3MarginView:Landroid/view/View;

    const v0, 0x7f09016a

    .line 988
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    const v0, 0x7f090074

    .line 990
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCircleZoom1:Landroid/widget/ImageView;

    .line 992
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 994
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;

    .line 1029
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1030
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setBokehMode(ZI)V
    .registers 4

    .line 770
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 773
    :cond_5
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    .line 774
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x1f4

    .line 775
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    goto :goto_14

    :cond_10
    const/16 v0, 0xfa0

    .line 777
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 779
    :goto_14
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchMagnification(ZI)V

    .line 780
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchLayout(Z)V

    return-void
.end method

.method public setCameraChangeable(Z)V
    .registers 2

    .line 897
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCameraChangeable:Z

    return-void
.end method

.method public setClickable(Z)V
    .registers 2

    .line 890
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 930
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 932
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVisibility(I)V

    goto :goto_12

    .line 934
    :cond_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->releaseDialbarBitmap()V

    const/16 p1, 0x8

    .line 935
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVisibility(I)V

    :goto_12
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 4

    .line 1229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 1230
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->normalizeAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1232
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 1233
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->normalizeAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1235
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 1236
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->normalizeAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1238
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 1239
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->normalizeAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1241
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 1242
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->normalizeAngle(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    :cond_37
    return-void
.end method

.method public setVideoRecording(Z)V
    .registers 6

    .line 492
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    const/4 v1, -0x1

    if-nez v0, :cond_10

    .line 493
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 494
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    return-void

    .line 498
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_15

    return-void

    .line 502
    :cond_15
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 503
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 505
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    const/16 v2, 0x8

    if-eqz p1, :cond_35

    .line 506
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez p1, :cond_50

    .line 512
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_50

    .line 520
    :cond_35
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v0, :cond_40

    .line 522
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    .line 524
    :cond_40
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez p1, :cond_50

    .line 525
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 535
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 537
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070252

    .line 538
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 539
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07023d

    .line 540
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 542
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_94

    .line 543
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 544
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v3

    add-int/2addr p1, v1

    sub-int/2addr v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 546
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    goto :goto_ba

    .line 548
    :cond_94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 549
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    .line 550
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 552
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 553
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p1, 0x7f07023e

    .line 555
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    :goto_ba
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

    .line 925
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-void
.end method

.method public setZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V
    .registers 2

    .line 472
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    return-void
.end method

.method public setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-void
.end method

.method public showFullView()V
    .registers 3

    .line 1308
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1311
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    .line 1312
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    .line 1313
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1315
    :cond_14
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1317
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1319
    :cond_1f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    .line 1320
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showWithAnimation(Z)V

    .line 1323
    :cond_29
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method public showSimpleView()V
    .registers 3

    .line 1285
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1288
    :cond_7
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 1292
    :cond_12
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    .line 1293
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1295
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1297
    :cond_20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    .line 1298
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showWithAnimation(Z)V

    :cond_2a
    const/4 v0, 0x0

    .line 1301
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method public showSimpleViewIfNeeded()V
    .registers 3

    .line 1333
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 1334
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    :cond_b
    return-void
.end method

.method public startZooming()V
    .registers 2

    const/4 v0, 0x1

    .line 1513
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return-void
.end method

.method public stopZooming()V
    .registers 3

    const/4 v0, 0x0

    .line 1520
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    .line 1521
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez v0, :cond_18

    .line 1522
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$11;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$11;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method

.method public zoom(IZ)I
    .registers 10

    .line 583
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 584
    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", RmMagnificationBaseRatio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_28
    if-gez p1, :cond_2c

    move p1, v2

    goto :goto_31

    .line 590
    :cond_2c
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    if-le p1, v0, :cond_31

    move p1, v0

    .line 594
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 595
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    .line 597
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    const/high16 v4, 0x42c80000    # 100.0f

    if-ge p1, v3, :cond_4f

    .line 598
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-double v5, p1

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomMagnificationRound(D)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    goto :goto_53

    .line 600
    :cond_4f
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    :goto_53
    if-eqz p2, :cond_73

    .line 604
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-eqz p1, :cond_68

    .line 605
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_66

    const-string p1, "finish wide camera mode because of zoom ratio is changed."

    .line 606
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 608
    :cond_66
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 610
    :cond_68
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->centerDipsZoomMagnification(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    :cond_73
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 613
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p2, :cond_14c

    .line 614
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpg-float v5, p2, p1

    if-gtz v5, :cond_d4

    sub-float/2addr p2, v3

    .line 617
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    int-to-float p1, p1

    .line 621
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v3, :cond_ac

    .line 622
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    .line 623
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    float-to-int p1, v3

    .line 625
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int p2, p1, p2

    goto :goto_bf

    .line 627
    :cond_ac
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    mul-float/2addr p1, p2

    sub-float/2addr v3, p1

    float-to-int p2, v3

    .line 629
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, p2

    .line 631
    :goto_bf
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 632
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 633
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, p2, v3, p1, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_1c5

    :cond_d4
    sub-float/2addr p2, p1

    .line 637
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    int-to-float v3, v3

    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    sub-float/2addr v5, p1

    div-float/2addr v3, v5

    .line 641
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz p1, :cond_111

    .line 642
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    .line 643
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr p1, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    .line 644
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr p1, v5

    mul-float/2addr v3, p2

    add-float/2addr p1, v3

    float-to-double p1, p1

    .line 645
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 646
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int p2, p1, p2

    goto :goto_138

    .line 648
    :cond_111
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    .line 649
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr p1, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    .line 650
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr p1, v5

    mul-float/2addr v3, p2

    sub-float/2addr p1, v3

    float-to-double p1, p1

    .line 651
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p2, p1

    .line 652
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, p2

    .line 654
    :goto_138
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 655
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 656
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, p2, v3, p1, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1c5

    .line 660
    :cond_14c
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    sub-float/2addr p1, v3

    .line 661
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    int-to-float p2, p2

    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    sub-float/2addr v5, v3

    div-float/2addr p2, v5

    .line 664
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v3, :cond_18b

    .line 665
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    .line 666
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    .line 667
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v3, v5

    mul-float/2addr p2, p1

    add-float/2addr v3, p2

    float-to-double p1, v3

    .line 668
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 669
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int p2, p1, p2

    goto :goto_1b2

    .line 671
    :cond_18b
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    .line 672
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    .line 673
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v3, v5

    mul-float/2addr p2, p1

    sub-float/2addr v3, p2

    float-to-double p1, v3

    .line 674
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p2, p1

    .line 675
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, p2

    .line 677
    :goto_1b2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 678
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 679
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, p2, v3, p1, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 682
    :goto_1c5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    .line 684
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1f"

    new-array v1, v1, [Ljava/lang/Object;

    .line 685
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v2

    .line 684
    invoke-static {p2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomRatio(F)V

    .line 687
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 688
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
