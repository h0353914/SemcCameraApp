.class public Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.super Ljava/lang/Object;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    }
.end annotation


# static fields
.field public static final EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

.field private static final TAG:Ljava/lang/String; = "BaseLayout"

.field private static mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

.field private mCapturingButtonLayout:Landroid/widget/FrameLayout;

.field private mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentOrientation:I

.field private mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private mEyeDetectionButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

.field private mFaultPreviewContainer:Landroid/widget/FrameLayout;

.field private mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

.field private mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

.field private mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

.field private mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

.field private mHeadUpDisplay:Landroid/view/ViewGroup;

.field private mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

.field private mHintTextViewContainer:Landroid/widget/FrameLayout;

.field private mHorizontalLevelMeterView:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

.field private mIsBlackScreenShowing:Z

.field private mIsCameraSwitching:Z

.field private mIsFirstDrawn:Z

.field private final mIsOneShot:Z

.field private mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

.field private mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

.field private final mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

.field private final mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private final mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private mMainButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation
.end field

.field private mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

.field private mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

.field private mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

.field private final mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private mPreInflatedHeadUpDisplay:Landroid/view/View;

.field private mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

.field private mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

.field private mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

.field private mPreferredFocusView:Landroid/view/View;

.field private mPreview:Landroid/view/View;

.field private mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

.field private mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

.field private mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation
.end field

.field private mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private final mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

.field private mSwitchAnimationContainer:Landroid/widget/FrameLayout;

.field private mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

.field private mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mTopIndicatorsContainer:Landroid/view/View;

.field private mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

.field private final mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private mViewFinderRect:Landroid/graphics/Rect;

.field private mWindowCover:Landroid/view/View;

.field private mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

.field private mZoomDialGroup:Landroid/widget/FrameLayout;

.field private mZoomDialViewContainer:Landroid/widget/FrameLayout;

.field private mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

.field private mZoombarGroup:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 246
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    .line 254
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Z)V
    .registers 7

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 135
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 166
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    .line 167
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    const/4 v1, 0x0

    .line 170
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 188
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    .line 191
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 193
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    .line 195
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHorizontalLevelMeterView:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    .line 197
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    .line 199
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    .line 200
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    .line 258
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 259
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 260
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsOneShot:Z

    .line 263
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz p2, :cond_33

    .line 264
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    goto :goto_3c

    .line 266
    :cond_33
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    .line 269
    :goto_3c
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 270
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->createContainer(Landroid/content/Context;)[Landroid/view/View;

    move-result-object p2

    array-length p3, p2

    :goto_49
    if-ge v1, p3, :cond_55

    aget-object v0, p2, v1

    .line 271
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 284
    :cond_55
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPreferredFocusView()V

    .line 287
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPreviewContainer()V

    .line 288
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSwitchAnimationContainer()V

    .line 289
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    const-string p3, "low-battery"

    invoke-direct {p2, p1, p3}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    .line 290
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "low-internal-storage"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 291
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "low-sd-card"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 292
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "photo-smile-capture"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 293
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "video-smile-capture"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 297
    new-instance p1, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/view/ViewGroup;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    .registers 1

    .line 102
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    .registers 1

    .line 102
    sput-object p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/CameraActivity;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    return p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)Z
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/graphics/Rect;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object p0
.end method

.method private adaptPreviewLayoutMargin(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$LayoutParams;
    .registers 6

    .line 1843
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1844
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1845
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 1848
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_37

    .line 1851
    :cond_17
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_37

    .line 1854
    :cond_1d
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_37

    .line 1855
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1856
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_33

    .line 1859
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1860
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_37

    .line 1863
    :cond_33
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1864
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_37
    :goto_37
    return-object p1
.end method

.method private adjustmentWithSystemLayout()V
    .registers 8

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x4

    .line 616
    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    .line 623
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_2a

    aget v5, v1, v4

    .line 624
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 625
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5, v3, v3, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_2a
    return-void

    nop

    :array_2c
    .array-data 4
        0x7f0900d1
        0x7f09019a
        0x7f09003a
        0x7f0900e0
    .end array-data
.end method

.method private compareViewFinderRatio(IIF)Z
    .registers 6

    .line 1949
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method private createContainer(Landroid/content/Context;)[Landroid/view/View;
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 444
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    .line 446
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    .line 447
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    .line 448
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    .line 449
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b002c

    const/4 v3, 0x0

    .line 450
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    .line 451
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    .line 452
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    .line 454
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREFERRED_FOCUS:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    aput-object v1, v0, p1

    .line 455
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREVIEW_CONTAINER_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    aput-object v1, v0, p1

    .line 456
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->SWITCH_ANIMATION_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 457
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->CAPTURE_BUTTON_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 458
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->HEAD_UP_DISPLAY_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 459
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREDICTIVE_LAUNCH_COVER_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    return-object v0
.end method

.method private inflate()V
    .registers 4

    .line 1414
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1415
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 1416
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_18

    const-string v0, "HeadUpDisplay is already inflated."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1417
    :cond_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 1418
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    goto :goto_39

    .line 1420
    :cond_21
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2e

    const-string v1, "HeadUpDisplay is not inflated."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2e
    const v1, 0x7f0b0024

    .line 1421
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 1425
    :goto_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1429
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900e0

    .line 1430
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 1432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900e3

    .line 1433
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    return-void
.end method

.method private repositionZoomDial()V
    .registers 7

    .line 1226
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1230
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_22

    .line 1235
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1236
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700fd

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    .line 1235
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1242
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    .line 1243
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1245
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1246
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1248
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1249
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1251
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1253
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v4, v5, :cond_65

    .line 1255
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1256
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070118

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1258
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_70

    .line 1260
    :cond_65
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1261
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v1, v4

    :goto_70
    if-eq v1, v3, :cond_87

    .line 1265
    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1266
    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x55

    .line 1267
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1268
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_87
    return-void
.end method

.method private setupCaptureButtonGroup()V
    .registers 3

    .line 926
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 927
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 928
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1c

    const-string v0, "setupCaptureButtonGroup: fails to setup"

    .line 929
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private setupCaptureButtonGroup(Landroid/view/View;)Z
    .registers 4

    .line 965
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-eqz v0, :cond_50

    .line 966
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-nez v0, :cond_c

    .line 967
    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    .line 970
    :cond_c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f0900f8

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMainButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 971
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v1, 0x7f0901b8

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 972
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v1, 0x7f0900a7

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 974
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-eqz p1, :cond_4e

    .line 975
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    .line 976
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    .line 977
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    :cond_4e
    const/4 p1, 0x1

    return p1

    :cond_50
    const/4 p1, 0x0

    return p1
.end method

.method private setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .registers 7

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1061
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    goto :goto_d

    .line 1063
    :cond_b
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NORMAL:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    :goto_d
    const/4 v1, 0x0

    .line 1067
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isCameraSwitching()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 1068
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v2, :cond_2b

    .line 1069
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1070
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getLocalContentInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1071
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 1074
    :cond_2b
    new-instance v2, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1076
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_43

    .line 1081
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getLocalContentInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1084
    :cond_43
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 1085
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 1086
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f090089

    .line 1087
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 1088
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    :cond_5d
    return-void
.end method

.method private setupEyeDetectionButton()V
    .registers 4

    .line 1018
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mEyeDetectionButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    if-nez v0, :cond_2b

    .line 1019
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mEyeDetectionButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mEyeDetectionButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    .line 1021
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1022
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1023
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1024
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mEyeDetectionButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    return-void
.end method

.method private setupFrontAngleSwitchButton()V
    .registers 3

    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    if-nez v0, :cond_2c

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1008
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1009
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    .line 1010
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    .line 1011
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1012
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1013
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    return-void
.end method

.method private setupGridLineView()V
    .registers 3

    .line 1570
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-nez v0, :cond_31

    .line 1571
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    .line 1572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    .line 1574
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 1575
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1576
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateGridLine(II)V

    .line 1577
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_31
    return-void
.end method

.method private setupHorizontalLevelMeterView()V
    .registers 4

    .line 1582
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHorizontalLevelMeterView:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    if-nez v0, :cond_1f

    .line 1583
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0050

    const/4 v2, 0x0

    .line 1584
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHorizontalLevelMeterView:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    .line 1585
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHorizontalLevelMeterView:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1f
    return-void
.end method

.method private setupModeShortcut(Z)V
    .registers 4

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    .line 1103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update(Z)V

    .line 1104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f090106

    .line 1105
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    .line 1106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMruSettings()Lcom/sonyericsson/android/camera/setting/MruSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setMruSettings(Lcom/sonyericsson/android/camera/setting/MruSettings;)V

    .line 1107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    return-void
.end method

.method private setupPreferredFocusView()V
    .registers 4

    .line 1031
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 1032
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1033
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1035
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1036
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1e
    return-void
.end method

.method private setupPreviewContainer()V
    .registers 4

    .line 472
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 475
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setLayoutDirection(I)V

    .line 477
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 478
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 480
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x50

    .line 481
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 482
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setupPrimaryShortcut()V
    .registers 3

    .line 1590
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    return-void
.end method

.method private setupRecordingIndicator()V
    .registers 3

    .line 1277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-nez v0, :cond_2c

    .line 1278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    .line 1280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setScreenAspect(Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 1281
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 1283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(I)V

    :cond_2c
    return-void
.end method

.method private setupSceneIndicators()V
    .registers 5

    .line 1132
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f090161

    .line 1133
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v3, 0x7f090162

    .line 1134
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    .line 1135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->setSensorOrientation(I)V

    .line 1137
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f090160

    .line 1138
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 1139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupSettingIndicators()V
    .registers 4

    .line 1125
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f0900c2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    .line 1126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 1127
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f0901d5

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 1128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupSwitchAnimationContainer()V
    .registers 3

    .line 490
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 493
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupSwitchAnimationView()V
    .registers 3

    .line 1738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    if-nez v0, :cond_14

    .line 1739
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    .line 1741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method private setupTopIndicators()V
    .registers 4

    .line 1111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0901e1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    .line 1112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900f3

    .line 1113
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1112
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900f5

    .line 1115
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1114
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900f7

    .line 1117
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1116
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f090123

    .line 1119
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1118
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0901fb

    .line 1121
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1120
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    return-void
.end method

.method private setupTutorial()V
    .registers 4

    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    if-nez v0, :cond_17

    .line 1002
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;-><init>(Landroid/view/ViewGroup;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    :cond_17
    return-void
.end method

.method private setupZoombar()V
    .registers 4

    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_38

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00b4

    const/4 v2, 0x0

    .line 1148
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    .line 1149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    const v1, 0x7f090212

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    .line 1150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setSensorOrientation(I)V

    .line 1151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideImmediately()V

    .line 1153
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1156
    :cond_38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->repositionZoombar()V

    return-void
.end method

.method private switchCaptureButtonGroupContainer()V
    .registers 4

    .line 1761
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3f

    .line 1762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-eqz v0, :cond_3f

    .line 1763
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f090057

    .line 1764
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3f

    .line 1766
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f090129

    .line 1767
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3f

    .line 1769
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1770
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1774
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    .line 1775
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-nez v1, :cond_3f

    .line 1776
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3f
    return-void
.end method

.method private updateLayout()V
    .registers 7

    .line 533
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "updateLayout() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 535
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 544
    :cond_14
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_52

    .line 547
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2e

    const-string v0, "ActivityInfo.SCREEN_ORIENTATION_PORTRAIT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2e
    const/16 v0, 0x5a

    .line 550
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 551
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v2, v3, v2

    goto :goto_61

    .line 554
    :cond_52
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5f

    const-string v0, "ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5f
    const/4 v0, 0x0

    move v1, v2

    .line 561
    :goto_61
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->updatePreviewContainerLayout(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 565
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 569
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateOnScreenButtonLayout()V

    .line 570
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adjustmentWithSystemLayout()V

    return-void
.end method

.method private updateOnScreenButtonLayout()V
    .registers 7

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_12

    .line 575
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_11

    const-string v0, "updateOnScreenButtonLayout: pre-loaded layout is null"

    .line 576
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_11
    return-void

    .line 587
    :cond_12
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    .line 588
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_38

    .line 589
    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOnScreenButtonLayout: orientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_38
    const/4 v1, 0x0

    if-ne v0, v3, :cond_72

    const/16 v2, 0x5a

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 597
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v1, v4, v1

    .line 600
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 601
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_73

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v0, v3

    goto :goto_73

    :cond_72
    move v0, v1

    .line 606
    :cond_73
    :goto_73
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 607
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public adaptLayoutParam(Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1881
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getHeightMargin(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adaptPreviewLayoutMargin(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_d

    .line 428
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 430
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    return-void
.end method

.method public addZoomDial()V
    .registers 3

    .line 1211
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f09020c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1f

    .line 1212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1f

    .line 1213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1214
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->repositionZoomDial()V

    :cond_1f
    return-void
.end method

.method public attachToWindow()V
    .registers 5

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public calculateCaptureButtonAreaHeight()I
    .registers 9

    .line 937
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 938
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 940
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 941
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 942
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 943
    div-int/lit8 v1, v0, 0x3

    .line 944
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700fd

    .line 945
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 946
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070118

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 948
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v6, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_6e

    .line 950
    div-int/lit8 v3, v0, 0x9

    goto :goto_76

    .line 951
    :cond_6e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v5, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v5, :cond_76

    move v3, v7

    move v4, v3

    :cond_76
    :goto_76
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    .line 956
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 961
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method public computeRadiusOfAnimation()V
    .registers 3

    .line 1746
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    if-nez v0, :cond_5

    return-void

    .line 1750
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setMaxRadius(Landroid/graphics/Rect;)V

    return-void
.end method

.method public disableGridLineView()V
    .registers 2

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_7

    .line 1555
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->disable()V

    :cond_7
    return-void
.end method

.method public enableGridLineView()V
    .registers 2

    .line 1548
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_7

    .line 1549
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->enable()V

    :cond_7
    return-void
.end method

.method public getActivity()Lcom/sonyericsson/android/camera/CameraActivity;
    .registers 2

    .line 1492
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object v0
.end method

.method public getAutoReview()Lcom/sonyericsson/android/camera/view/AutoReviewController;
    .registers 2

    .line 1055
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    return-object v0
.end method

.method public getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;
    .registers 2

    .line 755
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    return-object v0
.end method

.method public getBurstCountView()Lcom/sonyericsson/android/camera/view/BurstCountView;
    .registers 5

    .line 1496
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getCenterContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f090045

    .line 1497
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_19

    .line 1500
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v3, 0x7f0b009f

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1502
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1505
    :cond_19
    check-cast v2, Lcom/sonyericsson/android/camera/view/BurstCountView;

    return-object v2
.end method

.method public getCenterContainer()Landroid/widget/FrameLayout;
    .registers 3

    .line 1445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .registers 2

    .line 787
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object v0
.end method

.method public getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .registers 2

    .line 1097
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object v0
.end method

.method public getCurrentOrientation()I
    .registers 2

    .line 1093
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    return v0
.end method

.method public getEyeDetectionButton()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;
    .registers 2

    .line 1045
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mEyeDetectionButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    return-object v0
.end method

.method public getFaultPreviewContainer()Landroid/widget/FrameLayout;
    .registers 3

    .line 1465
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFaultPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    return-object v0

    .line 1468
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFaultPreviewContainer:Landroid/widget/FrameLayout;

    .line 1469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFaultPreviewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getFrontAngleSwitchButton()Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;
    .registers 2

    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    return-object v0
.end method

.method public getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
    .registers 2

    .line 750
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    return-object v0
.end method

.method public getGridLineView()Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;
    .registers 2

    .line 1602
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    return-object v0
.end method

.method public getHeightMargin(Landroid/graphics/Rect;)I
    .registers 8

    .line 1891
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_30

    .line 1893
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1894
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1895
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1894
    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1893
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3b

    .line 1897
    :cond_30
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    .line 1898
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1897
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1901
    :goto_3b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1903
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1904
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1907
    invoke-direct {p0, v1, v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1925
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_70

    .line 1927
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x9

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070145

    .line 1928
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v2, p1, v0

    goto :goto_9a

    .line 1930
    :cond_70
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 v2, p1, 0x3

    goto :goto_9a

    :cond_77
    const v3, 0x3faaaaab

    .line 1932
    invoke-direct {p0, v1, v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result v3

    if-nez v3, :cond_8c

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1933
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getAspect()F

    move-result v3

    invoke-direct {p0, v1, v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1937
    :cond_8c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_9a

    .line 1939
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    div-int/lit8 v2, p1, 0x9

    :cond_9a
    :goto_9a
    return v2
.end method

.method public getHintTextViewContainer()Landroid/widget/FrameLayout;
    .registers 3

    .line 1457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    return-object v0

    .line 1460
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    .line 1461
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getHorizontalLevelMeterView()Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;
    .registers 2

    .line 1606
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHorizontalLevelMeterView:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    return-object v0
.end method

.method public getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;
    .registers 5

    .line 1477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900e2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1479
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_22

    .line 1484
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1485
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700fd

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    .line 1484
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_22
    return-object v0
.end method

.method public getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .registers 2

    .line 759
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object v0
.end method

.method public getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .registers 2

    .line 763
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object v0
.end method

.method public getManualIqControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-object v0
.end method

.method public getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;
    .registers 2

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    return-object v0
.end method

.method public getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    return-object v0
.end method

.method public getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;
    .registers 2

    .line 985
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    return-object v0
.end method

.method public getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .registers 2

    .line 997
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object v0
.end method

.method public getOnScreenMainButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .registers 2

    .line 989
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMainButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object v0
.end method

.method public getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .registers 2

    .line 993
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object v0
.end method

.method public getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .registers 2

    .line 771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object v0
.end method

.method public getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    return-object v0
.end method

.method public getPredictiveLaunchCoverView()Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;
    .registers 2

    .line 1823
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    return-object v0
.end method

.method public getPreview()Landroid/view/View;
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    return-object v0
.end method

.method public getPreviewContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewOverlayContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;
    .registers 2

    .line 1598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    return-object v0
.end method

.method public getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
    .registers 2

    .line 1051
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .registers 2

    .line 1441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;
    .registers 2

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    return-object v0
.end method

.method public getSimpleIqControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-object v0
.end method

.method public getSuperSlowMotionTriggerAnimation()Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;
    .registers 2

    .line 746
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    return-object v0
.end method

.method public getSwitchAnimationView()Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;
    .registers 2

    .line 1754
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    return-object v0
.end method

.method public getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .registers 2

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object v0
.end method

.method public getTopIndicator()Landroid/view/View;
    .registers 2

    .line 1273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    return-object v0
.end method

.method public getTutorial()Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    .registers 2

    .line 1048
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    return-object v0
.end method

.method public getVideoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .registers 2

    .line 775
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object v0
.end method

.method public getViewFinderRect()Landroid/graphics/Rect;
    .registers 2

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;
    .registers 2

    .line 1406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    return-object v0
.end method

.method public getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
    .registers 2

    .line 1410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    return-object v0
.end method

.method public getZoomDialViewContainer()Landroid/widget/FrameLayout;
    .registers 3

    .line 1449
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_11

    .line 1450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f09020d

    .line 1451
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialViewContainer:Landroid/widget/FrameLayout;

    .line 1453
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hideAutoReview()V
    .registers 2

    .line 1522
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-eqz v0, :cond_7

    .line 1523
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->hide()V

    :cond_7
    return-void
.end method

.method public hideBlackScreen()V
    .registers 3

    .line 1380
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 1381
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 1382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method

.method public hideContentsViewController()V
    .registers 2

    .line 1304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 1305
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    :cond_7
    return-void
.end method

.method public hideLeftIconContainer()V
    .registers 3

    .line 1514
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 1515
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePredictiveLaunchCover(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .registers 3

    .line 1836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_7

    .line 1837
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->hide(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_7
    return-void
.end method

.method public isAutoReviewShowing()Z
    .registers 2

    .line 1785
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-eqz v0, :cond_9

    .line 1786
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isShowing()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraSwitching()Z
    .registers 2

    .line 1796
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    return v0
.end method

.method public isDisplaySizeBiggerThanDefault()Z
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public isHeadUpDisplayReady()Z
    .registers 2

    .line 1296
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .registers 4

    .line 1332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1333
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause(Z)V

    .line 1335
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1336
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 1337
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(I)V

    .line 1338
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 1340
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_24

    const/4 v2, 0x0

    .line 1341
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1343
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_35

    .line 1344
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsOneShot:Z

    if-nez v2, :cond_30

    const/4 v2, 0x0

    .line 1345
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setAlpha(F)V

    .line 1347
    :cond_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->disable()V

    .line 1349
    :cond_35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHorizontalLevelMeterView:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    if-eqz v0, :cond_3c

    .line 1350
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->disable()V

    .line 1352
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_44

    const/4 v2, 0x4

    .line 1354
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1356
    :cond_44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    if-eqz v0, :cond_4b

    .line 1357
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    :cond_4b
    return-void
.end method

.method public refresh()V
    .registers 2

    .line 1368
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1369
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public release()V
    .registers 3

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 725
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 728
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 729
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 732
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_16

    .line 733
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 736
    :cond_16
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 737
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 738
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 739
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    .line 740
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 741
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    .line 742
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public releasePredictiveLaunchCover()V
    .registers 4

    .line 1827
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 1828
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1829
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setVisibility(I)V

    .line 1830
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1831
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    :cond_18
    return-void
.end method

.method public reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .registers 3

    .line 1310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-nez v0, :cond_8

    .line 1311
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    goto :goto_b

    .line 1313
    :cond_8
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    :goto_b
    return-void
.end method

.method public removeZoomDial()V
    .registers 3

    .line 1222
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public repositionZoombar()V
    .registers 6

    .line 1160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1166
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    .line 1167
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1169
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1170
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1172
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1174
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v3, v4, :cond_37

    .line 1176
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1177
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    .line 1178
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_48

    .line 1180
    :cond_37
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1181
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    .line 1182
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_48
    if-eq v3, v2, :cond_51

    .line 1185
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_51
    return-void
.end method

.method public resume()V
    .registers 3

    const/4 v0, 0x0

    .line 1323
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    .line 1324
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateLayout()V

    .line 1325
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    .line 1327
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public setGridLineViewEnabled(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 1541
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->enableGridLineView()V

    goto :goto_9

    .line 1543
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->disableGridLineView()V

    :goto_9
    return-void
.end method

.method public setHorizontalLevelMeterViewEnabled(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 1529
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHorizontalLevelMeterView:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    if-eqz p1, :cond_11

    .line 1530
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->enable()V

    goto :goto_11

    .line 1533
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHorizontalLevelMeterView:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    if-eqz p1, :cond_11

    .line 1534
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->disable()V

    :cond_11
    :goto_11
    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .registers 2

    .line 1792
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    return-void
.end method

.method public setOnViewFinderGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;)V
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_d

    .line 375
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 377
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setOnGestureDetectorListener(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 807
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "setOrientation: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 808
    :cond_d
    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setOrientation(II)V

    return-void
.end method

.method public setOrientation(II)V
    .registers 4

    .line 812
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_9

    .line 815
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout(I)V

    .line 818
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    .line 819
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 822
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_af

    .line 823
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 824
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 826
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 827
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 828
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->setSensorOrientation(I)V

    .line 829
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 830
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setSensorOrientation(I)V

    .line 831
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setSensorOrientation(I)V

    .line 832
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 833
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setUiOrientation(I)V

    .line 834
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->setOrientation(I)V

    .line 835
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->setSensorOrientation(I)V

    .line 836
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 837
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 838
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 839
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 840
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setUiOrientation(I)V

    .line 841
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setRotation(F)V

    .line 842
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mEyeDetectionButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setRotation(F)V

    .line 844
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    if-eqz p2, :cond_89

    .line 845
    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setUiOrientation(I)V

    .line 847
    :cond_89
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 848
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->setOrientation(I)V

    .line 850
    :cond_9c
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_af

    .line 851
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->setOrientation(I)V

    :cond_af
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .registers 2

    .line 1437
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    return-void
.end method

.method public setPreviewSurface(Landroid/view/View;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    return-void
.end method

.method public setStartDraggingSlopEnabled(Z)V
    .registers 4

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_d

    .line 421
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 423
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setStartDraggingSlopEnabled(Z)V

    return-void
.end method

.method public setViewFinderGestureDetectorEnabled(ZZ)V
    .registers 7

    .line 387
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_f

    move v3, p2

    move p2, p1

    move p1, v3

    .line 397
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_1c

    .line 398
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    :cond_1c
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_33

    .line 402
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v2, p2, v0

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_58

    .line 406
    :cond_33
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    new-array p2, v1, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_58

    :cond_3f
    if-eqz p2, :cond_4d

    .line 411
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    new-array p2, v1, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_58

    .line 414
    :cond_4d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    new-array p2, v1, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    :goto_58
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;Z)V
    .registers 7

    .line 665
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 667
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_14

    const-string v0, "INFLATE LAYOUT IN COMMON"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 668
    :cond_14
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->inflate()V

    .line 670
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateLayout()V

    move v0, v1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 673
    :goto_1d
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V

    .line 675
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v2, :cond_34

    .line 676
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 677
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setViewFinderGestureDetectorEnabled(ZZ)V

    .line 681
    :cond_34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupTutorial()V

    .line 683
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->switchCaptureButtonGroupContainer()V

    .line 684
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup()V

    if-nez v0, :cond_47

    .line 685
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 686
    :cond_47
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    .line 688
    :cond_4a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSettingIndicators()V

    .line 689
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupTopIndicators()V

    .line 690
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoombar()V

    .line 691
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoomDial()V

    .line 692
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupRecordingIndicator()V

    .line 693
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupGridLineView()V

    .line 694
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPrimaryShortcut()V

    .line 695
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupModeShortcut(Z)V

    .line 696
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupEyeDetectionButton()V

    .line 697
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSceneIndicators()V

    .line 698
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPredictiveCaptureIndicator()V

    .line 699
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupFrontAngleSwitchButton()V

    .line 701
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setOrientation(I)V

    .line 702
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateAppsUiMarginsForTalkBack()V

    .line 703
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSwitchAnimationView()V

    .line 707
    sget-object p1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isEmulateSideTouchEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 708
    sget-object p1, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->create(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 711
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    .line 713
    :cond_92
    sget-object p2, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->create(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a1

    .line 716
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    .line 720
    :cond_a1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->setup(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setupAutoReview()V
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-nez v0, :cond_d

    .line 521
    new-instance v0, Lcom/sonyericsson/android/camera/view/AutoReviewController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    .line 523
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->setup()V

    :cond_18
    return-void
.end method

.method public setupBlankScreen()V
    .registers 4

    .line 1387
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    if-nez v0, :cond_26

    .line 1388
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const v1, 0x7f0b002a

    const/4 v2, 0x0

    .line 1392
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    .line 1393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1394
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1395
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_26
    return-void
.end method

.method public setupManualIqControl(Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UiControlSettings;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Iso;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Ev;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v12, p0

    .line 879
    iget-object v0, v12, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 880
    iget-object v0, v12, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->release()V

    .line 884
    :cond_14
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 885
    new-instance v13, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;

    move-object v0, v13

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V

    iput-object v13, v12, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-void
.end method

.method public setupPredictiveCaptureIndicator()V
    .registers 4

    .line 1288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    if-nez v0, :cond_16

    .line 1289
    new-instance v0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    .line 1291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->setOrientation(I)V

    :cond_16
    return-void
.end method

.method public setupPredictiveLaunchCoverView(Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;Landroid/graphics/Rect;)V
    .registers 6

    .line 1809
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-nez v0, :cond_21

    .line 1811
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, p1, p2, v1, p3}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->inflate(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    .line 1812
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1813
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout(I)V

    :cond_21
    return-void
.end method

.method public setupPreferentialHeadUpDisplays()V
    .registers 6

    const-string v0, "[APP DETAIL] setup on-screen button : E"

    .line 631
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f090058

    .line 634
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 633
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 635
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 637
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 639
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f090061

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 641
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    .line 642
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v4, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-eq v3, v4, :cond_5d

    .line 647
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 648
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_67

    .line 650
    :cond_5d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 652
    :goto_67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 653
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 656
    :cond_70
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateOnScreenButtonLayout()V

    goto :goto_7d

    :cond_74
    const-string v0, "fail to setup"

    .line 658
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_7d
    const-string v0, "[APP DETAIL] setup on-screen button : X"

    .line 660
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method public setupPreviewView()V
    .registers 4

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_e
    return-void
.end method

.method public setupSimpleIqControl(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 909
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->release()V

    .line 914
    :cond_13
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 915
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-void
.end method

.method public setupZoomDial()V
    .registers 4

    .line 1196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2f

    .line 1197
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00b5

    const/4 v2, 0x0

    .line 1198
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    .line 1200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setSensorOrientation(I)V

    .line 1202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    :cond_2f
    return-void
.end method

.method public showBlackScreen()V
    .registers 3

    .line 1373
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 1374
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 1375
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_e
    return-void
.end method

.method public showBlankScreen()V
    .registers 3

    .line 1400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 1401
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public showContentsViewController()V
    .registers 2

    .line 1362
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 1363
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    :cond_7
    return-void
.end method

.method public showLeftIconContainer()V
    .registers 3

    .line 1509
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 1510
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateAppsUiMarginsForTalkBack()V
    .registers 5

    .line 1727
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_ON:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 1728
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v2

    .line 1730
    :goto_f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v3, 0x7f0900e1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 1732
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1733
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_26
    return-void
.end method

.method public updateGridLine(II)V
    .registers 5

    .line 1560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-le p1, v1, :cond_c

    if-le p2, v1, :cond_c

    .line 1561
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setViewSize(II)V

    :cond_c
    return-void
.end method

.method public updatePreviewContainer(Landroid/graphics/Rect;II)V
    .registers 5

    .line 1714
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1717
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adaptLayoutParam(Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1719
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1720
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1722
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
