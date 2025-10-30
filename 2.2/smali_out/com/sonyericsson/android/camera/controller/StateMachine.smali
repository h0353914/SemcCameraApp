.class public Lcom/sonyericsson/android/camera/controller/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitForHighFrameRateVideoRecordingDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCropping;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$State;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;
    }
.end annotation


# static fields
.field private static final COLOR_VALUE_MAX:I = 0xff

.field private static final RESUME_TIMEOUT:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "StateMachine"

.field private static final TERMINATE_WAIT_TIME:I = 0xfa0

.field private static final THREAD_NAME:Ljava/lang/String; = "RequestStore"

.field private static final USE_PROGRESS_ON_PHOTO_THUMBNAIL:Z = false

.field private static final USE_PROGRESS_ON_VIDEO_THUMBNAIL:Z = false


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

.field private mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

.field private final mExecService:Ljava/util/concurrent/ExecutorService;

.field private final mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

.field private final mGestureShutterHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

.field private final mHandler:Landroid/os/Handler;

.field private mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

.field private mIsPausedAudioPlayback:Z

.field mIsSceneRecognitionValid:Z

.field private mIsSdPermissionFinished:Z

.field private mIsSemiAutoEnabled:Z

.field private mIsVideoRecording:Z

.field private mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field private final mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

.field private mLastSmileCaptureTakenTime:J

.field private mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field private mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field private final mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

.field private mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

.field private final mOnStateChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

.field private final mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

.field private final mPendingTaskListForStandby:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoSavingRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

.field private mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

.field private final mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

.field private final mSettingController:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

.field private mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private mStorageReadyStateListener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

.field private mStorageStateListener:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

.field private final mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

.field private mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

.field private final mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    .registers 6

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 231
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 234
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    const-string v1, "RequestStore"

    .line 238
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 241
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    .line 258
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 261
    iput v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    .line 264
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 266
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    .line 268
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPendingTaskListForStandby:Ljava/util/List;

    .line 283
    new-instance v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    .line 295
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    .line 297
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorageStateListener:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    .line 299
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSdPermissionFinished:Z

    .line 429
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    .line 541
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$3;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutterHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    .line 905
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    .line 932
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mSettingController:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    .line 2669
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$4;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    .line 5306
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    .line 7847
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$5;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    .line 7951
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$6;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$6;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    .line 8897
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsPausedAudioPlayback:Z

    .line 9020
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    .line 917
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 918
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 920
    new-instance p2, Lcom/sonyericsson/android/camera/controller/GestureShutter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutterHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    invoke-direct {p2, v1, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    .line 922
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 923
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mSettingController:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    invoke-interface {p2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->register(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    .line 924
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    .line 925
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorageReadyStateListener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

    if-nez p1, :cond_c1

    .line 926
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorageReadyStateListener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

    .line 927
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorageReadyStateListener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

    invoke-interface {p1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    :cond_c1
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$10200(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->stopPlaySound()V

    return-void
.end method

.method static synthetic access$10300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->pauseAudioPlaybackForRecord()V

    return-void
.end method

.method static synthetic access$10500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    return-object p0
.end method

.method static synthetic access$10502(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;)Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onOneShotStoreCompleted(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doCapture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->playShutterSound()V

    return-void
.end method

.method static synthetic access$11202(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;)Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    return-object p1
.end method

.method static synthetic access$11300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doHandleRecordingError()V

    return-void
.end method

.method static synthetic access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V

    return-void
.end method

.method static synthetic access$11502(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z
    .registers 2

    .line 200
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    return p1
.end method

.method static synthetic access$11600(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 1

    .line 200
    iget p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    return p0
.end method

.method static synthetic access$11608(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 3

    .line 200
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    return v0
.end method

.method static synthetic access$11700(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->pauseVideoRecording([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendVideoChapterThumbnailToViewFinder()V

    return-void
.end method

.method static synthetic access$12100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doPauseRecording()V

    return-void
.end method

.method static synthetic access$12300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doCaptureWhileRecording()V

    return-void
.end method

.method static synthetic access$12400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestVideoSmileCapture()V

    return-void
.end method

.method static synthetic access$12600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doResumeRecording()V

    return-void
.end method

.method static synthetic access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object p0
.end method

.method static synthetic access$12800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 3

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchCamera(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 3

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestChangeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchSceneRecognition(Z)V

    return-void
.end method

.method static synthetic access$13000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/LastSettings;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->removeChangeCameraModeTask()V

    return-void
.end method

.method static synthetic access$13200(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->removeStartRecordingTask()V

    return-void
.end method

.method static synthetic access$13400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->cleanupPendingState()V

    return-void
.end method

.method static synthetic access$13600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->storeSavingRequestList()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V

    return-void
.end method

.method static synthetic access$14400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStartRecording(Z)V

    return-void
.end method

.method static synthetic access$14500(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateRecordingProgress(I)V

    return-void
.end method

.method static synthetic access$14600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isCurrentStorageExternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestStoreVideo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    return-void
.end method

.method static synthetic access$14900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$15100(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->storePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static synthetic access$15200(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$15300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->calculateRemainStorage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isLazyInitializationRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setIsSceneRecognitionValid(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->showBlackScreen()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 3

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchVideoFaceDetection()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/GestureShutter;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSemiAutoEnabled:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z
    .registers 2

    .line 200
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSemiAutoEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTouchAeEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onZoomChange(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    .registers 3

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->cancelAutoFocus(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onPredictiveCaptureStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeToStandby()V

    return-void
.end method

.method static synthetic access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;
    .registers 3

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->hasRemainSavingRequest()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    .registers 3

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->startFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorageStateListener:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->initGeoTagManager()V

    return-void
.end method

.method static synthetic access$5900(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->initSideSenseSetting()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static synthetic access$6202(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z
    .registers 2

    .line 200
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsPausedAudioPlayback:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchViewEvent()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getSensorOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifySceneRecognitionDisabled()V

    return-void
.end method

.method static synthetic access$6800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->removeDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doZoomChangeAngle()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkSaveDestinationCanBeChange(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->startAutoFocus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7200([Ljava/lang/Object;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 200
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getEventParam([Ljava/lang/Object;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkBurstConditions(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7700(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestPhotoSmileCapture()V

    return-void
.end method

.method static synthetic access$7800(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Point;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doChangeSelectedFace(Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Rect;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStartObjectTracking(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSdPermissionFinished:Z

    return p0
.end method

.method static synthetic access$802(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z
    .registers 2

    .line 200
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSdPermissionFinished:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchCamera(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateAmberBlueColor(F)V

    return-void
.end method

.method static synthetic access$8300(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateBrightness(F)V

    return-void
.end method

.method static synthetic access$8500(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageFull(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$8600(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifyCoolingUltraLow(Z)V

    return-void
.end method

.method static synthetic access$8700(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateFusionModeSetting(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkThermalWarning()V

    return-void
.end method

.method static synthetic access$9100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPendingTaskListForStandby:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isEnoughStorageSizeAvailableForOneShotVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9300(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createVideoSavingRequest(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result p0

    return p0
.end method

.method private calculateRemainStorage()V
    .registers 6

    .line 8614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_39

    .line 8615
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_39

    .line 8621
    :cond_13
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 8622
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getRemainStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v1

    const-wide/32 v3, 0xf000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_38

    .line 8625
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 8626
    invoke-interface {v4, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    aput-object v0, v2, v3

    .line 8625
    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_38
    return-void

    :cond_39
    :goto_39
    return-void
.end method

.method private canInvokePhotoSelfTimer()Z
    .registers 2

    .line 8785
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isLazyInitializationRunning()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isPhotoSelfTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 8786
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private cancelAutoFocus(Z)V
    .registers 3

    if-eqz p1, :cond_7

    .line 7461
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusModeAndCommit()V

    .line 7463
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashRequired(Z)V

    .line 7464
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/16 v0, 0xff

    invoke-interface {p1, v0, v0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashColor(III)V

    .line 7465
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelAutoFocus()V

    return-void
.end method

.method private changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 9

    .line 7300
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7301
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7300
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7303
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7305
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V

    .line 7307
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->resetTempParameters()V

    .line 7311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 7314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7315
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 7316
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v5

    .line 7314
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 7318
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_84

    .line 7319
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 7321
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7323
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    .line 7325
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a2

    .line 7328
    :cond_84
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 7329
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {p2, v0, p1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    .line 7331
    new-instance p2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-direct {p2, p0, p1, v0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7332
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyOnEvfPrepared()V

    :goto_a2
    return-void
.end method

.method private varargs declared-synchronized changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    .registers 7

    monitor-enter p0

    .line 7152
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7152
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7156
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->exit()V

    .line 7159
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 7162
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;

    .line 7163
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;->onStateChanged(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V

    goto :goto_46

    .line 7167
    :cond_5c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->entry()V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    .line 7168
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    .line 7151
    monitor-exit p0

    throw p1
.end method

.method private changeToStandby()V
    .registers 4

    .line 8831
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 8832
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 8834
    :cond_12
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_1d
    return-void
.end method

.method private checkBurstConditions(Z)Z
    .registers 6

    .line 9393
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 9397
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result v0

    if-lez v0, :cond_13

    return v1

    .line 9406
    :cond_13
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2c

    if-nez p1, :cond_2c

    .line 9408
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return v1

    :cond_2c
    return v3
.end method

.method private checkCallback(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .registers 2

    .line 8253
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    return-void
.end method

.method private checkSaveDestinationCanBeChange(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 3

    .line 9240
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, v0, :cond_7

    .line 9241
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    goto :goto_d

    .line 9242
    :cond_7
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, v0, :cond_12

    .line 9243
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 9248
    :goto_d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private checkThermalWarning()V
    .registers 3

    .line 9131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_9

    return-void

    .line 9136
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 9137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 9138
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_33

    .line 9139
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningExtraState()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 9140
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private cleanupPendingState()V
    .registers 3

    .line 9206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    return-void
.end method

.method private createTakenStatusCommon(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
    .registers 21

    move-object v0, p0

    .line 8001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 8004
    invoke-direct {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getOrientation()I

    move-result v3

    .line 8008
    iget-object v4, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 8009
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->areCallerGeoPermissionsGranted(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v4, 0x0

    goto :goto_26

    .line 8010
    :cond_1c
    :goto_1c
    iget-object v4, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    :goto_26
    const/4 v5, 0x0

    .line 8016
    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_5e

    move v12, v5

    goto :goto_44

    .line 8024
    :pswitch_34
    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldAddToMediaStore()Z

    move-result v0

    goto :goto_43

    .line 8021
    :pswitch_3b
    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldAddToMediaStore()Z

    move-result v0

    goto :goto_43

    :pswitch_42
    const/4 v0, 0x1

    :goto_43
    move v12, v0

    .line 8031
    :goto_44
    new-instance v14, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 8035
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 8036
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    const-string v11, ""

    const/4 v13, 0x0

    move-object v0, v14

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v14

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3b
        :pswitch_34
    .end packed-switch
.end method

.method private createVideoSavingRequest(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 14

    .line 8099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 8101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v2, :cond_26

    .line 8102
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 8103
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v1, v2, :cond_26

    .line 8104
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 8114
    :cond_26
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v1

    .line 8116
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 8117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageMaximumFileSize(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v4

    .line 8116
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 8118
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v1

    int-to-long v4, v1

    .line 8120
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getMime()Ljava/lang/String;

    move-result-object v9

    .line 8121
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getExtension()Ljava/lang/String;

    move-result-object v10

    const/4 p1, 0x0

    .line 8124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v6, :cond_68

    .line 8125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8128
    :cond_68
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 8131
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v8

    const/4 v11, 0x0

    move-object v6, p0

    .line 8129
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v0

    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;-><init>(JJ)V

    invoke-direct {v1, v0, v6}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V

    .line 8138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 8139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setExtraOutput(Landroid/net/Uri;)V

    .line 8142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setSlowMotion(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 8143
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setOneShot(Z)V

    .line 8144
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    return-object v1
.end method

.method private doCapture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 6

    .line 7469
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 7470
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz p1, :cond_31

    .line 7472
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->applySavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 7474
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showDisplayFlashScreen()V

    .line 7477
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 7479
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7481
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7479
    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7483
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchCaptureEvents()V

    :cond_31
    return-void
.end method

.method private doCaptureWhileRecording()V
    .registers 4

    .line 7498
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 7500
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_12

    .line 7501
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 7503
    :cond_12
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onShutterDone(Z)V

    .line 7506
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->captureWhileRecording(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    :cond_1d
    return-void
.end method

.method private doChangeSelectedFace(Landroid/graphics/Point;)V
    .registers 6

    .line 7419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 7422
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_BY_SELECT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTION_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7430
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setSelectedFacePosition(II)V

    .line 7433
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTouchAeEnabled()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 7434
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7435
    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 7434
    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    :cond_37
    return-void
.end method

.method private doFastestCapture()V
    .registers 5

    .line 7344
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 7346
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void

    .line 7350
    :cond_17
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->pauseAudioPlaybackForCapture()V

    .line 7352
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_80

    .line 7392
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Un-Expected state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 7393
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7374
    :pswitch_48
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_7e

    .line 7358
    :pswitch_53
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_7e

    .line 7380
    :pswitch_5e
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_7e

    .line 7369
    :pswitch_69
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_7e

    .line 7364
    :pswitch_74
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_7e
    :pswitch_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_74
        :pswitch_69
        :pswitch_5e
        :pswitch_53
        :pswitch_7e
        :pswitch_7e
        :pswitch_48
    .end packed-switch
.end method

.method private doHandleRecordingError()V
    .registers 5

    .line 7843
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_UNKNOWN:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 7844
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doPauseRecording()V
    .registers 3

    .line 7831
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->pauseRecording()V

    .line 7832
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doResumeRecording()V
    .registers 3

    .line 7837
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resumeRecording()V

    .line 7838
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doStartObjectTracking(Landroid/graphics/Rect;)V
    .registers 3

    .line 8912
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8914
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->start(Landroid/graphics/Rect;)V

    :cond_f
    return-void
.end method

.method private doStartRecording(Z)V
    .registers 15

    .line 7512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_9

    .line 7513
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 7516
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 7517
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v2, :cond_2f

    .line 7518
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 7519
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v1, v2, :cond_2f

    .line 7520
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 7522
    :cond_2f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 7523
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 7524
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->setOneShot(Z)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v7

    .line 7527
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createVideoSavingRequest(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 7531
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getOrientation()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setRecordingOrientation(I)V

    .line 7534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_16d

    .line 7538
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v2, :cond_75

    :cond_73
    move v0, v10

    goto :goto_82

    .line 7541
    :cond_75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v0, v2, :cond_73

    move v0, v9

    :goto_82
    if-nez v0, :cond_8f

    .line 7544
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->isLimitForSizeOrDuration()Z

    move-result v0

    if-eqz v0, :cond_8d

    goto :goto_8f

    :cond_8d
    move v0, v10

    goto :goto_90

    :cond_8f
    :goto_8f
    move v0, v9

    :goto_90
    if-nez v0, :cond_a0

    .line 7546
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7547
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v2, v3, :cond_a0

    move v2, v9

    goto :goto_a1

    :cond_a0
    move v2, v10

    .line 7550
    :goto_a1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v11, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v6, v11

    .line 7552
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 7553
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v0, 0x2

    .line 7554
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v1, v5, v0

    .line 7550
    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7561
    :try_start_c8
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_188

    .line 7569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    goto :goto_ec

    .line 7564
    :pswitch_e0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 7565
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->updateRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Z)V

    goto :goto_105

    .line 7570
    :goto_ec
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/Storage;->createNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    move-result-object v8

    .line 7572
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    .line 7575
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v6

    .line 7573
    invoke-virtual/range {v2 .. v8}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;ZLcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V

    .line 7581
    :goto_105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startRecording()V

    .line 7583
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 7584
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v9, [Ljava/lang/Object;

    .line 7586
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    .line 7584
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7590
    :cond_11f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateDateTaken(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 7593
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;->setSavingRequestBuilder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    :try_end_12b
    .catch Ljava/lang/RuntimeException; {:try_start_c8 .. :try_end_12b} :catch_12c

    goto :goto_16e

    :catch_12c
    move-exception v0

    const-string v1, "Start recording failed."

    .line 7599
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_13b

    .line 7601
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 7604
    :cond_13b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isCurrentStorageExternal()Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 7605
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_15d

    .line 7606
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_START_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 7607
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v0, v10, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void

    .line 7612
    :cond_15d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 7613
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCameraNotAvailableEvent()V

    :cond_16d
    move v9, v10

    .line 7617
    :goto_16e
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setRecordBySideSense(Z)V

    if-eqz v9, :cond_17b

    .line 7620
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/controller/StateMachine;->transitionToRecordingState(Z)V

    goto :goto_186

    .line 7622
    :cond_17b
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v0, v10, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_186
    return-void

    nop

    :pswitch_data_188
    .packed-switch 0x2
        :pswitch_e0
        :pswitch_e0
    .end packed-switch
.end method

.method private doStopObjectTracking()V
    .registers 3

    .line 8919
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 8921
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private doStopRecording(Z)V
    .registers 6

    .line 7797
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 7799
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_e

    .line 7800
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 7803
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopRecording(Z)Ljava/util/Optional;

    move-result-object p1

    .line 7804
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 7806
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setOrientation(I)V

    .line 7808
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings()V

    .line 7809
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 7811
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 7813
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentRecordingStopOperation()Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    move-result-object v3

    .line 7814
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    .line 7811
    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V

    .line 7818
    :cond_4f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onCaptureDone()V

    .line 7821
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7822
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 7821
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 7823
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 7824
    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setRequestId(I)V

    .line 7827
    :cond_6f
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private doZoomChangeAngle()V
    .registers 3

    .line 8476
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCropping;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCropping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V
    .registers 10

    .line 8437
    new-instance v6, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;-><init>(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Landroid/graphics/Bitmap;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 8439
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->finishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;)V

    return-void
.end method

.method private getCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 8713
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_14

    .line 8723
    :pswitch_b
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    .line 8721
    :pswitch_e
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    .line 8717
    :pswitch_11
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private getCurrentRecordingStopOperation()Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .registers 2

    .line 7787
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAlreadyHighTemperature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7788
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0

    .line 7789
    :cond_b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAlreadyBcl()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 7790
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0

    .line 7792
    :cond_16
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0
.end method

.method private getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 3

    .line 9253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9254
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getStorageTypeForOneshot()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    return-object p0

    .line 9256
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9257
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-nez v0, :cond_34

    .line 9259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 9260
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 9263
    :cond_34
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    return-object p0
.end method

.method private static getEventParam([Ljava/lang/Object;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_10

    .line 9461
    array-length v0, p0

    if-le v0, p1, :cond_10

    aget-object v0, p0, p1

    .line 9463
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 9464
    aget-object p0, p0, p1

    return-object p0

    :cond_10
    if-nez p0, :cond_1c

    const-string p0, "Specified parameter is empty."

    .line 9467
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3e

    .line 9469
    :cond_1c
    array-length v0, p0

    if-gt v0, p1, :cond_29

    const-string p0, "Specified parameter count is too short"

    .line 9470
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3e

    .line 9471
    :cond_29
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    const-string p0, "Specified parameter type is missmatch."

    .line 9472
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-object p3
.end method

.method private getOrientation()I
    .registers 6

    .line 7962
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSensorOrientationDegree()I

    move-result v0

    .line 7963
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v0

    .line 7965
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object p0

    .line 7967
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5a

    const/4 v1, 0x1

    .line 7968
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ORIENTATION:sensorOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 7969
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ORIENTATION:cameraOrientation"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    .line 7970
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->orientationToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 7969
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7971
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION:cameraFacing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7979
    :cond_5a
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7c

    .line 7987
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    goto :goto_7a

    .line 7984
    :pswitch_6d
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/lit16 p0, p0, 0x168

    sub-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    goto :goto_7a

    .line 7981
    :pswitch_75
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    :goto_7a
    return p0

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6d
    .end packed-switch
.end method

.method private getPreviewRect()Landroid/graphics/Rect;
    .registers 4

    .line 8597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 8599
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 8600
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 8601
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2d

    .line 8603
    :cond_1f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 8604
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 8606
    :goto_2d
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 8608
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreviewRect(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 8607
    invoke-virtual {v2, p0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getSensorOrientation()I
    .registers 5

    .line 8637
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLastDetectedOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object p0

    .line 8639
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_d

    move p0, v1

    goto :goto_e

    :cond_d
    const/4 p0, 0x2

    .line 8645
    :goto_e
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2b

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrientation: sensor orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2b
    return p0
.end method

.method private hasRemainSavingRequest()Z
    .registers 1

    .line 9159
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainPrevSavingRequestCount()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private initGeoTagManager()V
    .registers 4

    .line 9168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 9172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeotagPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 9173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 9174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setIsGeotagPermissionGranted(Z)V

    .line 9177
    :cond_25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isAllowToUseLocation()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z

    .line 9178
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    :cond_3f
    return-void
.end method

.method private initSideSenseSetting()V
    .registers 2

    const/4 v0, 0x1

    .line 9183
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 9184
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_e
    return-void
.end method

.method private isAllSnapshotCompleted()Z
    .registers 1

    .line 733
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isBurstByCameraKeyEnabled()Z
    .registers 2

    .line 8776
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isCurrentStorageExternal()Z
    .registers 2

    .line 9267
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    .line 9268
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isEnoughStorageSizeAvailableForOneShotVideo()Z
    .registers 11

    .line 8998
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 9002
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 9003
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 9004
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v3, v4, :cond_3a

    .line 9005
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 9006
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v3, v4, :cond_3a

    .line 9007
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 9009
    :cond_3a
    new-instance v3, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    .line 9010
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->setOneShot(Z)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    .line 9011
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    invoke-interface {v2, v3, p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object p0

    .line 9012
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_6d

    .line 9013
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_6b

    goto :goto_6c

    :cond_6b
    move v1, v3

    :goto_6c
    return v1

    .line 9014
    :cond_6d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_87

    .line 9015
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    cmp-long p0, v4, v6

    if-ltz p0, :cond_85

    goto :goto_86

    :cond_85
    move v1, v3

    :goto_86
    return v1

    :cond_87
    return v1
.end method

.method private isFusionMonitoringNeeded()Z
    .registers 6

    .line 9377
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    move-result-object p0

    .line 9378
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 9379
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-eq v3, v4, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    return v1
.end method

.method private isLazyInitializationRunning()Z
    .registers 1

    .line 8781
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isLazyInitializationRunning()Z

    move-result p0

    return p0
.end method

.method private isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .registers 4

    .line 9351
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_18

    .line 9353
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getCaptureIdForPredictiveCapture()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_f

    return v1

    .line 9358
    :cond_f
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getSomcType()I

    move-result p0

    const/16 p1, 0x64

    if-ne p0, p1, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private isPhotoSelfTimerEnabled()Z
    .registers 2

    .line 8772
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isSmoothZoomEnabled()Z
    .registers 1

    .line 8764
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method private isStorageFull(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 9223
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    .line 9224
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2
    .param p1    # Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 9215
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 9216
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isTouchAeEnabled()Z
    .registers 4

    .line 7398
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTouchAeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 7402
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    if-ne v0, v2, :cond_19

    return v1

    .line 7406
    :cond_19
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v2, :cond_31

    .line 7407
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v2, :cond_31

    .line 7408
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v2, :cond_3f

    .line 7409
    :cond_31
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    if-ne p0, v0, :cond_3f

    const/4 p0, 0x1

    return p0

    :cond_3f
    return v1
.end method

.method private isVideo()Z
    .registers 2

    .line 590
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private moveToCameraNotAvailable()V
    .registers 3

    const-string v0, ".startFastCapture():[Camera not available]"

    .line 8651
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 8653
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 8655
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCameraNotAvailableEvent()V

    return-void
.end method

.method private notifyCoolingUltraLow(Z)V
    .registers 4

    .line 8851
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_9

    .line 8852
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onNotifyCoolingUltraLow(Z)V

    .line 8855
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setUltraLowPower()V

    .line 8856
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 8857
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isObjectTrackingRunning()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 8858
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8862
    :cond_2c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 8864
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handlePreviewStopped()V

    return-void
.end method

.method private varargs notifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;
    .registers 5

    .line 2244
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 2245
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method private notifySceneRecognitionDisabled()V
    .registers 5

    .line 8967
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;-><init>()V

    const/4 v1, 0x0

    .line 8968
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->getSceneMode(I)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 8971
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->getCondition(I)Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 8973
    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->isMacroRange:Z

    .line 8974
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-interface {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private onOneShotStoreCompleted(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 3

    .line 8427
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_c

    .line 8429
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestLoadStoredPicture(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x0

    .line 8432
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V

    :goto_10
    return-void
.end method

.method private onPredictiveCaptureStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 4

    .line 8666
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BURST_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 8667
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    if-eqz v0, :cond_1e

    .line 8668
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 8669
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureTime()Ljava/lang/String;

    move-result-object v1

    .line 8668
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 8670
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 8674
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.PREDICTIVE_CAPTURE_SAVE_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.android.camera.extra.PREDICTIVE_CAPTURE_DIRECTORY_PATH"

    .line 8676
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    .line 8678
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 8677
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getPredictiveCaptureGroupIdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8676
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8679
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private onZoomChange(I)V
    .registers 5

    .line 8480
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8487
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 8489
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 8491
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 8489
    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method private pauseAudioPlaybackForCapture()V
    .registers 2

    .line 8875
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsPausedAudioPlayback:Z

    if-eqz v0, :cond_5

    return-void

    .line 8878
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8879
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->pauseAudioPlayback()V

    const/4 v0, 0x1

    .line 8880
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsPausedAudioPlayback:Z

    :cond_13
    return-void
.end method

.method private pauseAudioPlaybackForRecord()V
    .registers 2

    .line 8889
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->pauseAudioPlayback()V

    const/4 v0, 0x1

    .line 8890
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsPausedAudioPlayback:Z

    return-void
.end method

.method private varargs pauseVideoRecording([Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 9150
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V

    .line 9151
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private playShutterSound()V
    .registers 2

    .line 8900
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8901
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playShutterSound(I)V

    :cond_13
    return-void
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method private prepareZoom()V
    .registers 1

    return-void
.end method

.method private removeChangeCameraModeTask()V
    .registers 2

    .line 8530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;)V
    .registers 2

    .line 2250
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeStartRecordingTask()V
    .registers 2

    .line 7748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestChangeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 8

    .line 7670
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    if-ne v0, p1, :cond_2a

    .line 7671
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_29

    .line 7672
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The specified mode is already set, mode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7674
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    return-void

    .line 7678
    :cond_2a
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_72

    :pswitch_35
    goto :goto_70

    .line 7687
    :pswitch_36
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 7690
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7691
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 7692
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v4

    .line 7690
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 7694
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 7695
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFusionMonitoring()V

    .line 7696
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    check-cast v4, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7701
    :cond_6d
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    :goto_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method private requestLoadStoredPicture(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 6

    .line 505
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", semcType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    .line 507
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getSomcType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", OneShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 505
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 508
    :cond_3c
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$2;

    invoke-direct {v3, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$2;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestLoad(Landroid/net/Uri;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    return-void
.end method

.method private requestPhotoSmileCapture()V
    .registers 3

    .line 8265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 8266
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIntValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestSmileCapture(I)V

    return-void
.end method

.method private requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 9

    .line 1582
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v0, v1, :cond_d

    if-eqz p2, :cond_d

    return-void

    .line 1589
    :cond_d
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    .line 1590
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_2c

    .line 1591
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1592
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_58

    .line 1594
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1595
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1596
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1597
    invoke-interface {v3, p1, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v3, v4, :cond_58

    move v3, v1

    goto :goto_59

    .line 1600
    :cond_4a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 1601
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    :cond_58
    :goto_58
    move v3, v2

    .line 1604
    :goto_59
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v4, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreviewRect(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 1606
    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;

    move-result-object p1

    .line 1608
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Landroid/graphics/Rect;

    .line 1609
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v4, v2, v2, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    .line 1610
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    .line 1608
    invoke-interface {p0, v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_84
    return-void
.end method

.method private requestSmileCapture(I)V
    .registers 6

    .line 8282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSmileCaptureTakenTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 8286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getSelectedFaceSmileScore()I

    move-result v0

    if-ge p1, v0, :cond_22

    .line 8287
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->sendVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z

    .line 8288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSmileCaptureTakenTime:J

    :cond_22
    return-void
.end method

.method private declared-synchronized requestStorePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 4

    monitor-enter p0

    .line 8384
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_15

    .line 8385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 8389
    :cond_15
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 8391
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 8392
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    .line 8383
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized requestStoreVideo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 6

    monitor-enter p0

    if-nez p1, :cond_5

    .line 8395
    monitor-exit p0

    return-void

    .line 8397
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 8398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 8406
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8407
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 8406
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 8408
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getRequestId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_33

    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_33

    .line 8410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setRequestId(I)V

    .line 8414
    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setDateTaken(J)V

    .line 8416
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object p1

    .line 8419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-interface {v0, p1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z

    .line 8422
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_52

    .line 8423
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    .line 8394
    monitor-exit p0

    throw p1
.end method

.method private requestVideoSmileCapture()V
    .registers 3

    .line 8270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 8271
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getIntValue()I

    move-result v0

    .line 8270
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestSmileCapture(I)V

    return-void
.end method

.method private sendResearchCaptureEvents()V
    .registers 3

    .line 7488
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings()V

    .line 7489
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 7490
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setOrientation(I)V

    .line 7492
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 7493
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeCaptureStart()V

    return-void
.end method

.method private sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 8839
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 8840
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearTemporarySettingValues()V

    .line 8841
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onPause(Z)V

    .line 8842
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method private sendResearchViewEvent()V
    .registers 3

    .line 8984
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 8985
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v0

    .line 8987
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-ne v0, v1, :cond_10

    .line 8988
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 8990
    :cond_10
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method private sendVideoChapterThumbnailToViewFinder()V
    .registers 6

    .line 5309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    if-eqz v0, :cond_2d

    .line 5310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    if-eqz v0, :cond_1b

    .line 5312
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;->setOrientation(I)V

    .line 5315
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ADD_VIDEO_CHAPTER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5318
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    :cond_2d
    return-void
.end method

.method private setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 8758
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 8759
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method private setIsSceneRecognitionValid(Z)V
    .registers 2

    .line 8943
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    return-void
.end method

.method private shouldPlayShutterSound()Z
    .registers 3

    .line 8906
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 8907
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 8908
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p0, v0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private showBlackScreen()V
    .registers 3

    .line 7125
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private startAutoFocus()Z
    .registers 2

    .line 7445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_2a

    .line 7446
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_1b

    .line 7450
    :cond_17
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->pauseAudioPlaybackForCapture()V

    goto :goto_2a

    .line 7447
    :cond_1b
    :goto_1b
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_28

    const-string p0, "Storage is not ready"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_28
    const/4 p0, 0x0

    return p0

    .line 7453
    :cond_2a
    :goto_2a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->autoFocus()V

    const/4 p0, 0x1

    return p0
.end method

.method private startFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    .registers 9

    .line 7174
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 7175
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 7177
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 7178
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v3

    .line 7175
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 7179
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v2

    .line 7181
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7182
    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v4

    .line 7181
    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->init(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7184
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    .line 7185
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 7186
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 7184
    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 7187
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    .line 7188
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 7189
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 7187
    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    .line 7192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestPostLazyInitializationTaskExecute()V

    .line 7195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitSetupAllReady()Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "Setup failed"

    .line 7197
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 7200
    :cond_6c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTutorialNeededToBeShownForCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 7201
    new-instance p2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v2, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_a7

    .line 7203
    :cond_8c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 7204
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_a7

    .line 7206
    :cond_9d
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    invoke-direct {v0, p0, v2, v2, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7211
    :goto_a7
    sget-object p2, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_dc

    goto :goto_db

    .line 7228
    :pswitch_b3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "StateMachine.Resume:[FastCapture OFF]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7217
    :pswitch_bb
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne p1, p2, :cond_db

    .line 7219
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result p1

    if-nez p1, :cond_d2

    .line 7220
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doFastestCapture()V

    .line 7222
    :cond_d2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearExtraOperation()V

    :cond_db
    :goto_db
    :pswitch_db
    return-void

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_db
        :pswitch_bb
        :pswitch_b3
    .end packed-switch
.end method

.method private stopPlaySound()V
    .registers 1

    .line 8183
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->stopPlayingSound()V

    return-void
.end method

.method private storePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 4

    .line 8295
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object p1

    .line 8298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->entrySuppressor(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$8800(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 8300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-interface {v0, p1, v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z

    return-void
.end method

.method private storeSavingRequestList()V
    .registers 8

    .line 7130
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke mPhotoSavingRequestList.size():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    .line 7131
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 7130
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7133
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 7135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 7137
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v4, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 7140
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_67

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storePicture() requestId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7141
    :cond_67
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object v3

    .line 7142
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-interface {v4, v3, v5, v6}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z

    goto :goto_32

    .line 7147
    :cond_77
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_7c
    return-void
.end method

.method private switchCamera(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 10

    .line 7270
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke requestMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7272
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7273
    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 7274
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v6

    .line 7272
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 7279
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 7281
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 7282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFusionMonitoring()V

    .line 7283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    check-cast v5, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7286
    :cond_55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreviewSynchronized()V

    .line 7287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 7289
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    .line 7290
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 7292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 7293
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aput-object p2, v4, p1

    .line 7292
    invoke-interface {v0, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7295
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method private switchCamera(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 6

    .line 7233
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7235
    :cond_22
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 7238
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_48

    :pswitch_31
    goto :goto_43

    .line 7262
    :pswitch_32
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_43

    .line 7244
    :pswitch_35
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_43

    .line 7240
    :pswitch_38
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_43

    .line 7258
    :pswitch_3b
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_43

    .line 7252
    :pswitch_3e
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_43

    .line 7248
    :pswitch_41
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 7266
    :goto_43
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchCamera(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_31
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_3b
    .end packed-switch
.end method

.method private switchSceneRecognition(Z)V
    .registers 3

    .line 8947
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 8948
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startSceneRecognition()V

    goto :goto_11

    .line 8950
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    :goto_11
    return-void
.end method

.method private switchVideoFaceDetection()V
    .registers 4

    .line 8955
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 8956
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 8959
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyCheckUtil;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 8960
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFaceDetection()V

    goto :goto_29

    .line 8962
    :cond_24
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    :goto_29
    return-void
.end method

.method private transitionToRecordingState(Z)V
    .registers 5

    .line 7628
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_9

    .line 7629
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    :cond_9
    const/4 v0, 0x0

    .line 7632
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    if-nez p1, :cond_13

    .line 7634
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    .line 7637
    :cond_13
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz p1, :cond_75

    .line 7638
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_36

    packed-switch p1, :pswitch_data_76

    goto :goto_75

    .line 7662
    :pswitch_2b
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    invoke-direct {p1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_75

    .line 7640
    :cond_36
    iput v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    .line 7641
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 7643
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_7e

    goto :goto_75

    .line 7653
    :pswitch_50
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7654
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->startSlowMotionFeedbackAnimation()V

    goto :goto_75

    .line 7645
    :pswitch_60
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_75

    .line 7649
    :pswitch_6b
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_75
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x7
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_60
        :pswitch_50
    .end packed-switch
.end method

.method private updateAmberBlueColor(F)V
    .registers 9

    .line 8798
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 8797
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 8799
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MIN_AWB_AB:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8800
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_AWB_AB:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v2, v1

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 8801
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 8803
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_62

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke color-changed slider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", min:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8808
    :cond_62
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setAmberBlueColorAndCommit(I)V

    .line 8810
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingAmberBlueValue(I)V

    return-void
.end method

.method private updateBrightness(F)V
    .registers 9

    .line 8815
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 8814
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 8816
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MIN:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8817
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MAX:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v2, v1

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 8818
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 8820
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_62

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke brightness-changed slider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", min:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8825
    :cond_62
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setBrightnessAndCommit(I)V

    .line 8827
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingBrightnessValue(I)V

    return-void
.end method

.method private updateDateTaken(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .registers 4

    .line 8150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->setDateTaken(J)V

    return-void
.end method

.method private updateFusionModeSetting(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .registers 6

    .line 7714
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p1, v0, :cond_d

    return-void

    .line 7720
    :cond_d
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_32

    const/16 v2, 0x8

    if-eq v1, v2, :cond_21

    goto :goto_60

    .line 7732
    :cond_21
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v1, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 7733
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    .line 7734
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 7733
    invoke-virtual {v1, v0, p1, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_60

    .line 7722
    :cond_32
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 7723
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v2, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 7724
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    if-eq v1, v2, :cond_55

    .line 7725
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 7726
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7728
    :cond_55
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    .line 7729
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 7728
    invoke-virtual {v1, v0, p1, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :goto_60
    return-void
.end method

.method private updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .registers 4

    .line 8936
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_13

    .line 8937
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8938
    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 8937
    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    :cond_13
    return-void
.end method

.method private updateRecordingProgress(I)V
    .registers 5

    .line 7767
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_28

    .line 7772
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_16

    .line 7773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    .line 7777
    :cond_16
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7779
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 7777
    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void

    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;)V
    .registers 2

    .line 909
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canApplicationBeFinished()Z
    .registers 2

    .line 8729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    monitor-enter v0

    .line 8730
    :try_start_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canApplicationBeFinished()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$15600(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p0

    .line 8731
    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public canHandleAsynchronizedTask()Z
    .registers 1

    .line 7744
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canHandleAsynchronizedTask()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$14300(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p0

    return p0
.end method

.method public canHandleWearableCaptureRequest()Z
    .registers 1

    .line 7740
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canHandleWearableCaptureRequest()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$14200(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p0

    return p0
.end method

.method public createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 11

    .line 8061
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-eq p1, v0, :cond_23

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-eq p1, v0, :cond_23

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-eq p1, v0, :cond_23

    .line 8064
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8067
    :cond_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 8069
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 8070
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->FRONT:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    goto :goto_3c

    .line 8072
    :cond_3a
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->BACK:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 8075
    :goto_3c
    new-instance v2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 8078
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v5

    const-string v6, "image/jpeg"

    const-string v7, ".JPG"

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 8076
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v0

    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;)V

    const/4 v1, 0x0

    invoke-direct {v2, v0, v3, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V

    .line 8085
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 8086
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setOneshot(Z)V

    .line 8088
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v0, :cond_73

    const/16 p1, 0x81

    .line 8089
    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setSomcType(I)V

    .line 8090
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_7a

    .line 8092
    :cond_73
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 8094
    :goto_7a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setExtraOutput(Landroid/net/Uri;)V

    return-object v2
.end method

.method public getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 8709
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getCurrentCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 8793
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 3

    .line 8701
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-nez v0, :cond_17

    .line 8702
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0

    .line 8704
    :cond_17
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method public getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 8980
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method public getPredictiveCaptureStoreInfo()Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;
    .registers 1

    .line 9127
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    return-object p0
.end method

.method public getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;
    .registers 1

    .line 898
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method public getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;
    .registers 1

    .line 9454
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    return-object p0
.end method

.method public getZoom()Ljava/lang/Float;
    .registers 1

    .line 902
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getZoom()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized isAngleEventReceivable()Z
    .registers 3

    monitor-enter p0

    .line 9435
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    packed-switch v0, :pswitch_data_1c

    const/4 v0, 0x0

    .line 9446
    monitor-exit p0

    return v0

    :pswitch_15
    const/4 v0, 0x1

    .line 9443
    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    .line 9434
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public declared-synchronized isDialogOpened()Z
    .registers 3

    monitor-enter p0

    .line 729
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMenuAvailable()Z
    .registers 1

    .line 8741
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isMenuAvailable()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$15700(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p0

    return p0
.end method

.method public isRecording()Z
    .registers 2

    .line 8750
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    if-eqz v0, :cond_f

    .line 8751
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isRecording()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$13700(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isSettingChangeAcceptable()Z
    .registers 2

    .line 9422
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isLazyInitializationRunning()Z

    move-result v0

    if-nez v0, :cond_f

    .line 9423
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isAllSnapshotCompleted()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method

.method public isTutorialNeededToBeShownForCurrentMode()Z
    .registers 7

    .line 9310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-ne v0, v2, :cond_19

    goto/16 :goto_9a

    .line 9314
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 9315
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 9317
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 9318
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 9319
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 9321
    :cond_3c
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 9324
    :cond_45
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_9c

    .line 9335
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result p0

    if-nez p0, :cond_99

    .line 9336
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_99

    .line 9337
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    goto :goto_96

    .line 9329
    :pswitch_7b
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 9326
    :pswitch_84
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 9332
    :pswitch_8d
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :goto_96
    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_99
    return v1

    :cond_9a
    :goto_9a
    return v1

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_84
        :pswitch_7b
    .end packed-switch
.end method

.method public isVideoRecording()Z
    .registers 1

    .line 7710
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    return p0
.end method

.method public onAutoFocusDone(ZZZIII)V
    .registers 12

    .line 8170
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke isHighQualityBurstAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAfSuccessed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", requireDisplayFlash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8173
    :cond_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_3c

    .line 8174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0, p3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashRequired(Z)V

    .line 8175
    iget-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p3, p4, p5, p6}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashColor(III)V

    .line 8177
    :cond_3c
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeAfDone()V

    .line 8178
    sget-object p3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p4, v1

    .line 8179
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p4, v2

    .line 8178
    invoke-virtual {p0, p3, p4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCropRegionReady()V
    .registers 3

    .line 8496
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8497
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$7;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .registers 3

    .line 8508
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "invoke"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8512
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 8513
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 8515
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_35

    const-string p1, "ERROR:[Screen backlight is ON."

    .line 8517
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 8518
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_43

    :cond_35
    const-string p1, "ERROR:[Screen backlight is OFF. Force close application.]"

    .line 8523
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 8525
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndKillProcess()V

    :goto_43
    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 5

    .line 8451
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8452
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 8453
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isObjectTrackingRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_34

    .line 8456
    :cond_28
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void

    :cond_34
    :goto_34
    return-void
.end method

.method public onInitialAutoFocusDone(Z)V
    .registers 7

    .line 8154
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8159
    :cond_1e
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeAfDone()V

    .line 8160
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 8161
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_INITIAL_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onObjectLost(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 5

    .line 8468
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8469
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 8472
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 5

    .line 8460
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8461
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 8464
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPreShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 5

    .line 8188
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkCallback(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 8190
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPreTakePictureDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 5

    .line 8220
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8222
    :cond_d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkCallback(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 8225
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPrepareBurstDone(Z)V
    .registers 7

    .line 8248
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke isSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8249
    :cond_1e
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREPARE_BURST_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSceneModeChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V
    .registers 5

    .line 8443
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8444
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 8447
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZ)V
    .registers 9

    .line 8201
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke captureNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isAfSuccessed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_26
    if-le p2, v2, :cond_34

    .line 8204
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 8205
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p2, v3}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    goto :goto_37

    :cond_34
    const/4 p2, 0x0

    .line 8208
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 8210
    :goto_37
    sget-object p2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 8211
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    .line 8210
    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTakePictureDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 5

    .line 8236
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8238
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoRecordingDone()V
    .registers 3

    .line 8257
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 8258
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    .line 8261
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public releaseContentsViewController()V
    .registers 2

    .line 594
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 595
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_16

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearContents()V

    :cond_16
    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-void
.end method

.method public removeOnStateChangedListener(Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;)V
    .registers 2

    .line 913
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs declared-synchronized sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    .registers 8

    monitor-enter p0

    .line 6689
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke TransitterEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6692
    :cond_29
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_26a

    goto/16 :goto_264

    .line 7010
    :pswitch_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFinishZoom([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 7006
    :pswitch_3d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePerformZoom([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 7002
    :pswitch_44
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePrepareZoom([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6998
    :pswitch_4b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleChangeCapturingMode([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6994
    :pswitch_52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStorageReadyStateChanged([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6990
    :pswitch_59
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFusionConditionChanged([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6986
    :pswitch_60
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRequestUpdateHighSensitivityFusionMode([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6982
    :pswitch_67
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleTriggerSlowMotion([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6978
    :pswitch_6e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePauseRecording([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6974
    :pswitch_75
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResumeRecording([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6970
    :pswitch_7c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStopRecording([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6966
    :pswitch_83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartRecording([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6962
    :pswitch_8a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRecordReady([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6958
    :pswitch_91
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCaptureCancel([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6954
    :pswitch_98
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCaptureBurst([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6950
    :pswitch_9f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCapture([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6946
    :pswitch_a6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartCaptureCountDown([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6942
    :pswitch_ad
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCaptureReady([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6938
    :pswitch_b4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleChangeAngleStart([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6934
    :pswitch_bb
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleHighFameRateRecordingDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6930
    :pswitch_c2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSlowMotionFeedbackAnimationEnd([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6926
    :pswitch_c9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStopRecordingSlowMotion([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6922
    :pswitch_d0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnCameraDeviceClosed([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6918
    :pswitch_d7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnCameraDeviceOpened([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6914
    :pswitch_de
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSelfTimerCancel([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6910
    :pswitch_e5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBrightnessChanged([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6906
    :pswitch_ec
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAmberBlueColorChanged([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6902
    :pswitch_f3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnSemiAutoDisabled([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6898
    :pswitch_fa
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnSemiAutoEnabled([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6894
    :pswitch_101
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCancelTouchedPosition([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6890
    :pswitch_108
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSwitchCamera([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6886
    :pswitch_10f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnContinuousPreviewFrameUpdated([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6882
    :pswitch_116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6876
    :pswitch_11d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPredictiveCaptureGroupStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6872
    :pswitch_124
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBurstStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6868
    :pswitch_12b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBurstShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6862
    :pswitch_132
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartAfAfterObjectTracked([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6858
    :pswitch_139
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleDeselectObjectPosition([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6854
    :pswitch_140
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSetSelectedObjectPosition([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6850
    :pswitch_147
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleChangeSelectedFace([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6846
    :pswitch_14e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnRecordingError([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6842
    :pswitch_155
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnRecordingStartWaitDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6838
    :pswitch_15c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6834
    :pswitch_163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSetTouchedPosition([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6830
    :pswitch_16a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStorageUngranted([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6826
    :pswitch_171
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStorageMounted([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6822
    :pswitch_178
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStorageError([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6818
    :pswitch_17f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleDialogClosed([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6814
    :pswitch_186
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleDialogOpened([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6810
    :pswitch_18d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleClearFocus([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6806
    :pswitch_194
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFinishTransitionOperation([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6802
    :pswitch_19b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartTransitionOperation([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6798
    :pswitch_1a2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleKeyMenu([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6794
    :pswitch_1a9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6790
    :pswitch_1b0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreRequested([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6786
    :pswitch_1b7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleTouchContentProgress()V

    goto/16 :goto_264

    .line 6782
    :pswitch_1be
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnVideoRecordingDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6778
    :pswitch_1c5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnTakePictureDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6774
    :pswitch_1cc
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPreTakePictureDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6770
    :pswitch_1d3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPrepareBurstDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6766
    :pswitch_1da
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6762
    :pswitch_1e1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPreShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6758
    :pswitch_1e8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAutoFocusDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6754
    :pswitch_1ef
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnInitialAutoFocusDone([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6750
    :pswitch_1f6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnEvfPrepared([Ljava/lang/Object;)V

    goto/16 :goto_264

    .line 6746
    :pswitch_1fd
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverNormal([Ljava/lang/Object;)V

    goto :goto_264

    .line 6742
    :pswitch_203
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    goto :goto_264

    .line 6737
    :pswitch_209
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6738
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnReachBatteryLevelChanged([Ljava/lang/Object;)V

    goto :goto_264

    .line 6733
    :pswitch_21f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnReachBatteryLow([Ljava/lang/Object;)V

    goto :goto_264

    .line 6729
    :pswitch_227
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnReachBatteryLimit([Ljava/lang/Object;)V

    goto :goto_264

    .line 6726
    :pswitch_22f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V

    goto :goto_264

    .line 6722
    :pswitch_235
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V

    goto :goto_264

    .line 6718
    :pswitch_23b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverWarningExtra([Ljava/lang/Object;)V

    goto :goto_264

    .line 6714
    :pswitch_241
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverWarning([Ljava/lang/Object;)V

    goto :goto_264

    .line 6710
    :pswitch_247
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFinalize([Ljava/lang/Object;)V

    goto :goto_264

    .line 6706
    :pswitch_24d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePause([Ljava/lang/Object;)V

    goto :goto_264

    .line 6702
    :pswitch_253
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResumeTimeout([Ljava/lang/Object;)V

    goto :goto_264

    .line 6698
    :pswitch_259
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResume([Ljava/lang/Object;)V

    goto :goto_264

    .line 6694
    :pswitch_25f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleInitialize([Ljava/lang/Object;)V
    :try_end_264
    .catchall {:try_start_1 .. :try_end_264} :catchall_266

    .line 7017
    :goto_264
    monitor-exit p0

    return-void

    :catchall_266
    move-exception p1

    .line 6688
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_26a
    .packed-switch 0x1
        :pswitch_25f
        :pswitch_259
        :pswitch_253
        :pswitch_24d
        :pswitch_247
        :pswitch_241
        :pswitch_23b
        :pswitch_235
        :pswitch_22f
        :pswitch_227
        :pswitch_21f
        :pswitch_209
        :pswitch_203
        :pswitch_1fd
        :pswitch_1f6
        :pswitch_1ef
        :pswitch_1e8
        :pswitch_1e1
        :pswitch_1da
        :pswitch_1d3
        :pswitch_1cc
        :pswitch_1c5
        :pswitch_1be
        :pswitch_1b7
        :pswitch_1b0
        :pswitch_1a9
        :pswitch_1a2
        :pswitch_19b
        :pswitch_194
        :pswitch_18d
        :pswitch_186
        :pswitch_17f
        :pswitch_178
        :pswitch_171
        :pswitch_16a
        :pswitch_163
        :pswitch_15c
        :pswitch_155
        :pswitch_14e
        :pswitch_147
        :pswitch_140
        :pswitch_139
        :pswitch_132
        :pswitch_12b
        :pswitch_124
        :pswitch_11d
        :pswitch_116
        :pswitch_10f
        :pswitch_108
        :pswitch_101
        :pswitch_fa
        :pswitch_f3
        :pswitch_ec
        :pswitch_e5
        :pswitch_de
        :pswitch_d7
        :pswitch_d0
        :pswitch_c9
        :pswitch_c2
        :pswitch_bb
        :pswitch_b4
        :pswitch_ad
        :pswitch_a6
        :pswitch_9f
        :pswitch_98
        :pswitch_91
        :pswitch_8a
        :pswitch_83
        :pswitch_7c
        :pswitch_75
        :pswitch_6e
        :pswitch_67
        :pswitch_60
        :pswitch_59
        :pswitch_52
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
        :pswitch_36
    .end packed-switch
.end method

.method public varargs declared-synchronized sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V
    .registers 10

    monitor-enter p0

    .line 7021
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke StaticEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7024
    :cond_29
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_122

    goto/16 :goto_11d

    .line 7116
    :pswitch_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPreviewStarted()V

    goto/16 :goto_11d

    .line 7113
    :pswitch_3d
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSdPermissionFinished:Z

    goto/16 :goto_11d

    .line 7109
    :pswitch_41
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7110
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handleSettingsChanged(Z)V

    goto/16 :goto_11d

    .line 7104
    :pswitch_50
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnObjectLost([Ljava/lang/Object;)V

    goto/16 :goto_11d

    .line 7097
    :pswitch_57
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7100
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnLazyInitializationTaskRun([Ljava/lang/Object;)V

    goto/16 :goto_11d

    .line 7093
    :pswitch_67
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnOrientationChanged([Ljava/lang/Object;)V

    goto/16 :goto_11d

    .line 7089
    :pswitch_6e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnObjectTracked([Ljava/lang/Object;)V

    goto/16 :goto_11d

    .line 7085
    :pswitch_75
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnFaceDetected([Ljava/lang/Object;)V

    goto/16 :goto_11d

    .line 7081
    :pswitch_7c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnSceneModeChanged([Ljava/lang/Object;)V

    goto/16 :goto_11d

    .line 7041
    :pswitch_83
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    aget-object p2, p2, v2

    check-cast p2, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_13c

    goto :goto_ed

    .line 7052
    :pswitch_93
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7053
    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 7054
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7055
    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eqz p1, :cond_b1

    .line 7056
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result p1

    if-eqz p1, :cond_b1

    move p1, v1

    goto :goto_b2

    :cond_b1
    move p1, v2

    .line 7057
    :goto_b2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v5, v5

    .line 7060
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 7062
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    .line 7063
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, p1

    const/4 p1, 0x3

    aput-object p2, v4, p1

    .line 7057
    invoke-interface {v0, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7067
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateRecordingProgress(I)V

    .line 7068
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    goto :goto_ed

    .line 7045
    :pswitch_e2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result p1

    if-nez p1, :cond_ed

    .line 7046
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->calculateRemainStorage()V

    .line 7074
    :cond_ed
    :goto_ed
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result p1

    if-eqz p1, :cond_11d

    .line 7075
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_FUSION_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 7076
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object v0

    aput-object v0, p2, v2

    .line 7075
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_11d

    .line 7029
    :pswitch_103
    aget-object p1, p2, v2

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 7030
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isRecording()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$13700(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p1

    if-eqz p1, :cond_11a

    .line 7032
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 7035
    :cond_11a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->storeSavingRequestList()V
    :try_end_11d
    .catchall {:try_start_1 .. :try_end_11d} :catchall_11f

    .line 7122
    :cond_11d
    :goto_11d
    monitor-exit p0

    return-void

    :catchall_11f
    move-exception p1

    .line 7020
    monitor-exit p0

    throw p1

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_103
        :pswitch_83
        :pswitch_7c
        :pswitch_75
        :pswitch_6e
        :pswitch_67
        :pswitch_57
        :pswitch_50
        :pswitch_41
        :pswitch_3d
        :pswitch_36
    .end packed-switch

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_e2
        :pswitch_93
    .end packed-switch
.end method

.method public setDependencies(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 4

    .line 1625
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1626
    :cond_d
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 1627
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1628
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    return-void
.end method

.method public setGestureShutterWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V
    .registers 3

    .line 8926
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8927
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->setWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V

    return-void
.end method
