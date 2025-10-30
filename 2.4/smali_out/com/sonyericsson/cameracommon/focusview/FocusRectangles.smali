.class public Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.super Ljava/lang/Object;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingStoppedInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATION_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final FOCUS_RECT_SET_DOWN_ANIMATION_START_DELAY_TIME:I = 0x64

.field private static final INTERPOLATOR_CONTROL_X1:F = 0.23f

.field private static final INTERPOLATOR_CONTROL_X2:F = 0.32f

.field private static final INTERPOLATOR_CONTROL_Y1:F = 1.0f

.field private static final INTERPOLATOR_CONTROL_Y2:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "FocusRectangles"

.field private static final TRACKED_OBJECT_RECT_REFRESH_TIMEOUT:I = 0x3e8


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

.field private mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

.field private mCaptureArea:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

.field private mDevicePreviewHeight:I

.field private mDevicePreviewWidth:I

.field private mEyeSize:Landroid/util/Size;

.field private mFaceRectangles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

.field private mFocusAnimationTask:Ljava/lang/Runnable;

.field private mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsFaceTouchCaptureEnabled:Z

.field private mIsFocusAnimationEnabled:Z

.field private mIsManualFocus:Z

.field private mIsRecording:Z

.field private mLastFaceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

.field private mLatestSelectedFaceUuid:Ljava/lang/String;

.field private mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

.field private mMultiAutoFocusArea:Landroid/graphics/Rect;

.field private mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

.field private mObjectTrackingRectSupported:Z

.field private final mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

.field private mRectangles:Landroid/widget/RelativeLayout;

.field private final mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

.field private mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mSingleAfRect:Landroid/widget/RelativeLayout;

.field private mSmileCaptureLevel:I

.field private mSmileScore:I

.field private mTouchAfRect:Landroid/widget/RelativeLayout;

.field private mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

.field private mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

.field private mViewFinderAccessorForFocusRectangle:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;IILcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;ZZLandroid/view/View;Landroid/view/View$OnTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;)V
    .registers 15

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 97
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    .line 104
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    .line 117
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 126
    new-instance v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .line 129
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    .line 134
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    const/4 v2, 0x2

    .line 137
    iput v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    .line 142
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    .line 144
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    const/4 v2, -0x1

    .line 146
    iput v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    .line 149
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    .line 154
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    .line 156
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAutoFocusArea:Landroid/graphics/Rect;

    .line 158
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->SINGLE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    .line 162
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    .line 2393
    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 190
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 192
    iput-object p10, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 195
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    .line 198
    iput p3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 199
    iput p4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 201
    new-instance p1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .line 203
    iput-object p8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    .line 205
    iput-object p9, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 208
    invoke-direct {p0, p5, p6, p7}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;ZZ)V

    .line 210
    new-instance p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    .line 212
    iput-object p11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mViewFinderAccessorForFocusRectangle:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetRectanglesColor()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->initObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onObjectTrackedInternal(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/HashMap;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->showMultiAutoFocusingView(ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeObjectFocusRectAnimation()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/graphics/Rect;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAutoFocusArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/os/Handler;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeFacePriority(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;ZZ)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(ZZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/view/View;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAutoFocus()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method private addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .registers 8

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_c

    return-object v1

    .line 359
    :cond_c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 360
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_1a

    goto :goto_24

    :cond_1a
    const p3, 0x7f0b003d

    .line 369
    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 374
    :goto_24
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 377
    invoke-virtual {p3, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 380
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 379
    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectPosition(IIII)V

    .line 383
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-virtual {p3, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 386
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method private changeFacePriority(Ljava/lang/String;)V
    .registers 6

    .line 2078
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    .line 2080
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeFacePriority() faceUuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 2084
    :cond_2a
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getFaceRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 2085
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2089
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 2090
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    invoke-interface {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onFaceSelected(Landroid/graphics/Point;)V

    .line 2092
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->requestToWaitForFaceReflected(Landroid/graphics/Point;)V

    return-void
.end method

.method private changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .registers 6

    .line 2238
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeState to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2238
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2240
    :cond_26
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    return-void
.end method

.method private clearAutoFocus()V
    .registers 3

    .line 2438
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    goto :goto_15

    .line 2443
    :pswitch_e
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearMultiAutoFocus()V

    goto :goto_15

    .line 2440
    :pswitch_12
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method private displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V
    .registers 6

    .line 2292
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleX(F)V

    .line 2293
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleY(F)V

    .line 2294
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(IIII)V

    .line 2295
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 2296
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 2297
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2298
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2299
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    return-void
.end method

.method private faceResultToRectangles(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .registers 8

    .line 2100
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_15

    .line 2110
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;

    move-result-object v1

    .line 2107
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->getFaceInformationList(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Landroid/graphics/Rect;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    move-result-object p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 2113
    :goto_16
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    if-nez p2, :cond_25

    .line 2121
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Ljava/lang/String;IZ)V

    :cond_25
    return-void
.end method

.method private getObjectTrackingAnimator(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
    .registers 10

    .line 2408
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e6b851f    # 0.23f

    const v3, 0x3ea3d70a    # 0.32f

    invoke-direct {v0, v2, v1, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2411
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleX(F)V

    .line 2412
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    invoke-virtual {v2, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleY(F)V

    const-string p3, "scaleX"

    const/4 p4, 0x1

    .line 2413
    new-array v2, p4, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {p3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const-string v2, "scaleY"

    .line 2414
    new-array v4, p4, [F

    aput v1, v4, v3

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    .line 2415
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, v2, v3

    aput-object v1, v2, p4

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p2

    .line 2416
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2417
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;
    .registers 3

    .line 2381
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 2385
    :cond_a
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    iget p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    iget p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hideFaceRectangles(Z)V
    .registers 5

    .line 1776
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-eqz p1, :cond_1c

    .line 1778
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1781
    :cond_1c
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_a

    .line 1784
    :cond_20
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mViewFinderAccessorForFocusRectangle:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;->setEyeDetectionButtonVisibility(Z)V

    .line 1785
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetEyeSize()V

    return-void
.end method

.method private hideTrackedObjectRecgantle()V
    .registers 3

    .line 1789
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    return-void
.end method

.method private initObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 8

    .line 2303
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2307
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 2308
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 2311
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700be

    .line 2312
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2313
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bd

    .line 2314
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2317
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 2318
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 2319
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 2320
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    .line 2322
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v3

    .line 2323
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v4

    .line 2325
    div-int/lit8 v0, v0, 0x2

    sub-int v4, v2, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    .line 2326
    div-int/lit8 v1, v1, 0x2

    sub-int v4, v3, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    .line 2327
    iput v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    .line 2328
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2331
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;ZZ)V
    .registers 12

    .line 251
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->rectanglesContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    .line 258
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;-><init>(Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    .line 259
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 264
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    check-cast v1, [Landroid/view/View;

    goto :goto_2c

    :cond_2b
    move-object v1, v2

    :goto_2c
    const/4 v3, 0x0

    move v4, v3

    :goto_2e
    const/16 v5, 0xa

    if-ge v4, v5, :cond_44

    if-eqz v1, :cond_39

    .line 269
    aget-object v5, v1, v4

    check-cast v5, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    goto :goto_3a

    :cond_39
    move-object v5, v2

    .line 271
    :goto_3a
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6, v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 275
    :cond_44
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->trackedObjectView:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v1, :cond_57

    const v1, 0x7f0b003d

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 282
    :cond_57
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 283
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 286
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 288
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0700be

    .line 289
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 290
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700bd

    .line 291
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 292
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v7, v3, v3, v1, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(IIII)V

    .line 294
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v3, 0x7f090147

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 295
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v3, 0x7f0b003e

    if-eqz p2, :cond_c5

    .line 302
    iget-object p2, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->singleAfView:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    .line 303
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    if-nez p2, :cond_b9

    .line 304
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    .line 308
    :cond_b9
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c5
    if-eqz p3, :cond_eb

    .line 313
    iget-object p2, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->multiAfView:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    .line 314
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    if-nez p2, :cond_da

    const p2, 0x7f0b005c

    .line 315
    invoke-virtual {v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    .line 319
    :cond_da
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {p2, v4}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setVisibility(I)V

    .line 320
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {p2, p3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->prepare()V

    .line 325
    :cond_eb
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->touchAfView:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_fb

    .line 327
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 332
    :cond_fb
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const p2, 0x7f090067

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 339
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    return-void
.end method

.method private onObjectTrackedInternal(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .registers 9

    .line 2022
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_e

    .line 2024
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2030
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2034
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2037
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2038
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2043
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v3, :cond_58

    .line 2045
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 2047
    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_6a

    .line 2049
    :cond_58
    iget-object v2, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 2050
    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 2053
    :goto_6a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getObjectAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v0

    .line 2054
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iget v4, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p1, v4

    iget v5, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iget v0, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    invoke-direct {v2, v3, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2065
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 2066
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(IIII)V

    .line 2070
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    .line 2073
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 2074
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    return-void
.end method

.method private playObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .registers 7

    .line 2335
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 2336
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectImageHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2337
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2341
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    .line 2343
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V

    .line 2345
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    if-ne p2, v1, :cond_5c

    .line 2346
    sget-object p2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 2348
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/16 v1, 0x12c

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getObjectTrackingAnimator(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2350
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x1

    .line 2351
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2352
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6b851f    # 0.23f

    const v1, 0x3ea3d70a    # 0.32f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2355
    new-instance p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2376
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_5c
    return-void
.end method

.method private playOnTouchDownAnimationForTouchFocusRect()V
    .registers 5

    .line 1957
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30

    .line 1958
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08009a

    .line 1961
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v1, 0x1

    .line 1963
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    const/4 v1, 0x4

    .line 1965
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1970
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    .line 1988
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    return-void
.end method

.method private playOnTouchUpAnimationForTouchFocusRect()V
    .registers 3

    .line 1994
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    .line 1995
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 1996
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1999
    :cond_11
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    .line 2014
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 2017
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    :cond_22
    return-void
.end method

.method private playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 3

    .line 1936
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    if-nez v0, :cond_17

    .line 1937
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_18

    goto :goto_17

    .line 1944
    :pswitch_10
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchUpAnimationForTouchFocusRect()V

    goto :goto_17

    .line 1940
    :pswitch_14
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchDownAnimationForTouchFocusRect()V

    :cond_17
    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
    .end packed-switch
.end method

.method private removeObjectFocusRectAnimation()V
    .registers 3

    .line 1823
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1828
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationObject(Landroid/view/View;)V

    .line 1830
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAnimation()V

    .line 1831
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private removeSingleFocusRectAnimation()V
    .registers 3

    .line 1809
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1811
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    .line 1816
    :cond_12
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationSingle(Landroid/view/View;)V

    .line 1818
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v1, 0x0

    .line 1819
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private removeTouchFocusRectAnimation()V
    .registers 3

    .line 1793
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 1795
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 1797
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_15

    return-void

    .line 1802
    :cond_15
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationTouch(Landroid/view/View;)V

    .line 1804
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v1, 0x0

    .line 1805
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private resetEyeSize()V
    .registers 3

    .line 581
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    return-void
.end method

.method private resetFaceRectangleColor()V
    .registers 4

    .line 1850
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v2, 0x0

    .line 1851
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    const/4 v2, 0x4

    .line 1853
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_a

    :cond_1f
    return-void
.end method

.method private resetMultiFocusRectangleColor()V
    .registers 2

    .line 1874
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->resetFocusRectanlgeColor()V

    return-void
.end method

.method private resetObjectTrackingRectangleColor(Z)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1858
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSuccessIcon()I

    move-result p1

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getNormalIcon()I

    move-result p1

    .line 1859
    :goto_b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    return-void
.end method

.method private resetRectanglesColor()V
    .registers 3

    .line 1835
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    const/4 v0, 0x0

    .line 1836
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    .line 1837
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    .line 1838
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    goto :goto_1f

    .line 1843
    :pswitch_18
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetMultiFocusRectangleColor()V

    goto :goto_1f

    .line 1840
    :pswitch_1c
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_18
    .end packed-switch
.end method

.method private resetSingleFocusRectangleColor()V
    .registers 3

    .line 1869
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080091

    .line 1870
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private resetTouchFocusRectangleColor()V
    .registers 4

    .line 1863
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 1864
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1865
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    const v2, 0x7f080091

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private setAFLocking(ZZ)V
    .registers 4

    if-eqz p1, :cond_8

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStartAfLock(Z)V

    goto :goto_d

    .line 596
    :cond_8
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStopAfLock()V

    :goto_d
    xor-int/lit8 p1, p1, 0x1

    .line 598
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setEnableFaceFocusTouch(Z)V

    return-void
.end method

.method private setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 1880
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    return-void

    .line 1885
    :cond_9
    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-ne p2, v1, :cond_11

    const/4 v1, 0x1

    .line 1886
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 1890
    :cond_11
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 1891
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 1894
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1899
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v3

    .line 1902
    iget v4, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_35

    .line 1904
    iget v1, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_47

    .line 1905
    :cond_35
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-ge v4, v1, :cond_47

    .line 1907
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 1914
    :cond_47
    :goto_47
    iget v4, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_52

    .line 1916
    iget p1, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 p1, p1, 0x2

    goto :goto_64

    .line 1917
    :cond_52
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-ge v4, p1, :cond_64

    .line 1919
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v3, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    .line 1927
    :cond_64
    :goto_64
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 1928
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v1

    .line 1929
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p1

    .line 1927
    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 1930
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1932
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method private setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V
    .registers 8

    .line 1620
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_31

    .line 1623
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1624
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1625
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1626
    iput p5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1628
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->LANDSCAPE:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 p4, -0x1

    const/16 p5, 0xe

    const/16 v1, 0xf

    if-ne p2, p3, :cond_28

    .line 1630
    invoke-virtual {v0, v1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1631
    invoke-virtual {v0, p5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_2e

    .line 1633
    :cond_28
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1634
    invoke-virtual {v0, p5, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1638
    :goto_2e
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_31
    return-void
.end method

.method private showMultiAutoFocusingView(ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V
    .registers 10

    .line 2450
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$MultiAutoFocusView$FocusState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_c4

    goto/16 :goto_c2

    .line 2493
    :pswitch_e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 2494
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setVisibility(I)V

    .line 2496
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setBacgroundResources(ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V

    goto/16 :goto_c2

    .line 2452
    :pswitch_22
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAutoFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 2453
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 2456
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 2458
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 2456
    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2460
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v2, v2, 0xf

    div-int/lit16 v2, v2, 0xc8

    .line 2461
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0xf

    div-int/lit16 v3, v3, 0xc8

    if-eqz p1, :cond_67

    .line 2466
    new-instance v4, Landroid/graphics/Rect;

    .line 2469
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v2

    .line 2470
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_9f

    .line 2472
    :cond_67
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAutoFocusArea:Landroid/graphics/Rect;

    .line 2473
    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 2476
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/lit8 v6, v6, 0x55

    div-int/lit8 v6, v6, 0x64

    if-le v5, v6, :cond_88

    .line 2477
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 2478
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2480
    :cond_88
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/lit8 v5, v5, 0x55

    div-int/lit8 v5, v5, 0x64

    if-le v3, v5, :cond_9f

    .line 2481
    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 2482
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 2485
    :cond_9f
    :goto_9f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setBacgroundResources(ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V

    .line 2486
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setRectSize(II)V

    .line 2487
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setRectCenter(Landroid/graphics/Rect;)V

    .line 2488
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setVisibility(I)V

    .line 2489
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAutoFocusArea:Landroid/graphics/Rect;

    :cond_c2
    :goto_c2
    return-void

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_22
        :pswitch_e
    .end packed-switch
.end method

.method private updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Ljava/lang/String;IZ)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_24

    .line 1420
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getUserSelectedUuid()Ljava/lang/String;

    move-result-object p2

    .line 1421
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_24

    .line 1422
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFaceRectangles: uuid is not specified, use uuid from API, uuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1429
    :cond_24
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v4, :cond_5c

    .line 1431
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_59

    .line 1432
    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFaceRectangles: view is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1439
    :cond_5c
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearUpdated()V

    .line 1441
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_d9

    .line 1443
    invoke-virtual {p1, v3}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v5

    if-nez v5, :cond_8e

    .line 1445
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_8b

    .line 1446
    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFaceRectangles: namedFace is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1454
    :cond_8e
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V

    .line 1456
    iget-object v6, v5, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_d5

    const v6, 0x7f08009b

    .line 1457
    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1458
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->stopAnimation()V

    .line 1461
    iget v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_ac

    .line 1462
    invoke-virtual {v4, v7}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_ce

    .line 1464
    :cond_ac
    iget-boolean v5, v5, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mIsAnimalFace:Z

    if-eqz v5, :cond_c1

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mViewFinderAccessorForFocusRectangle:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;

    .line 1465
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;->isAnimalEyeDetectionAvailable()Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 1466
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    invoke-direct {p0, v4, p1, v5, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;II)V

    .line 1467
    invoke-virtual {v4, v7}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_ce

    .line 1473
    :cond_c1
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileLevel(I)V

    .line 1474
    invoke-virtual {v4, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    .line 1475
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    invoke-direct {p0, v4, p1, v5, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;II)V

    .line 1479
    :goto_ce
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    goto :goto_e0

    .line 1481
    :cond_d5
    invoke-virtual {v4, v7}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_e0

    .line 1485
    :cond_d9
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    const/4 v5, 0x0

    .line 1486
    invoke-virtual {v4, v5, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->update(Ljava/lang/String;I)V

    :goto_e0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2f

    .line 1491
    :cond_e4
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mViewFinderAccessorForFocusRectangle:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;->setEyeDetectionButtonVisibility(Z)V

    return-void
.end method

.method private updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1396
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method

.method private updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .registers 4

    .line 1402
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    .line 1403
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    .line 1404
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->isWaitingForFaceReflected()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1405
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->check(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    :cond_12
    return-void
.end method

.method private updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V
    .registers 14

    .line 1532
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    .line 1534
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converted rectangle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1536
    iget-object v2, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mEyePosition:Landroid/graphics/Point;

    if-eqz v2, :cond_14c

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mEyePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_14c

    .line 1537
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1538
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1539
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1540
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1538
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1542
    div-int/lit8 v5, v3, 0x3

    if-gt v2, v5, :cond_78

    .line 1543
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1544
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0700b8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1546
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    goto :goto_c9

    .line 1548
    :cond_78
    div-int/lit8 v3, v3, 0x2

    const v5, 0x7f0700b5

    const v6, 0x7f0700b7

    if-lt v2, v3, :cond_9e

    .line 1549
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1550
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1552
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    goto :goto_c9

    .line 1555
    :cond_9e
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_ae

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_c9

    .line 1556
    :cond_ae
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1557
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1559
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    .line 1564
    :cond_c9
    :goto_c9
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mEyePosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    .line 1565
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget-object v5, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mEyePosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    .line 1566
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mEyePosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    .line 1567
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mEyePosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    .line 1568
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1569
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1572
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 1573
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 1574
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 1575
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v6, v2

    sub-int/2addr v5, v6

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v5, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    .line 1576
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mEyeSize:Landroid/util/Size;

    .line 1577
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 1571
    invoke-virtual {p1, v3, v5, v2, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setEyePosition(IIII)V

    goto :goto_14f

    .line 1579
    :cond_14c
    invoke-virtual {p1, v4, v4, v4, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setEyePosition(IIII)V

    .line 1582
    :goto_14f
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 1583
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1582
    invoke-virtual {p1, v2, v3, v5, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectPosition(IIII)V

    if-eqz p4, :cond_16b

    .line 1587
    invoke-virtual {p1, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1589
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_171

    :cond_16b
    const p4, 0x7f08009a

    .line 1591
    invoke-virtual {p1, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1595
    :goto_171
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result p4

    if-nez p4, :cond_178

    goto :goto_179

    :cond_178
    move v1, v4

    :goto_179
    if-nez v1, :cond_17e

    .line 1599
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->startRectangleAnimation(I)V

    .line 1603
    :cond_17e
    iget-object p2, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->update(Ljava/lang/String;I)V

    .line 1608
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUpdated()V

    .line 1611
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_192

    .line 1612
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 1613
    invoke-virtual {p1, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    :cond_192
    return-void
.end method

.method private updateRectanglesCoordinates()V
    .registers 8

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 399
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 403
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 404
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v1, p0

    .line 399
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V

    .line 406
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 407
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSize(II)V

    goto :goto_2b

    .line 411
    :cond_4b
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method private updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;II)V
    .registers 12

    .line 1505
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceByUuid(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object p2

    if-nez p2, :cond_b

    return-void

    .line 1510
    :cond_b
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1514
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugesPosition(IIIII)V

    .line 1521
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileLevel(I)V

    .line 1522
    iget p3, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileScore(I)V

    .line 1523
    iget p1, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    return-void
.end method


# virtual methods
.method public clearAllFocus()V
    .registers 1

    .line 512
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocusExceptFace()V

    .line 513
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    return-void
.end method

.method public clearAllFocusExceptFace()V
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleClearAllFocusExceptFace()V

    return-void
.end method

.method public clearExceptTouchFocus()V
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleClearExceptTouchFocus()V

    return-void
.end method

.method public clearFaceDetection()V
    .registers 3

    const/4 v0, 0x0

    .line 549
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 550
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V

    return-void
.end method

.method public clearMultiAutoFocus()V
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->resetFocusRectanlgeColor()V

    return-void
.end method

.method public clearObjectTracking()V
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleClearObjectTracking()V

    return-void
.end method

.method public clearSingleAutoFocus()V
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 539
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeSingleFocusRectAnimation()V

    .line 540
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    return-void
.end method

.method public clearTouchFocus()V
    .registers 3

    .line 524
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    const/4 v0, 0x0

    .line 526
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 528
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    if-eqz v0, :cond_21

    .line 530
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onTouchFocusCleared()V

    .line 533
    :cond_21
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeTouchFocusRectAnimation()V

    .line 534
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    return-void
.end method

.method public clearTouched()V
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->clearTouched()V

    return-void
.end method

.method public disableFaceTouchCapture()V
    .registers 2

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return-void
.end method

.method public enableFaceTouchCapture()V
    .registers 2

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return-void
.end method

.method protected getAfFocusingIcon()I
    .registers 2

    .line 2280
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0800a2

    goto :goto_b

    :cond_8
    const v0, 0x7f080091

    :goto_b
    return v0
.end method

.method protected getNormalIcon()I
    .registers 3

    .line 2244
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    const v1, 0x7f0800a2

    if-eqz v0, :cond_10

    .line 2245
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_c

    goto :goto_f

    :cond_c
    const v1, 0x7f080090

    :goto_f
    return v1

    .line 2249
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_15

    goto :goto_18

    :cond_15
    const v1, 0x7f080091

    :goto_18
    return v1
.end method

.method public getSelectedFaceSmileScore()I
    .registers 3

    .line 1495
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    const/4 v1, 0x0

    .line 1498
    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    return v0
.end method

.method protected getSuccessIcon()I
    .registers 2

    .line 2286
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0800a2

    goto :goto_b

    :cond_8
    const v0, 0x7f080090

    :goto_b
    return v0
.end method

.method protected getTouchAfFocusingIcon()I
    .registers 2

    .line 2268
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    const v0, 0x7f080091

    :goto_9
    return v0
.end method

.method protected getTouchAfSuccessIcon()I
    .registers 2

    .line 2274
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    const v0, 0x7f080090

    :goto_9
    return v0
.end method

.method public getTouchFocusIconSize()Landroid/graphics/Rect;
    .registers 5

    .line 2217
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 2218
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 2219
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected getTouchIcon()I
    .registers 3

    .line 2256
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    const v1, 0x7f0800a1

    if-eqz v0, :cond_10

    .line 2257
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_c

    goto :goto_f

    :cond_c
    const v1, 0x7f080090

    :goto_f
    return v1

    .line 2261
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_15

    goto :goto_18

    :cond_15
    const v1, 0x7f080091

    :goto_18
    return v1
.end method

.method public getVisibility()I
    .registers 2

    .line 2230
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public isTouchFocus()Z
    .registers 3

    .line 2210
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onAutoFocusCanceled()V
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnAutoFocusCanceled()V

    return-void
.end method

.method public onAutoFocusDone(ZZ)V
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnAutoFocusDone(ZZ)V

    return-void
.end method

.method public onAutoFocusStarted(Z)V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnAutoFocusStarted(Z)V

    return-void
.end method

.method public onBurstShutterDone(Z)V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnBurstShutterDone(Z)V

    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 4

    .line 474
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 475
    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    .line 476
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mViewFinderAccessorForFocusRectangle:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;->setEyeDetectionButtonVisibility(Z)V

    .line 477
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetEyeSize()V

    .line 480
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    return-void
.end method

.method public onObjectFocused()V
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    return-void
.end method

.method public onObjectLost()V
    .registers 3

    .line 497
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_c

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 500
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnObjectLost()V

    return-void
.end method

.method public onObjectRemoved()V
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnObjectRemoved()V

    return-void
.end method

.method public onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnTrackedObjectStateUpdated(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    return-void
.end method

.method public onUiComponentOverlaid()V
    .registers 2

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnUiComponentOverlaid()V

    return-void
.end method

.method public onUiComponentRemoved()V
    .registers 2

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnUiComponentRemoved()V

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 416
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    return-void
.end method

.method public reset()V
    .registers 2

    .line 575
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->stopRecording()V

    const/4 v0, 0x0

    .line 576
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(ZZ)V

    .line 577
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setLockedBySelfTimer(Z)V

    return-void
.end method

.method public setAutoFocusViewType(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;)V
    .registers 2

    .line 2426
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    return-void
.end method

.method public setEnableFaceFocusTouch(Z)V
    .registers 5

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 610
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 611
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez p1, :cond_2a

    .line 613
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2c

    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    .line 612
    :goto_2c
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    goto :goto_d

    :cond_30
    return-void
.end method

.method public setEyeDetection(Z)V
    .registers 6

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-eqz v1, :cond_a

    const/4 v2, 0x0

    .line 239
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 240
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 242
    :cond_25
    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setEyeDetectionOn(ZZ)V

    goto :goto_a

    :cond_29
    return-void
.end method

.method public setFocusIconType(Z)V
    .registers 2

    .line 2430
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    return-void
.end method

.method public setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 7

    const/4 v0, 0x2

    .line 454
    new-array v0, v0, [I

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 456
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr p1, v0

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 459
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p1, v1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method public setLockedBySelfTimer(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    .line 602
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setEnableFaceFocusTouch(Z)V

    return-void
.end method

.method public setMultiAutoFocusArea(Landroid/graphics/Rect;)V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAutoFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 464
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAutoFocusArea:Landroid/graphics/Rect;

    .line 465
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleSetMultiAutoFocusArea()V

    :cond_f
    return-void
.end method

.method public setObjectTrackingRectSupported(Z)V
    .registers 2

    .line 2422
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 2226
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    return-void
.end method

.method public setSmileCaptureThreshold(I)V
    .registers 2

    .line 2434
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 2234
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public startFaceDetection()V
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStartFaceDetection()V

    return-void
.end method

.method public startObjectTracking()V
    .registers 2

    .line 484
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStartObjectTracking()V

    return-void
.end method

.method public startRecording()V
    .registers 2

    const/4 v0, 0x1

    .line 585
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    return-void
.end method

.method public stopRecording()V
    .registers 2

    const/4 v0, 0x0

    .line 589
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    return-void
.end method

.method public updateContainerLayout(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)V
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adaptLayoutParam(Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public updateDevicePreviewSize(II)V
    .registers 3

    .line 228
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 229
    iput p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 232
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    return-void
.end method
