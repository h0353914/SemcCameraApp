.class public Lcom/sonyericsson/android/camera/view/UserEventHandler;
.super Ljava/lang/Object;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SelfTimerCancelButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowTriggerButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$StopSlowMotionRecordingButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserEventHandler"


# instance fields
.field private mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private final mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

.field private mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

.field private mIsBurstShotEnabled:Z

.field private final mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private final mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

.field private final mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

.field private final mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private final mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private final mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

.field private final mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

.field private final mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/MessageSettings;Z)V
    .registers 9

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 107
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 108
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 109
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 110
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 111
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    .line 112
    new-instance p2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-direct {p2, p3}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/android/camera/setting/UserSettings;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 113
    new-instance p2, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    const/4 p2, 0x0

    .line 114
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 115
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIsBurstShotEnabled:Z

    .line 116
    new-instance p3, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-direct {p3, p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    .line 117
    new-instance p3, Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    new-instance p4, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;

    invoke-direct {p4, p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    invoke-direct {p3, p1, p4}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchTouchCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetSideTouchEventHandling()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchSideTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetKeyEventHandling()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventCaptureBurst()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCurrentStorageWritable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyDown(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isSuperSlowMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isTouchCaptureEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyUp(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultVideoAction()Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canObjectTracking()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isInternalStorageWritable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyLongPress(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6300(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetTouchEventHandling()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method private canObjectTracking()Z
    .registers 3

    .line 1922
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isObjectTrackingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1926
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1928
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 1933
    :cond_1f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isManualFocus()Z

    move-result p0

    if-eqz p0, :cond_26

    return v1

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method private canSelfTimerActivation()Z
    .registers 2

    .line 2019
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isPhotoSelfTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isIdle()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private dispatchCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 6

    .line 624
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 625
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchCaptureAreaScaleReady() not accepted. requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 625
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 631
    :cond_2f
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 633
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaleReady()V

    :cond_3a
    return-void
.end method

.method private dispatchCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V
    .registers 6

    .line 638
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 p2, 0x1

    .line 639
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchCaptureAreaScaling() not accepted. requested:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 639
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 645
    :cond_2f
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 647
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaling(F)V

    :cond_3a
    return-void
.end method

.method private dispatchClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 6

    .line 577
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 p2, 0x1

    .line 578
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchClick() not accepted. requested:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 578
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 584
    :cond_2f
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 586
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doClick(Landroid/graphics/Point;)V

    return-void

    :cond_3b
    return-void
.end method

.method private dispatchKeyDown(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 840
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoPowerOffWarningDisplayed()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 844
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1a

    .line 850
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyDownAfterTheSecondTime(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 852
    :cond_1a
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyDownInTheFirstTime(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private dispatchKeyDownAfterTheSecondTime(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 715
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 716
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyDownAfterTheSecondTime() not accepted. requested:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 716
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    .line 722
    :cond_37
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 723
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p0

    .line 725
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v2, :cond_4c

    return v2

    :cond_4c
    return v1
.end method

.method private dispatchKeyDownInTheFirstTime(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 734
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 735
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyDownInTheFirstTime() startEventHandling() not accepted. requested:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 735
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    .line 741
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 742
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 744
    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_118

    return v1

    :pswitch_4d
    return v2

    .line 818
    :pswitch_4e
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 820
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_64

    const-string p0, "CLOSE_INITIAL_RESPONSE : start"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_64
    return v2

    .line 800
    :pswitch_65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFlashAndSettingMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 801
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 802
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    return v2

    .line 806
    :cond_77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 807
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    .line 808
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 809
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 811
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady(Z)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 812
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 814
    :cond_8e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return v2

    .line 782
    :pswitch_92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-nez v0, :cond_9b

    return v2

    .line 785
    :cond_9b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, v1, :cond_af

    .line 786
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFlashAndSettingMenuOpened()Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 787
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    :cond_ae
    return v2

    .line 791
    :cond_af
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 792
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    .line 793
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return v2

    .line 764
    :pswitch_bf
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFlashAndSettingMenuOpened()Z

    move-result p1

    if-eqz p1, :cond_d1

    .line 765
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 766
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    return v2

    .line 770
    :cond_d1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 771
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result p1

    .line 772
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 774
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady(Z)Z

    move-result p1

    if-eqz p1, :cond_e8

    .line 775
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 778
    :cond_e8
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clearCanceledSideTouchEventIcons()V

    return v2

    .line 746
    :pswitch_ee
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-nez v0, :cond_f7

    return v2

    .line 750
    :cond_f7
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 752
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 754
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_10b

    move v1, v2

    .line 755
    :cond_10b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareKeyZooming(Z)Z
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)Z

    return v2

    .line 760
    :pswitch_111
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p0

    return p0

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_111
        :pswitch_ee
        :pswitch_bf
        :pswitch_92
        :pswitch_65
        :pswitch_65
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method

.method private dispatchKeyLongPress(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 978
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 979
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyLongPress() not accepted. requested:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 979
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    .line 985
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 986
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnLongPress(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 988
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_76

    goto :goto_74

    .line 997
    :pswitch_4d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p1

    if-nez p1, :cond_56

    return v2

    .line 1001
    :cond_56
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne p1, v0, :cond_5d

    return v2

    .line 1006
    :cond_5d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventCaptureBurst()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 1007
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    goto :goto_74

    .line 990
    :pswitch_68
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne p1, v0, :cond_74

    .line 991
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return v2

    :cond_74
    :goto_74
    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x4
        :pswitch_68
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method

.method private dispatchKeyUp(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 857
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 858
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyUp() not accepted. requested:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 858
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    .line 863
    :cond_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 866
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnUp(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 871
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 872
    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 874
    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_138

    return v1

    :pswitch_5e
    return v2

    .line 917
    :pswitch_5f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isHeadUpDisplayReady()Z

    move-result p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 918
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isEvfPrepared()Z

    move-result p1

    if-nez p1, :cond_70

    goto :goto_7a

    .line 922
    :cond_70
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v2

    :cond_7a
    :goto_7a
    return v2

    .line 927
    :pswitch_7b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSelfTimerCountDownViewShown()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 928
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SELFTIMER_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v2

    .line 931
    :cond_8d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 932
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v2

    .line 937
    :cond_9f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onHandleBackKeyTutorial()Z

    move-result p1

    if-eqz p1, :cond_a8

    return v2

    .line 942
    :cond_a8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeAutoReviewIfShowing()Z

    move-result p1

    if-eqz p1, :cond_b1

    return v2

    .line 945
    :cond_b1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeSettingDialogIfOpened()Z

    move-result p1

    if-eqz p1, :cond_ba

    return v2

    .line 948
    :cond_ba
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeOverlayControlIfOpened()Z

    move-result p1

    if-eqz p1, :cond_c3

    return v2

    .line 954
    :cond_c3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->canApplicationBeFinished()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 955
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    .line 956
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    if-nez v0, :cond_df

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 957
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_de

    goto :goto_df

    :cond_de
    return v1

    .line 958
    :cond_df
    :goto_df
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->startReturnModeAnimation()V

    return v2

    :cond_e5
    return v2

    .line 899
    :pswitch_e6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p1

    if-nez p1, :cond_ef

    return v2

    .line 903
    :cond_ef
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_fd

    .line 905
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v2

    .line 908
    :cond_fd
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_102

    return v2

    .line 912
    :cond_102
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 913
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    return v2

    .line 891
    :pswitch_10f
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_11c

    .line 893
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_11c
    return v2

    .line 884
    :pswitch_11d
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_12a

    .line 886
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_12a
    return v2

    .line 877
    :pswitch_12b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    return v2

    .line 881
    :pswitch_131
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p0

    return p0

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_131
        :pswitch_12b
        :pswitch_11d
        :pswitch_10f
        :pswitch_e6
        :pswitch_e6
        :pswitch_7b
        :pswitch_5f
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method private dispatchLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 6

    .line 592
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 p2, 0x1

    .line 593
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchLongClick() not accepted. requested:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 593
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 599
    :cond_2f
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 601
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doLongClick(Landroid/graphics/Point;)V

    :cond_3a
    return-void
.end method

.method private dispatchSideTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 652
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 656
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoPowerOffWarningDisplayed()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 660
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 661
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getOrientation()I

    move-result p0

    .line 660
    invoke-virtual {v0, p1, p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->onSideTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method private dispatchTouchCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 6

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 608
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 609
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchCancel() not accepted. requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 609
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 615
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 617
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doCancel()V

    .line 620
    :cond_3f
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return-void
.end method

.method private dispatchTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 6

    .line 545
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 546
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchDown() startEventHandling() not accepted. requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 546
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 552
    :cond_2f
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 554
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchDown()V

    :cond_3a
    return-void
.end method

.method private dispatchTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 6

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 561
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 p2, 0x1

    .line 562
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchUp() not accepted. requested:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 562
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 568
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 570
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchUp(Landroid/graphics/Point;)V

    .line 573
    :cond_3f
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return-void
.end method

.method private dispatchVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z
    .registers 6

    .line 665
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$view$UserEventHandler$VirtualKeyEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    return v1

    .line 667
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result p1

    if-eqz p1, :cond_16

    return v1

    .line 671
    :cond_16
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isMessageDialogOpened()Z

    move-result p1

    if-eqz p1, :cond_1f

    return v1

    .line 675
    :cond_1f
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 676
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 677
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 678
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 679
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    return v0
.end method

.method private getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 2

    .line 1956
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method private isBurstShotEnabled()Z
    .registers 4

    .line 1988
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIsBurstShotEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1992
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1993
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 1997
    :cond_11
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 2001
    :cond_1c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p0, v0, :cond_29

    return v1

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method private isCameraKeyAssignedToBurstShot()Z
    .registers 2

    .line 2009
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    .line 2010
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isCurrentStorageWritable()Z
    .registers 3

    .line 1945
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1946
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 1947
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method private isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .registers 4

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 538
    :cond_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private isIdle()Z
    .registers 1

    .line 2033
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isPreviewLayout()Z

    move-result p0

    return p0
.end method

.method private isInternalStorageWritable()Z
    .registers 2

    .line 1941
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method private isManualFocus()Z
    .registers 2

    .line 1960
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isObjectTrackingEnabled()Z
    .registers 2

    .line 1964
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isPhotoSelfTimerEnabled()Z
    .registers 2

    .line 1983
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 1984
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-eq p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 1951
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    .line 1952
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p0, p1, :cond_11

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private isSuperSlowMode()Z
    .registers 2

    .line 2014
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 2015
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isTouchCaptureEnabled()Z
    .registers 3

    .line 1968
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    if-eqz v0, :cond_25

    .line 1970
    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_28

    goto :goto_25

    .line 1974
    :pswitch_19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-eqz p0, :cond_25

    return v1

    :pswitch_24
    return v1

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_19
    .end packed-switch
.end method

.method private notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V
    .registers 5

    .line 1875
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIsBurstShotEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1879
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1880
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 1884
    :cond_10
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_54

    .line 1885
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCameraKeyAssignedToBurstShot()Z

    move-result v0

    if-nez v0, :cond_3a

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->access$1900()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1886
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_79

    .line 1890
    :cond_3a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p1, v0, :cond_79

    .line 1891
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_79

    .line 1897
    :cond_54
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCameraKeyAssignedToBurstShot()Z

    move-result v0

    if-nez v0, :cond_64

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->access$1900()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    .line 1898
    :cond_64
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 1903
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_79
    :goto_79
    return-void
.end method

.method private notifyEventCaptureBurst()Z
    .registers 5

    .line 2075
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isInternalStorageWritable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 2076
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2077
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2078
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 2079
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2080
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    goto :goto_29

    :cond_27
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RECORD_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    :goto_29
    new-array v3, v1, [Ljava/lang/Object;

    .line 2079
    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2084
    :cond_2e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 2087
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    goto :goto_4a

    .line 2089
    :cond_3f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2090
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    :cond_4a
    :goto_4a
    return v1
.end method

.method private notifyEventReady()Z
    .registers 2

    const/4 v0, 0x0

    .line 2042
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady(Z)Z

    move-result p0

    return p0
.end method

.method private notifyEventReady(Z)Z
    .registers 4

    .line 2052
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2056
    :cond_a
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 2058
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result p1

    if-eqz p1, :cond_18

    return v1

    .line 2063
    :cond_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 2066
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2067
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-nez p0, :cond_2c

    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    goto :goto_2e

    :cond_2c
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RECORD_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    :goto_2e
    new-array v0, v1, [Ljava/lang/Object;

    .line 2066
    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private notifyShutterKeyEvent(Z)V
    .registers 5

    .line 1792
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isDisplayFlashScreenDisplayed()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1796
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 1798
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectShutterKeyAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p1

    .line 1800
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_50

    .line 1817
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_4e

    .line 1812
    :pswitch_26
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1813
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->NORMAL:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_4e

    .line 1807
    :pswitch_37
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1808
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_4e

    .line 1802
    :pswitch_43
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1803
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_43
        :pswitch_37
        :pswitch_26
    .end packed-switch
.end method

.method private resetKeyEventHandling()V
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->reset()V

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 512
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 514
    :cond_12
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2000(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method

.method private resetSideTouchEventHandling()V
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 528
    :cond_9
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2000(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method

.method private resetTouchEventHandling()V
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 521
    :cond_9
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2000(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method

.method private selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 3

    .line 1858
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 1859
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isInternalStorageWritable()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1860
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0

    .line 1864
    :cond_11
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 1865
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0

    .line 1868
    :cond_1a
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0
.end method

.method private selectDefaultVideoAction()Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 1

    .line 1846
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1847
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0

    .line 1849
    :cond_b
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0
.end method

.method private selectShutterKeyAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 3

    .line 1828
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1829
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isSuperSlowMode()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1831
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TRIGGER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0

    .line 1833
    :cond_1b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultVideoAction()Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0

    :cond_20
    if-eqz p1, :cond_2a

    .line 1836
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCameraKeyAssignedToBurstShot()Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    .line 1837
    :goto_2b
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0
.end method

.method private startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .registers 5

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 475
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    return v1

    .line 479
    :cond_8
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->FOCUS:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->access$1800()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 480
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->access$1900()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 484
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    return v1

    :cond_22
    return v2

    :cond_23
    return v2
.end method

.method private stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    if-nez v0, :cond_5

    return-void

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 504
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    :cond_10
    return-void
.end method


# virtual methods
.method public release()V
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->unregister()V

    return-void
.end method
