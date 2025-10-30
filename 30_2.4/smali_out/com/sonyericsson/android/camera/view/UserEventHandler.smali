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
        Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;,
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

.field private mIgnoreShutterActionOnFaultPreview:Z

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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 116
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 117
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 118
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 119
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 120
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 121
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    .line 122
    new-instance p2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-direct {p2, p3}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/android/camera/setting/UserSettings;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 123
    new-instance p2, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    const/4 p2, 0x0

    .line 124
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 125
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIsBurstShotEnabled:Z

    .line 126
    new-instance p3, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-direct {p3, p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    .line 127
    new-instance p3, Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    new-instance p4, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;

    invoke-direct {p4, p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    invoke-direct {p3, p1, p4}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchTouchCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetSideTouchEventHandling()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchSideTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetKeyEventHandling()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyDown(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventCaptureBurst()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCurrentStorageWritable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyUp(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isSuperSlowMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isTouchCaptureEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultVideoAction()Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canObjectTracking()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyLongPress(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isInternalStorageWritable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6100(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6500(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetTouchEventHandling()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method private canObjectTracking()Z
    .registers 3

    .line 2103
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isObjectTrackingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2107
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 2114
    :cond_1f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isManualFocus()Z

    move-result v0

    if-eqz v0, :cond_26

    return v1

    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method private canSelfTimerActivation()Z
    .registers 3

    .line 2204
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isPhotoSelfTimerEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2209
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isClearLayout()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private dispatchCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 6

    .line 691
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 692
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchCaptureAreaScaleReady() not accepted. requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 692
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 698
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 700
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaleReady()V

    :cond_3a
    return-void
.end method

.method private dispatchCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V
    .registers 6

    .line 705
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 p2, 0x1

    .line 706
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchCaptureAreaScaling() not accepted. requested:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    .line 706
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 712
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 714
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaling(F)V

    :cond_3a
    return-void
.end method

.method private dispatchClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 6

    .line 644
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 p2, 0x1

    .line 645
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchClick() not accepted. requested:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    .line 645
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 651
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 653
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doClick(Landroid/graphics/Point;)V

    return-void

    :cond_3b
    return-void
.end method

.method private dispatchKeyDown(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 954
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 958
    :cond_6
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoPowerOffWarningDisplayed()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 959
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 960
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 961
    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_32

    return v1

    .line 972
    :cond_22
    :pswitch_22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_2d

    .line 978
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyDownAfterTheSecondTime(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 980
    :cond_2d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyDownInTheFirstTime(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_32
    .packed-switch 0x3
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method private dispatchKeyDownAfterTheSecondTime(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 812
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 813
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyDownAfterTheSecondTime() not accepted. requested:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 813
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    .line 819
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 820
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 822
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_4c

    return v2

    :cond_4c
    return v1
.end method

.method private dispatchKeyDownInTheFirstTime(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 831
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 832
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyDownInTheFirstTime() startEventHandling() not accepted. requested:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 832
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    .line 838
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 839
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 841
    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_164

    return v1

    :pswitch_4d
    return v2

    .line 936
    :pswitch_4e
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 938
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_64

    const-string p1, "CLOSE_INITIAL_RESPONSE : start"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_64
    return v2

    .line 906
    :pswitch_65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isShortcutMenuOrModeSelectorOpened()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 907
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 908
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    return v2

    .line 912
    :cond_77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 913
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    .line 914
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 915
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 917
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeFaultPreviewIfShowing()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 918
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    return v2

    .line 921
    :cond_91
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady(Z)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 922
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 925
    :cond_9b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 926
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-nez v0, :cond_ae

    return v2

    .line 929
    :cond_ae
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 930
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    .line 932
    :cond_ba
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return v2

    .line 885
    :pswitch_be
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-nez v0, :cond_c7

    return v2

    .line 888
    :cond_c7
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIgnoreShutterActionOnFaultPreview:Z

    if-nez v0, :cond_f8

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeFaultPreviewIfShowing()Z

    move-result v0

    if-eqz v0, :cond_d4

    goto :goto_f8

    .line 891
    :cond_d4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, v1, :cond_e8

    .line 892
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isShortcutMenuOrModeSelectorOpened()Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 893
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    :cond_e7
    return v2

    .line 897
    :cond_e8
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 898
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    .line 899
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return v2

    :cond_f8
    :goto_f8
    return v2

    .line 862
    :pswitch_f9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isShortcutMenuOrModeSelectorOpened()Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 863
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 864
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    return v2

    .line 868
    :cond_10b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 869
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result p1

    .line 870
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 871
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIgnoreShutterActionOnFaultPreview:Z

    .line 872
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeFaultPreviewIfShowing()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 873
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIgnoreShutterActionOnFaultPreview:Z

    return v2

    .line 877
    :cond_125
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady(Z)Z

    move-result p1

    if-eqz p1, :cond_12f

    .line 878
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 881
    :cond_12f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clearCanceledSideTouchEventIcons()V

    return v2

    .line 843
    :pswitch_135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-nez v0, :cond_13e

    return v2

    .line 847
    :cond_13e
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 849
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeFaultPreviewIfShowing()Z

    .line 852
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_157

    move v1, v2

    .line 853
    :cond_157
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareKeyZooming(Z)Z
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2600(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)Z

    return v2

    .line 858
    :pswitch_15d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p1

    return p1

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_15d
        :pswitch_135
        :pswitch_f9
        :pswitch_be
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

    .line 1112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 1113
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyLongPress() not accepted. requested:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 1113
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    .line 1119
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 1120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnLongPress(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 1122
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_76

    goto :goto_74

    .line 1131
    :pswitch_4d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p1

    if-nez p1, :cond_56

    return v2

    .line 1135
    :cond_56
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne p1, v0, :cond_5d

    return v2

    .line 1140
    :cond_5d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventCaptureBurst()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 1141
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    goto :goto_74

    .line 1124
    :pswitch_68
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne p1, v0, :cond_74

    .line 1125
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

    .line 985
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 986
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyUp() not accepted. requested:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 986
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    .line 991
    :cond_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    .line 993
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 994
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnUp(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 999
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1000
    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1002
    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_152

    return v1

    :pswitch_5e
    return v2

    .line 1051
    :pswitch_5f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isHeadUpDisplayReady()Z

    move-result p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 1052
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isEvfPrepared()Z

    move-result p1

    if-nez p1, :cond_70

    goto :goto_7a

    .line 1056
    :cond_70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v2

    :cond_7a
    :goto_7a
    return v2

    .line 1061
    :pswitch_7b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSelfTimerCountDownViewShown()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 1062
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SELFTIMER_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v2

    .line 1065
    :cond_8d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 1066
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v2

    .line 1071
    :cond_9f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onHandleBackKeyTutorial()Z

    move-result p1

    if-eqz p1, :cond_a8

    return v2

    .line 1076
    :cond_a8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeAutoReviewIfShowing()Z

    move-result p1

    if-eqz p1, :cond_b1

    return v2

    .line 1079
    :cond_b1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeSettingDialogIfOpened()Z

    move-result p1

    if-eqz p1, :cond_ba

    return v2

    .line 1082
    :cond_ba
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeFaultPreviewIfShowing()Z

    move-result p1

    if-eqz p1, :cond_c3

    return v2

    .line 1088
    :cond_c3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->canApplicationBeFinished()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 1089
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    .line 1090
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    if-nez v0, :cond_df

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1091
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_de

    goto :goto_df

    :cond_de
    return v1

    .line 1092
    :cond_df
    :goto_df
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->startReturnModeAnimation()V

    return v2

    :cond_e5
    return v2

    .line 1029
    :pswitch_e6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p1

    if-nez p1, :cond_ef

    return v2

    .line 1033
    :cond_ef
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_102

    .line 1035
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1036
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onCaptureCancel()V

    return v2

    .line 1039
    :cond_102
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_107

    return v2

    .line 1043
    :cond_107
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_112

    return v2

    .line 1046
    :cond_112
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1047
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    return v2

    .line 1020
    :pswitch_11f
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_131

    .line 1022
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1023
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onCaptureCancel()V

    :cond_131
    return v2

    .line 1012
    :pswitch_132
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_144

    .line 1014
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1015
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onCaptureCancel()V

    :cond_144
    return v2

    .line 1005
    :pswitch_145
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    return v2

    .line 1009
    :pswitch_14b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p1

    return p1

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_14b
        :pswitch_145
        :pswitch_132
        :pswitch_11f
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

    .line 659
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 p2, 0x1

    .line 660
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchLongClick() not accepted. requested:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    .line 660
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 666
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 668
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doLongClick(Landroid/graphics/Point;)V

    :cond_3a
    return-void
.end method

.method private dispatchSideTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 719
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 723
    :cond_6
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoPowerOffWarningDisplayed()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 727
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 728
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getOrientation()I

    move-result v1

    .line 727
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->onSideTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method private dispatchTouchCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 6

    .line 673
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 675
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 676
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchCancel() not accepted. requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 676
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 682
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 684
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doCancel()V

    .line 687
    :cond_3f
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return-void
.end method

.method private dispatchTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .registers 6

    .line 612
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 613
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchDown() startEventHandling() not accepted. requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 613
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 619
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 621
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchDown()V

    :cond_3a
    return-void
.end method

.method private dispatchTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .registers 6

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 628
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 p2, 0x1

    .line 629
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchUp() not accepted. requested:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    .line 629
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 635
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 637
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchUp(Landroid/graphics/Point;)V

    .line 640
    :cond_3f
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return-void
.end method

.method private dispatchVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z
    .registers 6

    .line 732
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$view$UserEventHandler$VirtualKeyEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    return v1

    .line 734
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result p1

    if-eqz p1, :cond_16

    return v1

    .line 738
    :cond_16
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isMessageDialogOpened()Z

    move-result p1

    if-eqz p1, :cond_1f

    return v1

    .line 742
    :cond_1f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFaultPreviewShown()Z

    move-result p1

    if-eqz p1, :cond_28

    return v1

    .line 746
    :cond_28
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 747
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 748
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 749
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 750
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    return v0
.end method

.method private varargs dispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z
    .registers 4

    .line 758
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$view$UserEventHandler$ZoomEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_40

    goto :goto_3e

    .line 774
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performRatioDesignationZooming(F)Z
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2500(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z

    goto :goto_3e

    .line 769
    :pswitch_1b
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    .line 770
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    goto :goto_3e

    .line 765
    :pswitch_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performSlideZooming(F)Z
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2300(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z

    goto :goto_3e

    .line 760
    :pswitch_34
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    .line 761
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareSlideZooming()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    :goto_3e
    const/4 p1, 0x1

    return p1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_34
        :pswitch_26
        :pswitch_1b
        :pswitch_d
    .end packed-switch
.end method

.method private getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 3

    .line 2137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method private isBurstShotEnabled()Z
    .registers 4

    .line 2169
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIsBurstShotEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2173
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2174
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 2178
    :cond_11
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 2182
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne v0, v2, :cond_29

    return v1

    .line 2186
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isBokehEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    return v1

    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method private isCameraKeyAssignedToBurstShot()Z
    .registers 3

    .line 2194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    .line 2195
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCurrentStorageWritable()Z
    .registers 3

    .line 2126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2127
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 2128
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    return v0
.end method

.method private isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .registers 4

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 605
    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method private isIdle()Z
    .registers 2

    .line 2223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isPreviewLayout()Z

    move-result v0

    return v0
.end method

.method private isInternalStorageWritable()Z
    .registers 2

    .line 2122
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    return v0
.end method

.method private isManualFocus()Z
    .registers 3

    .line 2141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isObjectTrackingEnabled()Z
    .registers 3

    .line 2145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isPhotoSelfTimerEnabled()Z
    .registers 3

    .line 2164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 2165
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 3

    .line 2132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p1

    .line 2133
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p1, v0, :cond_11

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method private isSuperSlowMode()Z
    .registers 3

    .line 2199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 2200
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isTouchCaptureEnabled()Z
    .registers 3

    .line 2149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    if-eqz v0, :cond_25

    .line 2151
    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_28

    goto :goto_25

    .line 2155
    :pswitch_19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    :pswitch_24
    return v1

    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_19
    .end packed-switch
.end method

.method private notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V
    .registers 6

    .line 2048
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIsBurstShotEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 2052
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2053
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 2057
    :cond_10
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6a

    .line 2058
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCameraKeyAssignedToBurstShot()Z

    move-result v0

    if-nez v0, :cond_3a

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->access$2000()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2059
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_a6

    .line 2063
    :cond_3a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p1, v0, :cond_54

    .line 2064
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_a6

    .line 2067
    :cond_54
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isBokehEnabled()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 2068
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_a6

    .line 2074
    :cond_6a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCameraKeyAssignedToBurstShot()Z

    move-result v1

    if-nez v1, :cond_7a

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->access$2000()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a6

    .line 2075
    :cond_7a
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, p1, :cond_99

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, p1, :cond_83

    goto :goto_99

    .line 2079
    :cond_83
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 2084
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_a6

    .line 2076
    :cond_99
    :goto_99
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_WIDE_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_a6
    :goto_a6
    return-void
.end method

.method private notifyEventCaptureBurst()Z
    .registers 5

    .line 2265
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isInternalStorageWritable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 2266
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2267
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 2269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2270
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

    .line 2269
    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2274
    :cond_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    .line 2277
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    goto :goto_4a

    .line 2279
    :cond_3f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    :cond_4a
    :goto_4a
    return v1
.end method

.method private notifyEventReady()Z
    .registers 2

    const/4 v0, 0x0

    .line 2232
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady(Z)Z

    move-result v0

    return v0
.end method

.method private notifyEventReady(Z)Z
    .registers 4

    .line 2242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2246
    :cond_a
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 2248
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result p1

    if-eqz p1, :cond_18

    return v1

    .line 2253
    :cond_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 2256
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2257
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    goto :goto_2e

    :cond_2c
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RECORD_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    :goto_2e
    new-array v1, v1, [Ljava/lang/Object;

    .line 2256
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private notifyShutterKeyEvent(Z)V
    .registers 6

    .line 1969
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 1971
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectShutterKeyAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p1

    .line 1973
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_46

    .line 1990
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_45

    .line 1985
    :pswitch_1d
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1986
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->NORMAL:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    aput-object v3, v2, v1

    invoke-virtual {v0, p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_45

    .line 1980
    :pswitch_2e
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1981
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_45

    .line 1975
    :pswitch_3a
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1976
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2e
        :pswitch_1d
    .end packed-switch
.end method

.method private resetKeyEventHandling()V
    .registers 2

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->reset()V

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 579
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 581
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method

.method private resetSideTouchEventHandling()V
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 595
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method

.method private resetTouchEventHandling()V
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 588
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method

.method private selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 3

    .line 2031
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 2032
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isInternalStorageWritable()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2033
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p1

    .line 2037
    :cond_11
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2038
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p1

    .line 2041
    :cond_1a
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p1
.end method

.method private selectDefaultVideoAction()Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 2

    .line 2019
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2020
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object v0

    .line 2022
    :cond_b
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object v0
.end method

.method private selectShutterKeyAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .registers 3

    .line 2001
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2002
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isSuperSlowMode()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2004
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TRIGGER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p1

    .line 2006
    :cond_1b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultVideoAction()Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p1

    return-object p1

    :cond_20
    if-eqz p1, :cond_2a

    .line 2009
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCameraKeyAssignedToBurstShot()Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    .line 2010
    :goto_2b
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p1

    return-object p1
.end method

.method private startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .registers 5

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 542
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    return v1

    .line 546
    :cond_8
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->FOCUS:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->access$1900()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 547
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->access$2000()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 551
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    return v1

    :cond_22
    return v2

    :cond_23
    return v2
.end method

.method private stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    if-nez v0, :cond_5

    return-void

    .line 570
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 571
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    :cond_e
    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->unregister()V

    return-void
.end method
