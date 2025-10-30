.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
.super Landroid/widget/FrameLayout;
.source "ZoomDial.java"


# static fields
.field private static BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal; = null

.field public static final BOKEH_MAX_ZOOM_RATIO:F = 5.0f

.field private static final BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

.field public static final DELAY_ZOOM_DIAL_BAR_HIDE_MILLIS:I = 0xfa0

.field public static final DELAY_ZOOM_DIAL_HIDE_MILLIS:I = 0x1f4

.field private static final IMMEDIATE_ANIMATION_DURATION_IN_MILLIS:J = 0x0L

.field private static final INVISIBLE_ALPHA:F = 0.0f

.field private static final INVISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final SWITCH_POINT_MAIN_ZOOM_VALUE:F = 1.0f

.field private static final SWITCH_POINT_NINE_THRESHOLD_VALUE:F = 1.0f

.field public static final SWITCH_POINT_ZOOM_VALUE:F = 2.0f

.field public static final TRANSFER_CONSTANT:F = 20.0f

.field private static final VISIBLE_ALPHA:F = 1.0f

.field private static final VISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final WIDE_ZOOM_MAX_RATIO:F = 0.6f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_DX:F = 0.0f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_DY:F = 1.0f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_RADIUS:F = 4.0f

.field private static final ZOOM_DIAL_MAX_ALPHA:F = 255.0f

.field public static final ZOOM_MAGNIFICATION_COEFFICIENT:F = 0.150515f


# instance fields
.field private firstPointText:Ljava/lang/String;

.field private m0dot7ToFirstPointWidth:I

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

.field private mIsNonLogicCameraVideo:Z

.field private mIsRecording:Z

.field private mIsShown:Z

.field private mIsWideCameraSupported:Z

.field private mIsWideMode:Z

.field private mIsZooming:Z

.field private mLatestZoomRatio:I

.field private mLeftImageLayout:Landroid/widget/LinearLayout;

.field private mMagnificationBaseRatio:F

.field private mMaxZoomStep:I

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRunAfterHide:Ljava/lang/Runnable;

.field private mSCaleDot0Layout:Landroid/widget/LinearLayout;

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

.field private mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonTextView:Landroid/widget/TextView;

.field private mZoomDialCenterArea:Landroid/widget/ImageView;

.field private mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

.field private mZoomDialImageLayout:Landroid/widget/LinearLayout;

.field private mZoomDialLeftBlurArea:Landroid/widget/ImageView;

.field private mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

.field private mZoomDialRightBlurArea:Landroid/widget/ImageView;

.field private mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

.field private mZoomDialScale0DOT7to1MarginView:Landroid/view/View;

.field private mZoomDialScale1to2MarginView:Landroid/view/View;

.field private mZoomDialScale2to3MarginView:Landroid/view/View;

.field private mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

.field private mZoomFirstPointRatioMax:F

.field private final mZoomPoint0Step:F

.field private mZoomPoint0TextView:Landroid/widget/TextView;

.field private final mZoomPoint1Step:F

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

.field private mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

.field private mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

.field private mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

.field private mZoomSecondPointRatioMax:F

.field private mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

.field private mZoomWidePointRatioMax:F

.field private wideButtonText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 78
    new-instance v0, Ljava/math/BigDecimal;

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal;

    .line 197
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 198
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    .line 197
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 199
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v2, v0, 0x1

    .line 200
    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    const/4 v2, 0x0

    :goto_2d
    if-gt v2, v0, :cond_3f

    .line 203
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

    goto :goto_2d

    :cond_3f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 467
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    const/4 p2, 0x0

    .line 85
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 89
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 91
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    .line 95
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomFirstPointRatioMax:F

    .line 96
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    .line 120
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 121
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    .line 122
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0Step:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 123
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1Step:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 124
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2Step:I

    .line 126
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    .line 127
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    .line 128
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    const-wide/16 v2, 0x0

    .line 132
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    .line 135
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarAreaHideEvent:Ljava/lang/Runnable;

    .line 153
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    .line 159
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    .line 178
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 180
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    .line 185
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    .line 186
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 189
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    .line 190
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    const/4 v2, 0x0

    .line 192
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    .line 215
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 469
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 470
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchMagnification(ZI)V

    const/16 v2, 0xfa0

    .line 472
    iput v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 474
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v2

    if-eqz v2, :cond_d3

    const v2, 0x3f19999a    # 0.6f

    .line 475
    iput v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    .line 477
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    .line 478
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomFirstPointRatioMax:F

    const-string p1, "x1"

    .line 485
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    const-string p1, "W"

    .line 486
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    .line 488
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isUltraWideCameraSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    .line 489
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_c3

    .line 490
    new-array p1, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsWideCameraSupported , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 492
    :cond_c3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v1, :cond_d3

    .line 493
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    :cond_d3
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
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    return-object p0
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
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1Step:F

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    return p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayedImmediately()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2Step:I

    return p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    return p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    return p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    return p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;D)F
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomMagnificationRound(D)F

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;IZ)I
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->convertCurrentStep(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->handleZoomDialButtonClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->handleZoomDialButtonLongPress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    return p1
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale0DOT7to1MarginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    return p1
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    return p1
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale2to3MarginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->handleWideButtonClick()V

    return-void
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setDrawDotLayout()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    return p0
.end method

.method static synthetic access$4800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 49
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideWithAnimation(Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    return-object p0
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
    const v0, 0x3f1d70a4    # 0.615f

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 1007
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

    .line 1052
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

    .line 1612
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1613
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1612
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1614
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1615
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1614
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1616
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_53

    .line 1618
    :cond_28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1619
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1618
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1620
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1622
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1620
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1623
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_53
    return-void
.end method

.method private convertCurrentStep(IZ)I
    .registers 4

    if-eqz p2, :cond_7

    .line 980
    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    aget p1, p2, p1

    goto :goto_17

    .line 983
    :cond_7
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    :goto_9
    if-lez p2, :cond_16

    .line 984
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

.method private createDialbarBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 1628
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 1629
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1631
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1632
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getDotImage(FF)Landroid/widget/ImageView;
    .registers 5

    .line 1309
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080303

    .line 1310
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1311
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private handleWideButtonClick()V
    .registers 3

    .line 1376
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    if-nez v0, :cond_5

    return-void

    .line 1379
    :cond_5
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->WIDE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 1381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onChangeModeRequested()V

    const/4 v0, 0x1

    .line 1382
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 1383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayedImmediately()V

    return-void
.end method

.method private handleZoomDialButtonClick()V
    .registers 3

    .line 1316
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    if-nez v0, :cond_5

    return-void

    .line 1319
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_53

    .line 1322
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_19

    .line 1323
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1Step:F

    .line 1324
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_46

    .line 1326
    :cond_19
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_28

    .line 1327
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2Step:I

    int-to-float v0, v0

    .line 1328
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_46

    .line 1331
    :cond_28
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    if-eqz v0, :cond_3f

    .line 1332
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    if-nez v0, :cond_37

    const/4 v0, 0x0

    .line 1334
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_46

    .line 1337
    :cond_37
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1Step:F

    .line 1338
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_46

    .line 1342
    :cond_3f
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1Step:F

    .line 1343
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 1347
    :goto_46
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomTrigger(Ljava/lang/String;)V

    :cond_53
    return-void
.end method

.method private handleZoomDialButtonLongPress()Z
    .registers 3

    .line 1352
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialLongTapEvent()V

    .line 1353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_55

    .line 1354
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_32

    .line 1355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0}, Landroid/view/GestureDetector;->isLongpressEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1356
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayedImmediately()V

    .line 1357
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$10;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1363
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/VibrationManager;->vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V

    goto :goto_55

    .line 1365
    :cond_32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_55

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez v0, :cond_55

    .line 1366
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getCurrentStep()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoom(I)I

    .line 1367
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 1368
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 1369
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/VibrationManager;->vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V

    :cond_55
    :goto_55
    const/4 v0, 0x1

    return v0
.end method

.method private hideDialbarDelayedImmediately()V
    .registers 2

    .line 1429
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1433
    :cond_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    .line 1434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 1435
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    :cond_12
    return-void
.end method

.method private hideWithAnimation(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1580
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    .line 1582
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1583
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_11

    const-wide/16 v1, 0x64

    goto :goto_13

    :cond_11
    const-wide/16 v1, 0x0

    .line 1584
    :goto_13
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1587
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1589
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    if-eqz p1, :cond_24

    .line 1590
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 1591
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    .line 1594
    :cond_24
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz p1, :cond_2b

    .line 1595
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onHiddenZoom()V

    :cond_2b
    return-void
.end method

.method private hideZoomBarArea()V
    .registers 3

    .line 1601
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    .line 1602
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->releaseDialbarBitmap()V

    .line 1603
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1604
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v0, :cond_14

    .line 1605
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowSimpleView()V

    :cond_14
    return-void
.end method

.method private normalizeAngle(I)F
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    const/high16 p1, 0x42b40000    # 90.0f

    return p1
.end method

.method private relayoutBlurArea(I)V
    .registers 6

    .line 607
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 610
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    .line 611
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 613
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_34

    .line 615
    :cond_26
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 617
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    :goto_34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setDrawDotLayout()V

    .line 620
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private releaseDialbarBitmap()V
    .registers 3

    .line 1639
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1640
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1642
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 1643
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1645
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 1646
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1648
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    .line 1649
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1651
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    .line 1652
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1654
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2b

    .line 1655
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2b
    return-void
.end method

.method private setBokehSwitchLayout(Z)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 930
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 931
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    const-string v3, "x1"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCircleZoom1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 933
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3b

    .line 935
    :cond_1b
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    if-eqz v1, :cond_25

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    if-nez v1, :cond_25

    .line 936
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 938
    :cond_25
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    const-string v2, "x2"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCircleZoom1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 944
    :goto_3b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 945
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 947
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07028a

    .line 948
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 949
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070273

    .line 950
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 952
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_82

    .line 953
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 954
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v5

    add-int/2addr v1, v3

    sub-int/2addr v5, v1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 956
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    goto :goto_a8

    .line 958
    :cond_82
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x2

    .line 959
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 960
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 961
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 962
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v1, 0x7f070274

    .line 964
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    .line 967
    :goto_a8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

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

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
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

    .line 920
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    goto :goto_f

    .line 922
    :cond_7
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 924
    :goto_f
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    .line 925
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    int-to-float p1, p1

    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    sub-float/2addr p2, v0

    div-float/2addr p1, p2

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    return-void
.end method

.method private setDrawDotLayout()V
    .registers 14

    .line 1276
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 1277
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070272

    .line 1278
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 1279
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07027c

    .line 1280
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1281
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07027d

    .line 1282
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1283
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07027e

    .line 1284
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v2, v2

    add-float v5, v0, v1

    div-float/2addr v2, v5

    float-to-double v6, v2

    .line 1286
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    const/4 v6, 0x0

    move v7, v6

    :goto_59
    const/4 v8, 0x1

    if-ge v7, v2, :cond_7c

    .line 1288
    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v12, v1

    invoke-direct {v11, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getDotImage(FF)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    :cond_7c
    int-to-float v2, v3

    div-float/2addr v2, v5

    float-to-double v2, v2

    .line 1293
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v3, v6

    :goto_85
    if-ge v3, v2, :cond_a7

    .line 1295
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v11, v1

    invoke-direct {v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1297
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getDotImage(FF)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    :cond_a7
    int-to-float v2, v4

    div-float/2addr v2, v5

    float-to-double v2, v2

    .line 1300
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    :goto_af
    if-ge v6, v2, :cond_d1

    .line 1302
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v7, v1

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getDotImage(FF)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_af

    :cond_d1
    return-void
.end method

.method private setZoomDialImageView()V
    .registers 15

    .line 792
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    if-nez v0, :cond_28

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 800
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 801
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->createDialbarBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 804
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070273

    .line 805
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 806
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07026d

    .line 807
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 809
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 810
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    .line 811
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 812
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v5, v1

    const/high16 v6, 0x437f0000    # 255.0f

    div-float v5, v6, v5

    .line 814
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_a5

    .line 815
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    move v9, v8

    :goto_7c
    if-gt v9, v1, :cond_c4

    int-to-float v10, v9

    mul-float/2addr v10, v5

    sub-float v10, v6, v10

    float-to-double v10, v10

    .line 817
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    rsub-int v10, v10, 0xff

    .line 818
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 819
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v7, v9

    add-int/lit8 v12, v11, -0x1

    invoke-direct {v10, v12, v8, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 823
    new-instance v11, Landroid/graphics/Rect;

    sub-int v12, v1, v9

    add-int/lit8 v13, v12, -0x1

    invoke-direct {v11, v13, v8, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 827
    invoke-virtual {v4, v0, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7c

    :cond_a5
    move v7, v8

    :goto_a6
    if-gt v7, v1, :cond_c4

    int-to-float v9, v7

    mul-float/2addr v9, v5

    sub-float v9, v6, v9

    float-to-double v9, v9

    .line 831
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 832
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 833
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v1, v7

    add-int/lit8 v11, v10, -0x1

    invoke-direct {v9, v11, v8, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 837
    invoke-virtual {v4, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a6

    .line 840
    :cond_c4
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 844
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v3, :cond_ff

    .line 845
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 846
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 847
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v3, v4, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 848
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 849
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v4, v8, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_12e

    .line 851
    :cond_ff
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 852
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 853
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v3, v4, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 854
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 855
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v4, v8, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 857
    :goto_12e
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 858
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    .line 860
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    .line 861
    invoke-virtual {v7, v0, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 862
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 864
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 865
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    .line 866
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 867
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 868
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v7, :cond_185

    move v7, v8

    :goto_167
    if-gt v7, v1, :cond_1b5

    int-to-float v9, v7

    mul-float/2addr v9, v5

    sub-float v9, v6, v9

    float-to-double v9, v9

    .line 870
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 871
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 872
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v1, v7

    add-int/lit8 v11, v10, -0x1

    invoke-direct {v9, v11, v8, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 874
    invoke-virtual {v4, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_167

    .line 877
    :cond_185
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    move v9, v8

    :goto_18c
    if-gt v9, v1, :cond_1b5

    int-to-float v10, v9

    mul-float/2addr v10, v5

    sub-float v10, v6, v10

    float-to-double v10, v10

    .line 879
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    rsub-int v10, v10, 0xff

    .line 880
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 881
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v7, v9

    add-int/lit8 v12, v11, -0x1

    invoke-direct {v10, v12, v8, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 883
    new-instance v11, Landroid/graphics/Rect;

    sub-int v12, v1, v9

    add-int/lit8 v13, v12, -0x1

    invoke-direct {v11, v13, v8, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 885
    invoke-virtual {v4, v0, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_18c

    .line 888
    :cond_1b5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 890
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 891
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 894
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private showWithAnimation(Z)V
    .registers 5

    const/4 v0, 0x1

    .line 1564
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    .line 1566
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v1, :cond_a

    .line 1567
    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowZoom(Z)V

    .line 1570
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1571
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1572
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1e

    const-wide/16 v1, 0x64

    goto :goto_20

    :cond_1e
    const-wide/16 v1, 0x0

    .line 1573
    :goto_20
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1576
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private zoomMagnificationRound(D)F
    .registers 9

    .line 1018
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1024
    new-instance v1, Ljava/math/BigDecimal;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_3f

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal;

    .line 1025
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_3f

    .line 1026
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 1027
    new-array v0, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ==> x0.9"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1029
    :cond_38
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    return p1

    :cond_3f
    const/4 v1, 0x4

    .line 1031
    invoke-virtual {v0, v3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 1032
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_68

    .line 1033
    new-array v1, v3, [Ljava/lang/String;

    const-string v4, "%f ==> x%.1f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_68
    return v0
.end method


# virtual methods
.method public getCurrentStep()I
    .registers 2

    .line 1065
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    return v0
.end method

.method public getCurrentZoomValue()F
    .registers 2

    .line 1069
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

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

    .line 1061
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method public hideDelayed(Ljava/lang/Runnable;)V
    .registers 5

    .line 1542
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1543
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 1546
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1547
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method

.method public hideDialbarDelayed()V
    .registers 7

    .line 1509
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_5

    return-void

    .line 1512
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    .line 1515
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    .line 1516
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

    .line 1518
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

    .line 1527
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1528
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1530
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    const/4 v0, 0x0

    .line 1532
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideWithAnimation(Z)V

    :cond_15
    return-void
.end method

.method public isFullView()Z
    .registers 2

    .line 1557
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

    .line 1667
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1668
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 1669
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1670
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1672
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

    .line 1445
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 1094
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09015b

    .line 1095
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const v0, 0x7f09009b

    .line 1096
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    const v0, 0x7f0901f6

    .line 1099
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    const v0, 0x7f0901f5

    .line 1100
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    const/4 v0, 0x0

    .line 1103
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    const v1, 0x7f09009c

    .line 1106
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const v1, 0x7f09014c

    .line 1107
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f09014d

    .line 1108
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f09014e

    .line 1109
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090071

    .line 1110
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

    const v1, 0x7f090072

    .line 1111
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

    const v1, 0x7f090073

    .line 1112
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

    const v1, 0x7f090205

    .line 1113
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;

    .line 1115
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    const v0, 0x7f0901fb

    .line 1118
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    const v0, 0x7f0901fd

    .line 1119
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    const v0, 0x7f0901ff

    .line 1120
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    const v0, 0x7f090201

    .line 1121
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    const v0, 0x7f090207

    .line 1124
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    const v0, 0x7f090208

    .line 1125
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0901f7

    .line 1127
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0901f9

    .line 1128
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    const v0, 0x7f0901f8

    .line 1129
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    const v0, 0x7f0901fa

    .line 1130
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    const v0, 0x7f0901f1

    .line 1132
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 1133
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    if-nez v0, :cond_118

    const v0, 0x7f07028a

    .line 1134
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    .line 1137
    :cond_118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901fc

    .line 1139
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale0DOT7to1MarginView:Landroid/view/View;

    const v0, 0x7f0901fe

    .line 1140
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    const v0, 0x7f090200

    .line 1141
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale2to3MarginView:Landroid/view/View;

    const v0, 0x7f09015c

    .line 1143
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    const v0, 0x7f090076

    .line 1145
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCircleZoom1:Landroid/widget/ImageView;

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1149
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;

    .line 1184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1185
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setBokehMode(ZI)V
    .registers 4

    .line 904
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 907
    :cond_5
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    .line 908
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x1f4

    .line 909
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    goto :goto_14

    :cond_10
    const/16 v0, 0xfa0

    .line 911
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 913
    :goto_14
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchMagnification(ZI)V

    .line 914
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchLayout(Z)V

    return-void
.end method

.method public setClickable(Z)V
    .registers 2

    .line 1042
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 1083
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 1085
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVisibility(I)V

    goto :goto_12

    .line 1087
    :cond_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->releaseDialbarBitmap()V

    const/16 p1, 0x8

    .line 1088
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVisibility(I)V

    :goto_12
    return-void
.end method

.method public setNonLogicCameraVideo(Z)V
    .registers 6

    .line 590
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    .line 592
    :goto_d
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v2

    .line 596
    :goto_19
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 600
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    .line 601
    :goto_24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_27
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3

    .line 1393
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->normalizeAngle(I)F

    move-result p1

    .line 1394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 1395
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1397
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 1398
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1400
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 1401
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1403
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_20

    .line 1404
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1406
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 1407
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1409
    :cond_27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 1410
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    :cond_2e
    return-void
.end method

.method public setVideoRecording(Z)V
    .registers 6

    .line 524
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    const/4 v1, -0x1

    if-nez v0, :cond_10

    .line 525
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 526
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    return-void

    .line 530
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_15

    return-void

    .line 534
    :cond_15
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 535
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 537
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    if-eqz p1, :cond_2e

    .line 538
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez p1, :cond_43

    .line 543
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43

    :cond_2e
    if-eqz v0, :cond_33

    .line 552
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    .line 554
    :cond_33
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez p1, :cond_43

    .line 555
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 565
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 567
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07028a

    .line 568
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 569
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070273

    .line 570
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 572
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_89

    .line 573
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 574
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v3

    add-int/2addr p1, v1

    sub-int/2addr v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 576
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    goto :goto_af

    .line 578
    :cond_89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 579
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    .line 580
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 582
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 583
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p1, 0x7f070274

    .line 585
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    :goto_af
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

    .line 1078
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-void
.end method

.method public setZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V
    .registers 2

    .line 504
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    return-void
.end method

.method public setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-void
.end method

.method public showFullView()V
    .registers 3

    .line 1475
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1478
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    .line 1479
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    .line 1480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1482
    :cond_14
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1484
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1486
    :cond_1f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    .line 1487
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showWithAnimation(Z)V

    .line 1490
    :cond_29
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method public showSimpleView()V
    .registers 3

    .line 1452
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1455
    :cond_7
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 1459
    :cond_12
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    .line 1460
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1462
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1464
    :cond_20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    .line 1465
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showWithAnimation(Z)V

    :cond_2a
    const/4 v0, 0x0

    .line 1468
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method public showSimpleViewIfNeeded()V
    .registers 3

    .line 1500
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 1501
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    :cond_b
    return-void
.end method

.method public startZooming()V
    .registers 2

    const/4 v0, 0x1

    .line 1686
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return-void
.end method

.method public stopZooming()V
    .registers 3

    const/4 v0, 0x0

    .line 1693
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    .line 1694
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez v0, :cond_18

    .line 1695
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

.method public zoom(I)I
    .registers 12

    .line 631
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 632
    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mMagnificationBaseRatio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 636
    :cond_28
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    const/16 v3, 0x1c

    if-eqz v0, :cond_31

    if-ge p1, v3, :cond_31

    move p1, v3

    .line 640
    :cond_31
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-eqz v0, :cond_44

    .line 641
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_42

    const-string v0, "finish wide camera mode because of zoom ratio is changed."

    .line 642
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 644
    :cond_42
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    :cond_44
    if-gez p1, :cond_48

    move p1, v2

    goto :goto_4d

    .line 649
    :cond_48
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    if-le p1, v0, :cond_4d

    move p1, v0

    .line 654
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    if-eqz v0, :cond_299

    .line 655
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 656
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_73

    .line 657
    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentZoomRatio : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 664
    :cond_73
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p1, v3, :cond_7e

    .line 666
    iput v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    goto :goto_98

    .line 668
    :cond_7e
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    if-ge p1, v3, :cond_94

    .line 669
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    const v3, 0x3f1d70a4    # 0.615f

    mul-float/2addr p1, v3

    float-to-double v6, p1

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomMagnificationRound(D)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    goto :goto_98

    .line 672
    :cond_94
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 676
    :goto_98
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->centerDipsZoomMagnification(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float p1, v6

    .line 678
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    .line 679
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_d3

    .line 680
    new-array v6, v1, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentZoomRatio"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentZoomMagnification "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 683
    :cond_d3
    iget-boolean v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-nez v6, :cond_1da

    .line 684
    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_128

    cmpg-float v3, v6, v5

    if-gez v3, :cond_128

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    if-nez v3, :cond_128

    .line 688
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    sub-float/2addr v6, p1

    sub-float/2addr v5, p1

    div-float/2addr v6, v5

    .line 690
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float p1, p1

    .line 694
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v3, :cond_107

    .line 695
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    mul-float/2addr p1, v6

    add-float/2addr v3, p1

    float-to-int p1, v3

    .line 697
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v3, p1, v3

    goto :goto_113

    .line 699
    :cond_107
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    mul-float/2addr p1, v6

    sub-float/2addr v3, p1

    float-to-int v3, v3

    .line 701
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, v3

    .line 703
    :goto_113
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 704
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 705
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3, v5, p1, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_253

    .line 706
    :cond_128
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpg-float v6, v3, p1

    if-gtz v6, :cond_17f

    sub-float/2addr v3, v5

    .line 709
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    int-to-float p1, p1

    .line 713
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v5, :cond_15a

    .line 714
    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    if-eqz v5, :cond_157

    .line 715
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v5

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 717
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float/2addr p1, v3

    add-float/2addr v5, p1

    float-to-int p1, v5

    .line 719
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v3, p1, v3

    move v9, v3

    move v3, p1

    move p1, v9

    goto :goto_16a

    :cond_157
    move p1, v2

    move v3, p1

    goto :goto_16a

    .line 722
    :cond_15a
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v5

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr p1, v3

    sub-float/2addr v5, p1

    float-to-int p1, v5

    .line 727
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr v3, p1

    .line 729
    :goto_16a
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 730
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 731
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, p1, v5, v3, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_253

    :cond_17f
    sub-float/2addr v3, p1

    .line 735
    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    sub-float/2addr v6, p1

    div-float/2addr v5, v6

    .line 739
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz p1, :cond_1ae

    .line 740
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result p1

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v6, v6

    add-float/2addr p1, v6

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    int-to-float v6, v6

    add-float/2addr p1, v6

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 743
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr p1, v6

    mul-float/2addr v5, v3

    add-float/2addr p1, v5

    float-to-double v5, p1

    .line 744
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p1, v5

    .line 745
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v3, p1, v3

    goto :goto_1c6

    .line 747
    :cond_1ae
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result p1

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    iget v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr p1, v6

    mul-float/2addr v5, v3

    sub-float/2addr p1, v5

    float-to-double v5, p1

    .line 749
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 750
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, v3

    .line 752
    :goto_1c6
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 753
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 754
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3, v5, p1, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_253

    .line 758
    :cond_1da
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    sub-float/2addr p1, v5

    .line 759
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    int-to-float v3, v3

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    sub-float/2addr v6, v5

    div-float/2addr v3, v6

    .line 762
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v5, :cond_219

    .line 763
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    .line 764
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    .line 765
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float/2addr v3, p1

    add-float/2addr v5, v3

    float-to-double v5, v5

    .line 766
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p1, v5

    .line 767
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v3, p1, v3

    goto :goto_240

    .line 769
    :cond_219
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    .line 770
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    .line 771
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v3, p1

    sub-float/2addr v5, v3

    float-to-double v5, v5

    .line 772
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 773
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, v3

    .line 775
    :goto_240
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 776
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 777
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3, v5, p1, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 780
    :goto_253
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    .line 781
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v1, v1, [Ljava/lang/Object;

    .line 782
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v2

    .line 781
    invoke-static {v3, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomRatio(F)V

    .line 783
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLatestZoomRatio:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_291

    .line 784
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    invoke-virtual {p1, v1, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialTapEvent(Ljava/util/List;FZ)V

    .line 785
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLatestZoomRatio:I

    .line 787
    :cond_291
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 788
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_299
    const-string p1, "zoom ratios is not set"

    .line 660
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2
.end method
