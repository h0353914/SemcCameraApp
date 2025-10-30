.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
.super Landroid/widget/FrameLayout;
.source "ZoomDial.java"


# static fields
.field private static BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal; = null

.field public static final BOKEH_MAX_ZOOM_RATIO:F = 5.0f

.field private static final BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

.field public static final DELAY_ZOOM_DIAL_BAR_HIDE_MILLIS:I = 0xfa0

.field public static final DELAY_ZOOM_DIAL_HIDE_MILLIS:I = 0x1f4

.field private static final DIAL_BAR_MEASURED_HEIGHT:I = 0x7e

.field private static final DIAL_BAR_MEASURED_WIDTH:I = 0x654

.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field private static final IMMEDIATE_ANIMATION_DURATION_IN_MILLIS:J = 0x0L

.field private static final INVISIBLE_ALPHA:F = 0.0f

.field private static final INVISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final SWITCH_POINT_MAIN_ZOOM_VALUE:F = 1.0f

.field private static final SWITCH_POINT_NINE_THRESHOLD_VALUE:F = 1.0f

.field public static final SWITCH_POINT_ZOOM_VALUE:F = 2.0f

.field public static final SWITCH_POINT_ZOOM_VALUE_MAX:F = 10.0f

.field public static final TRANSFER_CONSTANT:F = 20.0f

.field private static final UNREACHABLE_ZOOM_VALUES:[F

.field private static final VISIBLE_ALPHA:F = 1.0f

.field private static final VISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final WIDE_ZOOM_MAX_RATIO:F = 0.6f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_DX:F = 0.0f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_DY:F = 1.0f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_RADIUS:F = 4.0f

.field private static final ZOOM_DIAL_MAX_ALPHA:F = 255.0f

.field public static final ZOOM_MAGNIFICATION_COEFFICIENT:F

.field public static final mZoomPoint0Step:I = 0x0

.field public static final mZoomPoint1Step:I = 0xa8

.field public static final mZoomPoint2Step:I = 0x198

.field public static final mZoomPoint3Step:I = 0x3c6


# instance fields
.field private bt:I

.field changed:Z

.field private circle_zoom1:Landroid/widget/ImageView;

.field public eventEnable:Z

.field private event_handler:Landroid/view/View;

.field private fPointText:Ljava/lang/String;

.field private firstPointText:Ljava/lang/String;

.field private firstPointTextDescription:Ljava/lang/String;

.field private m0dot7ToFirstPointWidth:I

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

.field private mIsGray:Z

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

.field private mMovedX:F

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPrevX:F

.field private mRunAfterHide:Ljava/lang/Runnable;

.field private mSCaleDot0Layout:Landroid/widget/LinearLayout;

.field private mSCaleDot1Layout:Landroid/widget/LinearLayout;

.field private mSCaleDot2Layout:Landroid/widget/LinearLayout;

.field private mSecondToThirdPointWidth:I

.field private mSliderView:Landroid/widget/FrameLayout;

.field private mSliderViewBase:Landroid/widget/FrameLayout;

.field private mSliderViewWidth:I

.field private mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

.field private mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

.field private mWideTextLayout:Landroid/widget/FrameLayout;

.field private mWideTextView:Landroid/widget/TextView;

.field private mZoomButtonGestureDetector:Landroid/view/GestureDetector;

.field private mZoomCenterLayout:Landroid/widget/LinearLayout;

.field private mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

.field private mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonTextView:Landroid/widget/TextView;

.field private mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

.field private mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

.field private mZoomDialButtonTextViewRight:Landroid/widget/TextView;

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

.field private mZoomLineSetRatio:F

.field private mZoomPoint0TextView:Landroid/widget/TextView;

.field private mZoomPoint1TextView:Landroid/widget/TextView;

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

.field private mZoomScaleBackgroundLayout3:Landroid/widget/FrameLayout;

.field private mZoomSecondPointRatioMax:F

.field private mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

.field private mZoomWidePointRatioMax:F

.field private parent:Landroid/view/View;

.field recordingOrientation:I

.field private sPointText:Ljava/lang/String;

.field private tPointText:Ljava/lang/String;

.field private wideButtonText:Ljava/lang/String;

.field private wideButtonTextDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43700000    # 240.0f

    div-float/2addr v0, v1

    sput v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->ZOOM_MAGNIFICATION_COEFFICIENT:F

    .line 83
    new-instance v0, Ljava/math/BigDecimal;

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal;

    const/16 v0, 0xb

    .line 86
    new-array v0, v0, [F

    fill-array-data v0, :array_58

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->UNREACHABLE_ZOOM_VALUES:[F

    .line 263
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 264
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    .line 263
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 265
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v2, v0, 0x1

    .line 266
    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    const/4 v2, 0x0

    :goto_45
    if-gt v2, v0, :cond_57

    .line 269
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

    goto :goto_45

    :cond_57
    return-void

    :array_58
    .array-data 4
        0x40bccccd    # 5.9f
        0x40dccccd    # 6.9f
        0x40eccccd    # 7.4f
        0x40f9999a    # 7.8f
        0x41033333    # 8.2f
        0x41080000    # 8.5f
        0x410ccccd    # 8.8f
        0x4111999a    # 9.1f
        0x41166666    # 9.4f
        0x4119999a    # 9.6f
        0x411e6666    # 9.9f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 584
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 94
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    const/4 p2, 0x0

    .line 95
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 99
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 101
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    .line 105
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomFirstPointRatioMax:F

    .line 106
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    const/4 v0, 0x1

    .line 116
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->recordingOrientation:I

    .line 176
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 177
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    .line 183
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    .line 184
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    .line 185
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    .line 188
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    .line 189
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    const-wide/16 v1, 0x0

    .line 190
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    .line 193
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarAreaHideEvent:Ljava/lang/Runnable;

    .line 212
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    .line 218
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    .line 245
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 247
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    .line 251
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    .line 252
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 255
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    .line 256
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    const/4 v1, 0x0

    .line 258
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    .line 282
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I

    .line 283
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->eventEnable:Z

    .line 298
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F

    .line 316
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 734
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    .line 586
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 587
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchMagnification(ZI)V

    const/16 p1, 0xfa0

    .line 589
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 591
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_fd

    const p1, 0x3f19999a    # 0.6f

    .line 592
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 594
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 595
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomFirstPointRatioMax:F

    const-string p1, "x1"

    .line 602
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    const-string p1, "x0.6"

    .line 603
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->sPointText:Ljava/lang/String;

    const-string p1, "x2"

    .line 604
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    const-string p1, "x10"

    .line 605
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->fPointText:Ljava/lang/String;

    .line 606
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0096

    .line 607
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "1"

    aput-object v3, v2, p2

    .line 606
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointTextDescription:Ljava/lang/String;

    const-string p1, "W"

    .line 608
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    .line 609
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 610
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "0.6"

    aput-object v2, v1, p2

    .line 609
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonTextDescription:Ljava/lang/String;

    .line 612
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isUltraWideCameraSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    .line 613
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_ed

    .line 614
    new-array p1, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsWideCameraSupported , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 616
    :cond_ed
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_fd

    .line 617
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    :cond_fd
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomCenterLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I

    return p0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F

    return p0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F
    .registers 2

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    return p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F

    return p0
.end method

.method static synthetic access$2002(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F
    .registers 2

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F

    return p1
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    return p0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout3:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    return p0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    return p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    return p0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    return p1
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale0DOT7to1MarginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    return p1
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    return p1
.end method

.method static synthetic access$4800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale2to3MarginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideWithAnimation(Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->handleWideButtonClick()V

    return-void
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setDrawDotLayout()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    return p0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .registers 1

    .line 50
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    return p0
.end method

.method static synthetic access$5900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    return p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    return-object p0
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

    .line 1213
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    sget p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->ZOOM_MAGNIFICATION_COEFFICIENT:F

    float-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private centerDipsZoomMagnification(F)Ljava/lang/String;
    .registers 5

    .line 1268
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
    .registers 4

    if-nez p1, :cond_1a

    .line 1855
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1856
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1855
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1857
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_31

    .line 1859
    :cond_1a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1860
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1859
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1861
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_31
    return-void
.end method

.method private circleSwitchCenter(Z)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 1867
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    .line 1868
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1867
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1869
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_31

    .line 1871
    :cond_1a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    .line 1872
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1871
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1873
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_31
    return-void
.end method

.method private circleSwitchLeft(Z)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 1879
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    .line 1880
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1879
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1881
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_31

    .line 1883
    :cond_1a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    .line 1884
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1883
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1885
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_31
    return-void
.end method

.method private circleSwitchRight(Z)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 1891
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    .line 1892
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1891
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1893
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_31

    .line 1895
    :cond_1a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    .line 1896
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1895
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1898
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_31
    return-void
.end method

.method private convertCurrentStep(IZ)I
    .registers 4

    if-eqz p2, :cond_7

    .line 1185
    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    aget p1, p2, p1

    goto :goto_17

    .line 1188
    :cond_7
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    :goto_9
    if-lez p2, :cond_16

    .line 1189
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

    .line 1903
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 1905
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 1906
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_29

    :cond_1f
    const/16 v0, 0x654

    const/16 v1, 0x7e

    .line 1909
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1912
    :goto_29
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1913
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getDotImage(FF)Landroid/widget/ImageView;
    .registers 5

    .line 1542
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08031c

    .line 1543
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1544
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private grayOutWithoutAnimation()V
    .registers 4

    .line 1799
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    .line 1800
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    .line 1801
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    .line 1802
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1803
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1804
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1f
    return-void
.end method

.method private handleWideButtonClick()V
    .registers 3

    .line 1549
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    if-nez v0, :cond_5

    return-void

    .line 1552
    :cond_5
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->WIDE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onChangeModeRequested()V

    const/4 v0, 0x1

    .line 1555
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 1556
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1557
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonTextDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1558
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayedImmediately()V

    return-void
.end method

.method private hideDialbarDelayedImmediately()V
    .registers 2

    .line 1616
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1620
    :cond_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    .line 1621
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 1622
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    :cond_12
    return-void
.end method

.method private hideWithAnimation(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1778
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    .line 1780
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1781
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_11

    const-wide/16 v1, 0x64

    goto :goto_13

    :cond_11
    const-wide/16 v1, 0x0

    .line 1782
    :goto_13
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1785
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1787
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    if-eqz p1, :cond_24

    .line 1788
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 1789
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    .line 1792
    :cond_24
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz p1, :cond_2b

    .line 1793
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onHiddenZoom()V

    :cond_2b
    return-void
.end method

.method private hideZoomBarArea()V
    .registers 3

    .line 1809
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    .line 1810
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->releaseDialbarBitmap()V

    .line 1811
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v0, :cond_14

    .line 1813
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowSimpleView()V

    :cond_14
    const/4 v0, 0x1

    .line 1816
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showButtons(Z)V

    .line 1817
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->requestDisallowInterceptTouchEvent(Z)V

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

    .line 749
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 750
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 752
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    .line 753
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 755
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_34

    .line 757
    :cond_26
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 759
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    :goto_34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setDrawDotLayout()V

    .line 762
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private releaseDialbarBitmap()V
    .registers 3

    .line 1919
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1920
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1922
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 1923
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1925
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 1926
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1928
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    .line 1929
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1931
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    .line 1932
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1934
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2b

    .line 1935
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2b
    return-void
.end method

.method private setBokehSwitchLayout(Z)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 1135
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circle_zoom1:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1138
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3b

    .line 1140
    :cond_1b
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    if-nez p1, :cond_25

    .line 1141
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 1143
    :cond_25
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1144
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circle_zoom1:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1146
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1149
    :goto_3b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 1150
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1152
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07029b

    .line 1153
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1154
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070284

    .line 1155
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1157
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_82

    .line 1158
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1159
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v4

    add-int/2addr p1, v2

    sub-int/2addr v4, p1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1161
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    goto :goto_a8

    .line 1163
    :cond_82
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    .line 1164
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1165
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1166
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1167
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    sub-int/2addr v3, p1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p1, 0x7f070285

    .line 1169
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    .line 1172
    :goto_a8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%,d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setBokehSwitchMagnification(ZI)V
    .registers 4

    if-eqz p1, :cond_7

    const/high16 p1, 0x40a00000    # 5.0f

    .line 1125
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    goto :goto_f

    .line 1127
    :cond_7
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 1129
    :goto_f
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    .line 1130
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

    .line 1509
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 1510
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070283

    .line 1511
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 1512
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07028d

    .line 1513
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1514
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07028e

    .line 1515
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1516
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07028f

    .line 1517
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v2, v2

    add-float v5, v0, v1

    div-float/2addr v2, v5

    float-to-double v6, v2

    .line 1519
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    const/4 v6, 0x0

    move v7, v6

    :goto_59
    const/4 v8, 0x1

    if-ge v7, v2, :cond_7c

    .line 1521
    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v12, v1

    invoke-direct {v11, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
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

    .line 1526
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v3, v6

    :goto_85
    if-ge v3, v2, :cond_a7

    .line 1528
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v11, v1

    invoke-direct {v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
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

    .line 1533
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    :goto_af
    if-ge v6, v2, :cond_d1

    .line 1535
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v7, v1

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1537
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

    .line 997
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 998
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    if-nez v0, :cond_28

    .line 999
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1005
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->createDialbarBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1009
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070284

    .line 1010
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1011
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07027e

    .line 1012
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1014
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1015
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    .line 1016
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1017
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v5, v1

    const/high16 v6, 0x437f0000    # 255.0f

    div-float v5, v6, v5

    .line 1019
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_a5

    .line 1020
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

    .line 1022
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    rsub-int v10, v10, 0xff

    .line 1023
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1024
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v7, v9

    add-int/lit8 v12, v11, -0x1

    invoke-direct {v10, v12, v8, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1028
    new-instance v11, Landroid/graphics/Rect;

    sub-int v12, v1, v9

    add-int/lit8 v13, v12, -0x1

    invoke-direct {v11, v13, v8, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1032
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

    .line 1036
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 1037
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1038
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v1, v7

    add-int/lit8 v11, v10, -0x1

    invoke-direct {v9, v11, v8, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1042
    invoke-virtual {v4, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a6

    .line 1045
    :cond_c4
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1049
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v3, :cond_ff

    .line 1050
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1051
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1052
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v3, v4, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1053
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1054
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v4, v8, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_12e

    .line 1056
    :cond_ff
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1057
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1058
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v3, v4, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1059
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1060
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v4, v8, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1062
    :goto_12e
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1063
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    .line 1065
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    .line 1066
    invoke-virtual {v7, v0, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1067
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1069
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1070
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    .line 1071
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1072
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1073
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v7, :cond_185

    move v7, v8

    :goto_167
    if-gt v7, v1, :cond_1b5

    int-to-float v9, v7

    mul-float/2addr v9, v5

    sub-float v9, v6, v9

    float-to-double v9, v9

    .line 1075
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 1076
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1077
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v1, v7

    add-int/lit8 v11, v10, -0x1

    invoke-direct {v9, v11, v8, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1079
    invoke-virtual {v4, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_167

    .line 1082
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

    .line 1084
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    rsub-int v10, v10, 0xff

    .line 1085
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1086
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v7, v9

    add-int/lit8 v12, v11, -0x1

    invoke-direct {v10, v12, v8, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1088
    new-instance v11, Landroid/graphics/Rect;

    sub-int v12, v1, v9

    add-int/lit8 v13, v12, -0x1

    invoke-direct {v11, v13, v8, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1090
    invoke-virtual {v4, v0, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_18c

    .line 1093
    :cond_1b5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1095
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1096
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1097
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1099
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private showButtons(Z)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    .line 1822
    :goto_8
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1823
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1824
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1826
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    if-eqz v3, :cond_26

    .line 1827
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1828
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30

    .line 1830
    :cond_26
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1831
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1833
    :goto_30
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1834
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    if-eqz p1, :cond_48

    .line 1836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1837
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_52

    .line 1839
    :cond_48
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1840
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1843
    :goto_52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v0, :cond_5f

    if-eqz p1, :cond_5c

    .line 1845
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onHiddenZoomBar()V

    goto :goto_5f

    .line 1847
    :cond_5c
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowZoomBar()V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private showWithAnimation(Z)V
    .registers 5

    const/4 v0, 0x1

    .line 1762
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    .line 1764
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v1, :cond_a

    .line 1765
    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowZoom(Z)V

    .line 1768
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1769
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1770
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1e

    const-wide/16 v1, 0x64

    goto :goto_20

    :cond_1e
    const-wide/16 v1, 0x0

    .line 1771
    :goto_20
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1774
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private zoomMagnificationNotRound(D)F
    .registers 7

    .line 1245
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    const p2, 0x3f1d70a4    # 0.615f

    sub-float p2, p1, p2

    float-to-double v0, p2

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p2, v0, v2

    const/high16 v0, 0x41200000    # 10.0f

    if-gez p2, :cond_1e

    const p1, 0x3f19999a    # 0.6f

    goto :goto_23

    :cond_1e
    cmpl-float p2, p1, v0

    if-lez p2, :cond_23

    move p1, v0

    :cond_23
    :goto_23
    return p1
.end method

.method private zoomMagnificationRound(D)F
    .registers 9

    .line 1224
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1230
    new-instance v1, Ljava/math/BigDecimal;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_3f

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal;

    .line 1231
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_3f

    .line 1232
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 1233
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

    .line 1235
    :cond_38
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    return p1

    :cond_3f
    const/4 v1, 0x4

    .line 1237
    invoke-virtual {v0, v3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 1238
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_68

    .line 1239
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
.method public dealDoubleTap()V
    .registers 4

    .line 737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 738
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    .line 740
    :cond_11
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    if-nez v0, :cond_1d

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    const/high16 v2, 0x43cc0000    # 408.0f

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_24

    .line 743
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    const/high16 v2, 0x43280000    # 168.0f

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 745
    :goto_24
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    return-void
.end method

.method public getCurrentStep()I
    .registers 2

    .line 1281
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    return v0
.end method

.method public getCurrentZoomValue()F
    .registers 2

    .line 1285
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

    .line 1277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method public grayOut()V
    .registers 2

    .line 1729
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1730
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->grayOutWithoutAnimation()V

    :cond_9
    return-void
.end method

.method public hideDelayed(Ljava/lang/Runnable;)V
    .registers 5

    .line 1740
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1741
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 1744
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1745
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method

.method public hideDialbarDelayed()V
    .registers 7

    .line 1698
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_5

    return-void

    .line 1701
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    .line 1704
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    .line 1705
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

    .line 1707
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

    .line 1716
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1717
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1719
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    const/4 v0, 0x0

    .line 1721
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideWithAnimation(Z)V

    :cond_15
    return-void
.end method

.method public isFullView()Z
    .registers 2

    .line 1755
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

    .line 1947
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1948
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 1949
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1950
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1952
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

    .line 1632
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 1310
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09015f

    .line 1311
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const v0, 0x7f09009c

    .line 1312
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    const v0, 0x7f0901ff

    .line 1315
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    const v0, 0x7f0901fb

    .line 1316
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const v0, 0x7f090077

    .line 1317
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circle_zoom1:Landroid/widget/ImageView;

    .line 1318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    const/4 v0, 0x0

    .line 1319
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    const v1, 0x7f09009d

    .line 1323
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const v1, 0x7f090150

    .line 1324
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090151

    .line 1325
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090152

    .line 1326
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090072

    .line 1327
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

    const v1, 0x7f090073

    .line 1328
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

    const v1, 0x7f090074

    .line 1329
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

    const v1, 0x7f090075

    .line 1330
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout3:Landroid/widget/FrameLayout;

    const v1, 0x7f090211

    .line 1331
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;

    .line 1332
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    const v0, 0x7f090207

    .line 1335
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    const v0, 0x7f090209

    .line 1336
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    const v0, 0x7f09020b

    .line 1337
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    const v0, 0x7f09020d

    .line 1338
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    const v0, 0x7f090213

    .line 1341
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    const v0, 0x7f090214

    .line 1342
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090203

    .line 1344
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090205

    .line 1345
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    const v0, 0x7f090204

    .line 1346
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    const v0, 0x7f090206

    .line 1347
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    const v0, 0x7f0901f7

    .line 1349
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 1350
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    if-nez v0, :cond_12e

    const v0, 0x7f07029b

    .line 1351
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    .line 1354
    :cond_12e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointTextDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f090208

    .line 1358
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale0DOT7to1MarginView:Landroid/view/View;

    const v0, 0x7f09020a

    .line 1359
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    const v0, 0x7f09020c

    .line 1360
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale2to3MarginView:Landroid/view/View;

    const v0, 0x7f090160

    .line 1362
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1365
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;

    .line 1417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1418
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setBokehMode(ZI)V
    .registers 4

    .line 1109
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1112
    :cond_5
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    .line 1113
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x1f4

    .line 1114
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    goto :goto_14

    :cond_10
    const/16 v0, 0xfa0

    .line 1116
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 1118
    :goto_14
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchMagnification(ZI)V

    .line 1119
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchLayout(Z)V

    return-void
.end method

.method public setClickable(Z)V
    .registers 2

    .line 1258
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 1299
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 1301
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVisibility(I)V

    goto :goto_12

    .line 1303
    :cond_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->releaseDialbarBitmap()V

    const/16 p1, 0x8

    .line 1304
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVisibility(I)V

    :goto_12
    return-void
.end method

.method public setEventEnable(Z)V
    .registers 2

    .line 286
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->eventEnable:Z

    return-void
.end method

.method public setNonLogicCameraVideo(Z)V
    .registers 6

    .line 714
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    .line 716
    :goto_d
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 719
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v2

    .line 720
    :goto_19
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 724
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    .line 725
    :goto_24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    :cond_27
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    if-eqz p1, :cond_39

    const/16 v0, 0x8

    .line 729
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 730
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_39
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .registers 3

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    .line 154
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f090201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    .line 155
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f090200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    .line 156
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f090202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    .line 157
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f0901fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    .line 158
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f0901fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    .line 159
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f0901fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    .line 161
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const v0, 0x7f060028

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    .line 162
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    const/4 p1, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    .line 165
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    const/4 p1, 0x1

    .line 166
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f09006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomCenterLayout:Landroid/widget/LinearLayout;

    .line 169
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f0900a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->event_handler:Landroid/view/View;

    .line 170
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->event_handler:Landroid/view/View;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 172
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 173
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3

    .line 1567
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->recordingOrientation:I

    .line 1568
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->normalizeAngle(I)F

    move-result p1

    .line 1569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 1570
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1572
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 1573
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1575
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 1576
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1578
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 1579
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1581
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    .line 1582
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1584
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    if-eqz v0, :cond_30

    .line 1585
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1587
    :cond_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 1588
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1590
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    .line 1591
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1593
    :cond_3e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_45

    .line 1594
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1596
    :cond_45
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_52

    .line 1597
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    :cond_52
    return-void
.end method

.method public setVideoRecording(Z)V
    .registers 6

    .line 648
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    const/4 v1, -0x1

    if-nez v0, :cond_10

    .line 649
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 650
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    return-void

    .line 654
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_15

    return-void

    .line 658
    :cond_15
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 659
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 661
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    if-eqz p1, :cond_2e

    .line 662
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez p1, :cond_43

    .line 667
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43

    :cond_2e
    if-eqz v0, :cond_33

    .line 676
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    .line 678
    :cond_33
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez p1, :cond_43

    .line 679
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$7;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 688
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 689
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 691
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07029b

    .line 692
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 693
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070284

    .line 694
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 696
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_89

    .line 697
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 698
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v3

    add-int/2addr p1, v1

    sub-int/2addr v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 700
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    goto :goto_af

    .line 702
    :cond_89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 703
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    .line 704
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 705
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 706
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 707
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p1, 0x7f070285

    .line 709
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    :goto_af
    return-void
.end method

.method public setViewFinderAccessor(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

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

    .line 1294
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-void
.end method

.method public setZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V
    .registers 2

    .line 628
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    return-void
.end method

.method public setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V
    .registers 2

    .line 637
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-void
.end method

.method public setmZoomLineSetRatio(F)V
    .registers 2

    .line 290
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomLineSetRatio:F

    .line 291
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_10

    .line 292
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 293
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    :cond_10
    return-void
.end method

.method public showFullView()V
    .registers 4

    .line 1663
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1666
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1667
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    .line 1668
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1670
    :cond_14
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1672
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1674
    :cond_1f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-eqz v0, :cond_2f

    :cond_29
    const/4 v0, 0x1

    .line 1675
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showWithAnimation(Z)V

    .line 1676
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    .line 1678
    :cond_2f
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showButtons(Z)V

    .line 1679
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method public showSimpleView()V
    .registers 3

    .line 1639
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1642
    :cond_7
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-nez v0, :cond_16

    return-void

    .line 1646
    :cond_16
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    .line 1647
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1649
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1651
    :cond_24
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-eqz v0, :cond_35

    :cond_2f
    const/4 v0, 0x1

    .line 1652
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showWithAnimation(Z)V

    .line 1653
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    .line 1656
    :cond_35
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method public showSimpleViewIfNeeded()V
    .registers 3

    .line 1689
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-eqz v0, :cond_f

    .line 1690
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    :cond_f
    return-void
.end method

.method public startZooming()V
    .registers 2

    const/4 v0, 0x1

    .line 1966
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return-void
.end method

.method public stopZooming()V
    .registers 3

    const/4 v0, 0x0

    .line 1973
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    .line 1974
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez v0, :cond_18

    .line 1975
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$10;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method

.method public zoom(I)I
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 773
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2c

    .line 774
    new-array v2, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mMagnificationBaseRatio:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 778
    :cond_2c
    iget-boolean v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    const/16 v5, 0xa8

    if-eqz v2, :cond_35

    if-ge v1, v5, :cond_35

    move v1, v5

    .line 782
    :cond_35
    iget-boolean v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-eqz v2, :cond_48

    .line 783
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_46

    const-string v2, "finish wide camera mode because of zoom ratio is changed."

    .line 784
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 786
    :cond_46
    iput-boolean v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    :cond_48
    if-gez v1, :cond_4c

    move v1, v4

    goto :goto_51

    .line 791
    :cond_4c
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    if-le v1, v2, :cond_51

    move v1, v2

    .line 796
    :cond_51
    :goto_51
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    if-eqz v2, :cond_3ef

    .line 797
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 798
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_77

    .line 799
    new-array v6, v3, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentZoomRatio : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 806
    :cond_77
    iput v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v1, v5, :cond_83

    .line 809
    iput v7, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 810
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    goto :goto_d8

    .line 812
    :cond_83
    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    if-gt v1, v5, :cond_d2

    .line 813
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomLineSetRatio:F

    cmpl-float v5, v1, v6

    const v8, 0x3f1d70a4    # 0.615f

    const/high16 v9, 0x42c80000    # 100.0f

    if-eqz v5, :cond_97

    .line 814
    iput v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 815
    iput v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomLineSetRatio:F

    goto :goto_c5

    .line 817
    :cond_97
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->UNREACHABLE_ZOOM_VALUES:[F

    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-static {v1, v5}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v1

    if-ltz v1, :cond_b7

    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLatestZoomRatio:I

    .line 818
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v1, v5, :cond_b7

    .line 819
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_c5

    const-string v1, "currentZoom is unreachable value based on zoomMagnificationRound()."

    .line 820
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_c5

    .line 822
    :cond_b7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    mul-float/2addr v1, v8

    float-to-double v10, v1

    invoke-direct {v0, v10, v11}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomMagnificationRound(D)F

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 826
    :cond_c5
    :goto_c5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    mul-float/2addr v1, v8

    float-to-double v8, v1

    invoke-direct {v0, v8, v9}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomMagnificationNotRound(D)F

    move-result v1

    goto :goto_d8

    .line 829
    :cond_d2
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    iput v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 830
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 833
    :goto_d8
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f0096

    .line 834
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 835
    iget v8, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-direct {v0, v8}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->centerDipsZoomMagnification(F)Ljava/lang/String;

    move-result-object v8

    .line 836
    iget-object v9, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    new-array v9, v3, [Ljava/lang/Object;

    iget v10, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 838
    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    const-string v11, ".0"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 837
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 839
    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    const-string v12, ".0"

    const-string v13, ""

    .line 840
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "x"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 839
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 841
    new-array v11, v3, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->sPointText:Ljava/lang/String;

    const-string v13, ".0"

    const-string v14, ""

    .line 842
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "x"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    .line 841
    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 843
    new-array v12, v3, [Ljava/lang/Object;

    iget-object v13, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    const-string v14, ".0"

    const-string v15, ""

    .line 844
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "x"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    .line 843
    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 845
    iget v12, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpg-float v13, v12, v7

    if-gez v13, :cond_18b

    cmpl-float v6, v12, v6

    if-lez v6, :cond_18b

    .line 846
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 852
    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    .line 853
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    .line 854
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    .line 856
    :cond_18b
    iget v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    const/high16 v12, 0x40000000    # 2.0f

    cmpg-float v13, v6, v12

    if-gez v13, :cond_1c2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1c2

    .line 857
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->sPointText:Ljava/lang/String;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 863
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    .line 864
    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    .line 865
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    .line 867
    :cond_1c2
    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpl-float v6, v5, v12

    if-ltz v6, :cond_1f9

    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1f9

    .line 868
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->sPointText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 874
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    .line 875
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    .line 876
    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    .line 878
    :cond_1f9
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 880
    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 881
    iget v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    .line 882
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_22e

    .line 883
    new-array v3, v3, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentZoomRatio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mCurrentZoomMagnification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 887
    :cond_22e
    iget-boolean v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-nez v3, :cond_336

    .line 888
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_283

    cmpg-float v3, v3, v7

    if-gez v3, :cond_283

    iget-boolean v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    if-nez v3, :cond_283

    .line 892
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    sub-float/2addr v1, v3

    sub-float/2addr v7, v3

    div-float/2addr v1, v7

    .line 894
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v3, v3

    .line 898
    iget-boolean v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v4, :cond_262

    .line 899
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v1

    add-float/2addr v4, v3

    float-to-int v1, v4

    .line 901
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v3, v1, v3

    goto :goto_26e

    .line 903
    :cond_262
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    mul-float/2addr v3, v1

    sub-float/2addr v4, v3

    float-to-int v3, v4

    .line 905
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr v1, v3

    .line 907
    :goto_26e
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 908
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 909
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3, v4, v1, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_3ad

    .line 910
    :cond_283
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2db

    sub-float/2addr v1, v7

    .line 913
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    int-to-float v3, v3

    .line 917
    iget-boolean v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v5, :cond_2b6

    .line 918
    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    if-eqz v5, :cond_2b4

    .line 919
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 921
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v1

    add-float/2addr v4, v3

    float-to-int v4, v4

    .line 923
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v1, v4, v1

    move/from16 v16, v4

    move v4, v1

    move/from16 v1, v16

    goto :goto_2c6

    :cond_2b4
    move v1, v4

    goto :goto_2c6

    .line 926
    :cond_2b6
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v1

    sub-float/2addr v4, v3

    float-to-int v4, v4

    .line 931
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr v1, v4

    .line 933
    :goto_2c6
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 934
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 935
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4, v3, v1, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_3ad

    :cond_2db
    sub-float/2addr v1, v5

    .line 939
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    int-to-float v3, v3

    iget v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    .line 943
    iget-boolean v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v4, :cond_30a

    .line 944
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 947
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v1

    add-float/2addr v4, v3

    float-to-double v3, v4

    .line 948
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 949
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v3, v1, v3

    goto :goto_322

    .line 951
    :cond_30a
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    iget v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v1

    sub-float/2addr v4, v3

    float-to-double v3, v4

    .line 953
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 954
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr v1, v3

    .line 956
    :goto_322
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 957
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 958
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3, v4, v1, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_3ad

    :cond_336
    sub-float/2addr v1, v7

    .line 963
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    int-to-float v3, v3

    iget v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    sub-float/2addr v4, v7

    div-float/2addr v3, v4

    .line 966
    iget-boolean v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v4, :cond_373

    .line 967
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    .line 968
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    .line 969
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v1

    add-float/2addr v4, v3

    float-to-double v3, v4

    .line 970
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 971
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v3, v1, v3

    goto :goto_39a

    .line 973
    :cond_373
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    .line 974
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    .line 975
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v1

    sub-float/2addr v4, v3

    float-to-double v3, v4

    .line 976
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 977
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr v1, v3

    .line 979
    :goto_39a
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 980
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 981
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3, v4, v1, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 984
    :goto_3ad
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    .line 985
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-virtual {v1, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomRatio(F)V

    .line 986
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLatestZoomRatio:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_3e7

    .line 987
    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP_ZOOM_FRAME:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getZoomTrigger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e1

    .line 988
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    const/4 v3, 0x0

    iget v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    iget-boolean v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialTapEvent(Ljava/util/List;FZ)V

    .line 990
    :cond_3e1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLatestZoomRatio:I

    .line 992
    :cond_3e7
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 993
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_3ef
    const-string v1, "zoom ratios is not set"

    .line 802
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v4
.end method

.method public zoomEnd()V
    .registers 3

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    const/4 v1, 0x0

    .line 301
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F

    .line 302
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F

    .line 303
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    if-eqz v0, :cond_20

    .line 305
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 306
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method
