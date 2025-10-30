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

.field private mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

.field private mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

.field private mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

.field private mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

.field private mHeadUpDisplay:Landroid/view/ViewGroup;

.field private mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

.field private mHintTextViewContainer:Landroid/widget/FrameLayout;

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

.field private mViewFinderDebugIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

.field private mViewFinderRect:Landroid/graphics/Rect;

.field private mWindowCover:Landroid/view/View;

.field private mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

.field private mZoomDialGroup:Landroid/widget/FrameLayout;

.field private mZoomDialViewContainer:Landroid/widget/FrameLayout;

.field private mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

.field private mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

.field private mZoombarGroup:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 251
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    .line 259
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Z)V
    .registers 7

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 136
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 167
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    .line 168
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    const/4 v1, 0x0

    .line 171
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 189
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    .line 192
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 194
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    .line 196
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    .line 198
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    .line 199
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    .line 263
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 264
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 265
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsOneShot:Z

    .line 268
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz p2, :cond_31

    .line 269
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    goto :goto_3a

    .line 271
    :cond_31
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    .line 274
    :goto_3a
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 275
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->createContainer(Landroid/content/Context;)[Landroid/view/View;

    move-result-object p2

    array-length p3, p2

    :goto_47
    if-ge v1, p3, :cond_53

    aget-object v0, p2, v1

    .line 276
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 289
    :cond_53
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPreferredFocusView()V

    .line 292
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPreviewContainer()V

    .line 293
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSwitchAnimationContainer()V

    .line 294
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    const-string p3, "low-battery"

    invoke-direct {p2, p1, p3}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    .line 295
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "low-internal-storage"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 296
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "low-sd-card"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 297
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "photo-smile-capture"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 298
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "video-smile-capture"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 302
    new-instance p1, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/view/ViewGroup;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    .registers 1

    .line 103
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    .registers 1

    .line 103
    sput-object p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/CameraActivity;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    return p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)Z
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/graphics/Rect;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object p0
.end method

.method private adaptPreviewLayoutMargin(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$LayoutParams;
    .registers 6

    .line 1860
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1861
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1862
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 1865
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_37

    .line 1868
    :cond_17
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_37

    .line 1871
    :cond_1d
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_37

    .line 1872
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1873
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_33

    .line 1876
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1877
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_37

    .line 1880
    :cond_33
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1881
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_37
    :goto_37
    return-object p1
.end method

.method private adjustmentWithSystemLayout()V
    .registers 8

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x4

    .line 622
    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    .line 629
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_2a

    aget v5, v1, v4

    .line 630
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 631
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
        0x7f0900c7
        0x7f09018c
        0x7f09003b
        0x7f0900d8
    .end array-data
.end method

.method private createContainer(Landroid/content/Context;)[Landroid/view/View;
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 450
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    .line 452
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    .line 453
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    .line 454
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    .line 455
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c002f

    const/4 v3, 0x0

    .line 456
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    .line 457
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    .line 458
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    .line 460
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREFERRED_FOCUS:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    aput-object v1, v0, p1

    .line 461
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREVIEW_CONTAINER_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    aput-object v1, v0, p1

    .line 462
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->SWITCH_ANIMATION_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 463
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->CAPTURE_BUTTON_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 464
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->HEAD_UP_DISPLAY_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 465
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREDICTIVE_LAUNCH_COVER_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    return-object v0
.end method

.method private inflate()V
    .registers 4

    .line 1438
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1439
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 1440
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_18

    const-string v0, "HeadUpDisplay is already inflated."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1441
    :cond_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 1442
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    goto :goto_39

    .line 1444
    :cond_21
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2e

    const-string v1, "HeadUpDisplay is not inflated."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2e
    const v1, 0x7f0c0026

    .line 1445
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 1449
    :goto_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1451
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900d8

    .line 1454
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 1456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900db

    .line 1457
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    return-void
.end method

.method private repositionZoomDial()V
    .registers 7

    .line 1254
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1258
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_22

    .line 1263
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1264
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07010a

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    .line 1263
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1270
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    .line 1271
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1273
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1274
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1276
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1277
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1279
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1281
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v4, v5, :cond_5c

    .line 1283
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1284
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1285
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_67

    .line 1287
    :cond_5c
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1288
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v1, v4

    :goto_67
    if-eq v1, v3, :cond_7e

    .line 1292
    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1293
    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x55

    .line 1294
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1295
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7e
    return-void
.end method

.method private setupCaptureButtonGroup()V
    .registers 3

    .line 942
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 943
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 944
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1c

    const-string v0, "setupCaptureButtonGroup: fails to setup"

    .line 945
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private setupCaptureButtonGroup(Landroid/view/View;)Z
    .registers 4

    .line 981
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-eqz v0, :cond_50

    .line 982
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-nez v0, :cond_c

    .line 983
    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    .line 986
    :cond_c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f0900f0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMainButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 987
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v1, 0x7f0901aa

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 988
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v1, 0x7f0900a9

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 990
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-eqz p1, :cond_4e

    .line 991
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    .line 992
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    .line 993
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

    .line 1080
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1081
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    goto :goto_d

    .line 1083
    :cond_b
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NORMAL:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    :goto_d
    const/4 v1, 0x0

    .line 1087
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isCameraSwitching()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 1088
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v2, :cond_2b

    .line 1089
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1090
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getLocalContentInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1091
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 1094
    :cond_2b
    new-instance v2, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1096
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_43

    .line 1101
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getLocalContentInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1104
    :cond_43
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 1105
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 1106
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f09008b

    .line 1107
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 1108
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    :cond_5d
    return-void
.end method

.method private setupFrontAngleSwitchButton()V
    .registers 3

    .line 1038
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    if-nez v0, :cond_2c

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1039
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    .line 1042
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1043
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1044
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    return-void
.end method

.method private setupGridLineView()V
    .registers 3

    .line 1578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-nez v0, :cond_31

    .line 1579
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    .line 1580
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    .line 1582
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 1583
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1584
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateGridLine(II)V

    .line 1585
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_31
    return-void
.end method

.method private setupModeShortcut(Z)V
    .registers 4

    .line 1122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    .line 1124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update(Z)V

    .line 1125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f0900ff

    .line 1126
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    .line 1127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMruSettings()Lcom/sonyericsson/android/camera/setting/MruSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setMruSettings(Lcom/sonyericsson/android/camera/setting/MruSettings;)V

    .line 1128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    return-void
.end method

.method private setupPreferredFocusView()V
    .registers 4

    .line 1051
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 1052
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1053
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1055
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1056
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1e
    return-void
.end method

.method private setupPreviewContainer()V
    .registers 4

    .line 478
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 481
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setLayoutDirection(I)V

    .line 483
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 484
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 485
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 486
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x50

    .line 487
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 488
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setupPrimaryShortcut()V
    .registers 3

    .line 1590
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    return-void
.end method

.method private setupRecordingIndicator()V
    .registers 3

    .line 1304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-nez v0, :cond_2c

    .line 1305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090133

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    .line 1307
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setScreenAspect(Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 1308
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 1310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(I)V

    :cond_2c
    return-void
.end method

.method private setupSceneIndicators()V
    .registers 5

    .line 1153
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f090153

    .line 1154
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v3, 0x7f090154

    .line 1155
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    .line 1156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->setSensorOrientation(I)V

    .line 1158
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f090152

    .line 1159
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 1160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupSettingIndicators()V
    .registers 4

    .line 1146
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f0900b9

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 1148
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f0901c7

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 1149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupSwitchAnimationContainer()V
    .registers 3

    .line 496
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 499
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupSwitchAnimationView()V
    .registers 3

    .line 1755
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    if-nez v0, :cond_14

    .line 1756
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    .line 1758
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method private setupTopIndicators()V
    .registers 4

    .line 1132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    .line 1133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900eb

    .line 1134
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1133
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900ed

    .line 1136
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1135
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900ef

    .line 1138
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1137
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f090115

    .line 1140
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1139
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0901ef

    .line 1142
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1141
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    return-void
.end method

.method private setupTutorial()V
    .registers 4

    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    if-nez v0, :cond_17

    .line 1018
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

.method private setupViewFinderDebugInfoIndicators()V
    .registers 4

    .line 1164
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f090095

    .line 1165
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderDebugIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    .line 1166
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderDebugIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupZoomSwitchButton()V
    .registers 5

    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    if-nez v0, :cond_40

    .line 1024
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    .line 1026
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1027
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070127

    .line 1028
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1029
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070291

    .line 1030
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1032
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1033
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_40
    return-void
.end method

.method private setupZoombar()V
    .registers 4

    .line 1173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_38

    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b8

    const/4 v2, 0x0

    .line 1175
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    const v1, 0x7f09020a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    .line 1177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setSensorOrientation(I)V

    .line 1178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideImmediately()V

    .line 1180
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1183
    :cond_38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->repositionZoombar()V

    return-void
.end method

.method private switchCaptureButtonGroupContainer()V
    .registers 4

    .line 1778
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3f

    .line 1779
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-eqz v0, :cond_3f

    .line 1780
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f090057

    .line 1781
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3f

    .line 1783
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f09011b

    .line 1784
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3f

    .line 1786
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1787
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1790
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1791
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    .line 1792
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-nez v1, :cond_3f

    .line 1793
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3f
    return-void
.end method

.method private updateLayout()V
    .registers 7

    .line 539
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "updateLayout() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 541
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 550
    :cond_14
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_52

    .line 553
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2e

    const-string v0, "ActivityInfo.SCREEN_ORIENTATION_PORTRAIT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2e
    const/16 v0, 0x5a

    .line 556
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

    .line 557
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

    .line 560
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

    .line 567
    :goto_61
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->updatePreviewContainerLayout(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 571
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 575
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateOnScreenButtonLayout()V

    .line 576
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adjustmentWithSystemLayout()V

    return-void
.end method

.method private updateOnScreenButtonLayout()V
    .registers 7

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_12

    .line 581
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_11

    const-string v0, "updateOnScreenButtonLayout: pre-loaded layout is null"

    .line 582
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_11
    return-void

    .line 593
    :cond_12
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    .line 594
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_38

    .line 595
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

    .line 602
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

    .line 603
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v1, v4, v1

    .line 606
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 607
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_73

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v0, v3

    goto :goto_73

    :cond_72
    move v0, v1

    .line 612
    :cond_73
    :goto_73
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 613
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public adaptLayoutParam(Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1898
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getHeightMargin(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adaptPreviewLayoutMargin(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_d

    .line 434
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 436
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    return-void
.end method

.method public addZoomDial()V
    .registers 3

    .line 1239
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1f

    .line 1240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1f

    .line 1241
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1242
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->repositionZoomDial()V

    :cond_1f
    return-void
.end method

.method public attachToWindow()V
    .registers 5

    .line 505
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

    .line 953
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 954
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 956
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 957
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 958
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

    .line 959
    div-int/lit8 v1, v0, 0x3

    .line 960
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07010a

    .line 961
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 962
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 964
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v6, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_6e

    .line 966
    div-int/lit8 v3, v0, 0x9

    goto :goto_76

    .line 967
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

    .line 972
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 977
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method public compareViewFinderRatio(IIF)Z
    .registers 6

    .line 1972
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

.method public computeRadiusOfAnimation()V
    .registers 3

    .line 1763
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    if-nez v0, :cond_5

    return-void

    .line 1767
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setMaxRadius(Landroid/graphics/Rect;)V

    return-void
.end method

.method public disableGridLineView()V
    .registers 2

    .line 1562
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_7

    .line 1563
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->disable()V

    :cond_7
    return-void
.end method

.method public enableGridLineView()V
    .registers 2

    .line 1556
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_7

    .line 1557
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->enable()V

    :cond_7
    return-void
.end method

.method public getActivity()Lcom/sonyericsson/android/camera/CameraActivity;
    .registers 2

    .line 1512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object v0
.end method

.method public getAutoReview()Lcom/sonyericsson/android/camera/view/AutoReviewController;
    .registers 2

    .line 1075
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    return-object v0
.end method

.method public getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;
    .registers 2

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    return-object v0
.end method

.method public getBlurViewController()Lcom/sonyericsson/android/camera/view/blur/BlurViewController;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBurstCountView()Lcom/sonyericsson/android/camera/view/BurstCountView;
    .registers 5

    .line 1516
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getCenterContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f090045

    .line 1517
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_19

    .line 1520
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v3, 0x7f0c00a3

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1522
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1525
    :cond_19
    check-cast v2, Lcom/sonyericsson/android/camera/view/BurstCountView;

    return-object v2
.end method

.method public getCenterContainer()Landroid/widget/FrameLayout;
    .registers 3

    .line 1469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .registers 2

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object v0
.end method

.method public getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .registers 2

    .line 1117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object v0
.end method

.method public getCurrentOrientation()I
    .registers 2

    .line 1113
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    return v0
.end method

.method public getFrontAngleSwitchButton()Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;
    .registers 2

    .line 1061
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    return-object v0
.end method

.method public getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
    .registers 2

    .line 757
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

    .line 1908
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_30

    .line 1910
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1911
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1912
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1911
    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1910
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3b

    .line 1914
    :cond_30
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    .line 1915
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1914
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1918
    :goto_3b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1920
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1921
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1924
    invoke-virtual {p0, v1, v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1942
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_70

    .line 1944
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x9

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015c

    .line 1945
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v2, p1, v0

    goto :goto_9a

    .line 1947
    :cond_70
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 v2, p1, 0x3

    goto :goto_9a

    :cond_77
    const v3, 0x3faaaaab

    .line 1949
    invoke-virtual {p0, v1, v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result v3

    if-nez v3, :cond_8c

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1950
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getAspect()F

    move-result v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1954
    :cond_8c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_9a

    .line 1956
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

    .line 1481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    return-object v0

    .line 1484
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    .line 1485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;
    .registers 5

    .line 1497
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1499
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_22

    .line 1504
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1505
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07010a

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    .line 1504
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_22
    return-object v0
.end method

.method public getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .registers 2

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object v0
.end method

.method public getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .registers 2

    .line 770
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

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-object v0
.end method

.method public getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;
    .registers 2

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    return-object v0
.end method

.method public getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;
    .registers 2

    .line 806
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    return-object v0
.end method

.method public getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;
    .registers 2

    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    return-object v0
.end method

.method public getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object v0
.end method

.method public getOnScreenMainButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .registers 2

    .line 1005
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMainButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object v0
.end method

.method public getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .registers 2

    .line 1009
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object v0
.end method

.method public getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object v0
.end method

.method public getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;
    .registers 2

    .line 786
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    return-object v0
.end method

.method public getPredictiveLaunchCoverView()Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;
    .registers 2

    .line 1840
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    return-object v0
.end method

.method public getPreview()Landroid/view/View;
    .registers 2

    .line 873
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    return-object v0
.end method

.method public getPreviewContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 877
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewContainerRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 1493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    return-object v0
.end method

.method public getPreviewOverlayContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 1489
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

    .line 1071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .registers 2

    .line 1465
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;
    .registers 2

    .line 790
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

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-object v0
.end method

.method public getSuperSlowMotionTriggerAnimation()Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;
    .registers 2

    .line 753
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    return-object v0
.end method

.method public getSwitchAnimationView()Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;
    .registers 2

    .line 1771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    return-object v0
.end method

.method public getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .registers 2

    .line 774
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object v0
.end method

.method public getTopIndicator()Landroid/view/View;
    .registers 2

    .line 1300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    return-object v0
.end method

.method public getTutorial()Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    .registers 2

    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    return-object v0
.end method

.method public getVideoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .registers 2

    .line 782
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object v0
.end method

.method public getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;
    .registers 2

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderDebugIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    return-object v0
.end method

.method public getViewFinderRect()Landroid/graphics/Rect;
    .registers 2

    .line 881
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;
    .registers 2

    .line 1430
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    return-object v0
.end method

.method public getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
    .registers 2

    .line 1434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    return-object v0
.end method

.method public getZoomDialViewContainer()Landroid/widget/FrameLayout;
    .registers 3

    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_11

    .line 1474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090204

    .line 1475
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialViewContainer:Landroid/widget/FrameLayout;

    .line 1477
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getZoomSwitchButton()Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;
    .registers 2

    .line 1065
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    return-object v0
.end method

.method public hideAutoReview()V
    .registers 2

    .line 1542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-eqz v0, :cond_7

    .line 1543
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->hide()V

    :cond_7
    return-void
.end method

.method public hideBlackScreen()V
    .registers 3

    .line 1404
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 1405
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 1406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method

.method public hideContentsViewController()V
    .registers 2

    .line 1331
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 1332
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    :cond_7
    return-void
.end method

.method public hideLeftIconContainer()V
    .registers 3

    .line 1534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 1535
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePredictiveLaunchCover(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .registers 3

    .line 1853
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_7

    .line 1854
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->hide(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_7
    return-void
.end method

.method public isAutoReviewShowing()Z
    .registers 2

    .line 1802
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-eqz v0, :cond_9

    .line 1803
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isShowing()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraSwitching()Z
    .registers 2

    .line 1813
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    return v0
.end method

.method public isDisplaySizeBiggerThanDefault()Z
    .registers 3

    .line 442
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

    .line 1323
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

    .line 1359
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 1360
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 1362
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1363
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 1364
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(I)V

    .line 1365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 1367
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_23

    const/4 v2, 0x0

    .line 1368
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1370
    :cond_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_34

    .line 1371
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsOneShot:Z

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    .line 1372
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setAlpha(F)V

    .line 1374
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->disable()V

    .line 1376
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3c

    const/4 v2, 0x4

    .line 1378
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1380
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    if-eqz v0, :cond_43

    .line 1381
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    :cond_43
    return-void
.end method

.method public refresh()V
    .registers 2

    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public release()V
    .registers 3

    .line 731
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 732
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 735
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 736
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 739
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_16

    .line 740
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 743
    :cond_16
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 744
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 745
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 746
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    .line 747
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 748
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    .line 749
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public releasePredictiveLaunchCover()V
    .registers 4

    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 1845
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1846
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setVisibility(I)V

    .line 1847
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1848
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    :cond_18
    return-void
.end method

.method public reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .registers 3

    .line 1337
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-nez v0, :cond_8

    .line 1338
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    goto :goto_b

    .line 1340
    :cond_8
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    :goto_b
    return-void
.end method

.method public removeZoomDial()V
    .registers 3

    .line 1250
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public repositionZoombar()V
    .registers 7

    .line 1187
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 1191
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_1d

    .line 1192
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010a

    .line 1193
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1197
    :cond_1d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    .line 1198
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1200
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1201
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1203
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1205
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v4, v5, :cond_47

    .line 1207
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1208
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_52

    .line 1210
    :cond_47
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1211
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_52
    if-eq v4, v3, :cond_5b

    .line 1214
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_5b
    return-void
.end method

.method public resume()V
    .registers 3

    const/4 v0, 0x0

    .line 1350
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    .line 1351
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateLayout()V

    .line 1352
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    .line 1354
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public setGridLineViewEnabled(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 1549
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->enableGridLineView()V

    goto :goto_9

    .line 1551
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->disableGridLineView()V

    :goto_9
    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .registers 2

    .line 1809
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    return-void
.end method

.method public setLayoutMarginAsPreview(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 6

    .line 1725
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreview()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1731
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreview()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1732
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_24

    .line 1734
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1735
    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2a

    .line 1737
    :cond_24
    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1738
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_2a
    return-void
.end method

.method public setOnViewFinderGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;)V
    .registers 4

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_d

    .line 381
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 383
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setOnGestureDetectorListener(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 818
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "setOrientation: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 819
    :cond_d
    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setOrientation(II)V

    return-void
.end method

.method public setOrientation(II)V
    .registers 4

    .line 823
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_9

    .line 826
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout(I)V

    .line 829
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    .line 830
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 833
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b4

    .line 834
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 835
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 837
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 838
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 839
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->setSensorOrientation(I)V

    .line 840
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderDebugIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->setSensorOrientation(I)V

    .line 841
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-eqz v0, :cond_45

    .line 843
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setSensorOrientation(I)V

    .line 845
    :cond_45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setSensorOrientation(I)V

    .line 846
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 847
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setUiOrientation(I)V

    .line 848
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->setOrientation(I)V

    .line 849
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->setSensorOrientation(I)V

    .line 850
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 851
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 852
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 853
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 854
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setUiOrientation(I)V

    .line 855
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setRotation(F)V

    .line 857
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    if-eqz p2, :cond_87

    .line 858
    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setUiOrientation(I)V

    .line 860
    :cond_87
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    if-eqz p2, :cond_8e

    .line 861
    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->setUiOrientation(I)V

    .line 863
    :cond_8e
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 864
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->setOrientation(I)V

    .line 866
    :cond_a1
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_b4

    .line 867
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->setOrientation(I)V

    :cond_b4
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .registers 2

    .line 1461
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    return-void
.end method

.method public setPreviewSurface(Landroid/view/View;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    return-void
.end method

.method public setStartDraggingSlopEnabled(Z)V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_d

    .line 427
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 429
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setStartDraggingSlopEnabled(Z)V

    return-void
.end method

.method public setViewFinderGestureDetectorEnabled(ZZ)V
    .registers 7

    .line 393
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_f

    move v3, p2

    move p2, p1

    move p1, v3

    .line 403
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_1c

    .line 404
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    :cond_1c
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_33

    .line 408
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v2, p2, v0

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_58

    .line 412
    :cond_33
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    new-array p2, v1, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_58

    :cond_3f
    if-eqz p2, :cond_4d

    .line 417
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    new-array p2, v1, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_58

    .line 420
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

    .line 671
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 673
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_14

    const-string v0, "INFLATE LAYOUT IN COMMON"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 674
    :cond_14
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->inflate()V

    .line 676
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateLayout()V

    move v0, v1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 679
    :goto_1d
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V

    .line 681
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v2, :cond_34

    .line 682
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 683
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setViewFinderGestureDetectorEnabled(ZZ)V

    .line 687
    :cond_34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupTutorial()V

    .line 689
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->switchCaptureButtonGroupContainer()V

    .line 690
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup()V

    if-nez v0, :cond_47

    .line 691
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 692
    :cond_47
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    .line 694
    :cond_4a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSettingIndicators()V

    .line 695
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupTopIndicators()V

    .line 696
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoombar()V

    .line 697
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoomDial()V

    .line 698
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupRecordingIndicator()V

    .line 699
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupGridLineView()V

    .line 700
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPrimaryShortcut()V

    .line 701
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupModeShortcut(Z)V

    .line 702
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSceneIndicators()V

    .line 703
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupViewFinderDebugInfoIndicators()V

    .line 704
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPredictiveCaptureIndicator()V

    .line 705
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupFrontAngleSwitchButton()V

    .line 706
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoomSwitchButton()V

    .line 708
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setOrientation(I)V

    .line 709
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateAppsUiMarginsForTalkBack()V

    .line 710
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSwitchAnimationView()V

    .line 714
    sget-object p1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isEmulateSideTouchEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 715
    sget-object p1, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->create(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 718
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    .line 720
    :cond_95
    sget-object p2, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->create(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a4

    .line 723
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    .line 727
    :cond_a4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->setup(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setupAutoReview()V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-nez v0, :cond_d

    .line 527
    new-instance v0, Lcom/sonyericsson/android/camera/view/AutoReviewController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    .line 529
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->setup()V

    :cond_18
    return-void
.end method

.method public setupBlankScreen()V
    .registers 4

    .line 1411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    if-nez v0, :cond_26

    .line 1412
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const v1, 0x7f0c002d

    const/4 v2, 0x0

    .line 1416
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    .line 1417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1419
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

    .line 895
    iget-object v0, v12, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 896
    iget-object v0, v12, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->release()V

    .line 900
    :cond_14
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 901
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

    .line 1315
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    if-nez v0, :cond_16

    .line 1316
    new-instance v0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    .line 1318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->setOrientation(I)V

    :cond_16
    return-void
.end method

.method public setupPredictiveLaunchCoverView(Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;Landroid/graphics/Rect;)V
    .registers 6

    .line 1826
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-nez v0, :cond_21

    .line 1828
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, p1, p2, v1, p3}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->inflate(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    .line 1829
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1830
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout(I)V

    :cond_21
    return-void
.end method

.method public setupPreferentialHeadUpDisplays()V
    .registers 6

    const-string v0, "[APP DETAIL] setup on-screen button : E"

    .line 637
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f090058

    .line 640
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 639
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 641
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 643
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f090061

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 647
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    .line 648
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v4, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-eq v3, v4, :cond_5d

    .line 653
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 654
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_67

    .line 656
    :cond_5d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 658
    :goto_67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 659
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 662
    :cond_70
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateOnScreenButtonLayout()V

    goto :goto_7d

    :cond_74
    const-string v0, "fail to setup"

    .line 664
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_7d
    const-string v0, "[APP DETAIL] setup on-screen button : X"

    .line 666
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method public setupPreviewView()V
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 518
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

    .line 925
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 926
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->release()V

    .line 930
    :cond_13
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 931
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

    .line 1225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_28

    .line 1226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b9

    const/4 v2, 0x0

    .line 1227
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    .line 1229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    :cond_28
    return-void
.end method

.method public showBlackScreen()V
    .registers 3

    .line 1397
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 1398
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 1399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_e
    return-void
.end method

.method public showBlankScreen()V
    .registers 3

    .line 1424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 1425
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public showContentsViewController()V
    .registers 2

    .line 1386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 1387
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    :cond_7
    return-void
.end method

.method public showLeftIconContainer()V
    .registers 3

    .line 1529
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 1530
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateAppsUiMarginsForTalkBack()V
    .registers 5

    .line 1744
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_ON:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 1745
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v2

    .line 1747
    :goto_f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v3, 0x7f0900d9

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 1749
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1750
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_26
    return-void
.end method

.method public updateGridLine(II)V
    .registers 5

    .line 1568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-le p1, v1, :cond_c

    if-le p2, v1, :cond_c

    .line 1569
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setViewSize(II)V

    :cond_c
    return-void
.end method

.method public updatePreviewContainer(Landroid/graphics/Rect;II)V
    .registers 5

    .line 1709
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1712
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adaptLayoutParam(Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1714
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1715
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1717
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setLayoutMarginAsPreview(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1718
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
