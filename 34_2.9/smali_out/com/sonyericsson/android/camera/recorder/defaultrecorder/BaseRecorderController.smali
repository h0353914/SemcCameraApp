.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.super Ljava/lang/Object;
.source "BaseRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyProgressTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;
    }
.end annotation


# static fields
.field private static MIN_INTELLIGENT_ACTIVE_VIDEO_DURATION_MILLIS:J = 0xbb8L

.field private static MIN_VIDEO_DURATION_MILLIS:J = 0xbb8L

.field private static final TIME_OF_START_SOUND_TO_COMPLETE_IN_MILLI:I = 0x12c

.field private static final TRACE:Z = true

.field private static final TRACE_FOR_PROGRESS:Z = false


# instance fields
.field private final mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mCameraActionSound:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsAdjustRecordingTimeByRecorderNotification:Z

.field protected mIsCameraErrorDetected:Z

.field private mIsMicrophoneEnabled:Z

.field private final mIsStartSoundRequired:Z

.field private mIsStopSoundAlreadyPlayed:Z

.field private final mIsStopSoundAlreadyPlayedLock:Ljava/lang/Object;

.field private final mIsStopSoundRequired:Z

.field private mIsUserSoundSettingOn:Z

.field private mLastNotifyDurationMillis:J

.field private mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

.field private mMaxDurationMillis:J

.field private final mMinDurationMillis:J

.field private final mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

.field private final mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

.field private final mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

.field private final mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

.field private final mRecorderAccessThread:Landroid/os/HandlerThread;

.field private final mRecorderControllerThread:Landroid/os/Handler;

.field private mRecordingSurface:Landroid/view/Surface;

.field private final mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

.field private final mShouldWaitStartSound:Z

.field private mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field protected final mStateLock:Ljava/lang/Object;

.field private mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

.field private final mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsMicrophoneEnabled(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsMicrophoneEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNotifyDurationMillis(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)J
    .registers 3

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxDurationMillis(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)J
    .registers 3

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmOnTickCallback(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceClock(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldWaitStartSound(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mShouldWaitStartSound:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageWriteNotifier(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitUntilWriting(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRecordingSurface(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Landroid/view/Surface;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecordingSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisplayMaxDuration(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->displayMaxDuration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDuration(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyDuration(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyFinishResult(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyFinishResult(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayStopSound(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->playStopSound()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtrace(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JIZZZZ)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderInterface;",
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "JIZZZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    .line 880
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayedLock:Ljava/lang/Object;

    .line 929
    new-instance v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$2;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v3, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    .line 967
    new-instance v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v4, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    .line 987
    new-instance v5, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v5, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 1016
    new-instance v6, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$5;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$5;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v6, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 1126
    new-instance v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$6;

    invoke-direct {v7, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$6;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v7, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    .line 236
    const-string v8, "BaseRecorderController() E"

    invoke-static {v8}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    move-object v8, p1

    .line 238
    iput-object v8, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    move-object v8, p2

    .line 239
    iput-object v8, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCameraActionSound:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    move-object/from16 v8, p5

    .line 240
    iput-object v8, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    .line 241
    iput-object v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    .line 242
    sget-object v8, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 243
    new-instance v8, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move/from16 v9, p8

    int-to-long v9, v9

    invoke-direct {v8, p4, v7, v9, v10}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;J)V

    iput-object v8, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    .line 247
    new-instance v2, Landroid/os/HandlerThread;

    const-string v7, "RecorderAccess"

    const/16 v8, 0xa

    invoke-direct {v2, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorderAccessThread:Landroid/os/HandlerThread;

    .line 249
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 250
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorderControllerThread:Landroid/os/Handler;

    move-wide/from16 v7, p6

    .line 252
    iput-wide v7, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMinDurationMillis:J

    move/from16 v2, p9

    .line 254
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStartSoundRequired:Z

    move/from16 v2, p10

    .line 255
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mShouldWaitStartSound:Z

    move/from16 v2, p11

    .line 256
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundRequired:Z

    move/from16 v2, p12

    .line 257
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    const/4 v2, 0x0

    .line 258
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    .line 260
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    .line 261
    invoke-interface {p3, v5, v6, v3, v4}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setListener(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V

    const/4 v1, 0x1

    .line 267
    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    .line 269
    const-string v0, "BaseRecorderController() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private displayMaxDuration()V
    .registers 9

    .line 1151
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    sub-long v6, v0, v4

    cmp-long v2, v6, v2

    if-ltz v2, :cond_21

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    .line 1157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$7;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method private getCameraActionSound()Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .registers 1

    .line 323
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCameraActionSound:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/Accessor;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method protected static minVideoLengthMillis(Z)J
    .registers 3

    if-eqz p0, :cond_5

    .line 96
    sget-wide v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->MIN_INTELLIGENT_ACTIVE_VIDEO_DURATION_MILLIS:J

    goto :goto_7

    .line 97
    :cond_5
    sget-wide v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->MIN_VIDEO_DURATION_MILLIS:J

    :goto_7
    return-wide v0
.end method

.method private notifyDuration(J)V
    .registers 7

    .line 1102
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    .line 1104
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    if-eqz v0, :cond_3f

    .line 1105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->isMeasuring()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 1107
    :try_start_12
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1109
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->reset(J)V

    .line 1110
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->resume()V

    .line 1112
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_3c

    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    if-eqz v0, :cond_36

    .line 1115
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;->notifyWriteStorage()V

    .line 1119
    :cond_36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;->onRecordProgress(J)V

    goto :goto_3f

    :catchall_3c
    move-exception p0

    .line 1112
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0

    :cond_3f
    :goto_3f
    return-void
.end method

.method private notifyFinishResult(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .registers 3

    .line 1046
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private playStopSound()V
    .registers 4

    const-string v0, "playStopSound() is-already-played:"

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playStopSound() E required:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStopSound()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 885
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStopSound()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 887
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 889
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3c

    .line 890
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    move v0, v2

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    .line 893
    :goto_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_4c

    if-eqz v0, :cond_4f

    .line 895
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->getCameraActionSound()Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 897
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->STOP_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_4f

    :catchall_4c
    move-exception p0

    .line 893
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0

    .line 901
    :cond_4f
    :goto_4f
    const-string p0, "playStopSound() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private shouldPlayStartSound()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStartSoundRequired:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private shouldPlayStopSound()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundRequired:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 1

    .line 49
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V
    .registers 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeTo() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-void
.end method

.method protected disableAdjustRecordingTimeByRecorderNotification()V
    .registers 2

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    return-void
.end method

.method protected executeInBackground(Ljava/lang/Runnable;)V
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorderControllerThread:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getCallbackHandler()Landroid/os/Handler;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    return-object p0
.end method

.method public getRecordingTimeMillis()J
    .registers 3

    .line 316
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getReferenceClock()Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    return-object p0
.end method

.method public isPaused()Z
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 282
    :try_start_4
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 283
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isReady()Z
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 275
    :try_start_4
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 276
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isRecording()Z
    .registers 5

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 296
    :try_start_4
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 297
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isReleased()Z
    .registers 5

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 310
    :try_start_4
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 311
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isStarting()Z
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 289
    :try_start_4
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 290
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isStopping()Z
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 303
    :try_start_4
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 304
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw p0
.end method

.method protected notifyError()V
    .registers 4

    .line 939
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "Fail to verify state. state:"

    .line 635
    const-string v1, "pause() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 638
    :try_start_b
    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 642
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 643
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 644
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_50

    .line 646
    const-string p0, "pause() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 639
    :cond_32
    :try_start_32
    const-string v2, "pause() X failed : illegal state"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 640
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_50
    move-exception p0

    .line 644
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_50

    throw p0
.end method

.method protected pauseInternal()Z
    .registers 4

    .line 674
    const-string v0, "pauseInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 677
    :try_start_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->waitUntilFirstVideoAndAudioFrameWritten()V

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->pause()V

    .line 681
    const-string v0, "pauseInternal() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_17} :catch_19

    const/4 p0, 0x1

    return p0

    :catch_19
    move-exception v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pauseInternal() X failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 686
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x0

    return p0
.end method

.method protected playStartSound()V
    .registers 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playStartSound() E required:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStartSound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStartSound()Z

    move-result v0

    if-nez v0, :cond_22

    .line 333
    const-string p0, "playStartSound() X not required"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_22
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->getCameraActionSound()Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 339
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    .line 342
    :cond_2e
    const-string p0, "playStartSound() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)Z
    .registers 8

    .line 347
    const-string v0, "prepare() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    const-wide/16 v1, 0x0

    .line 349
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    .line 350
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 351
    :try_start_10
    new-array v3, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v4, v3, v0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 352
    const-string p0, "prepare() X failed : illegal state"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 353
    monitor-exit v1

    return v0

    .line 356
    :cond_23
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 357
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 358
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_37

    .line 360
    const-string p0, "prepare() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return v2

    :catchall_37
    move-exception p0

    .line 358
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .registers 4

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepareInternal() E mic:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsMicrophoneEnabled:Z

    .line 398
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasMaxDuration()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 399
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    goto :goto_2e

    :cond_2a
    const-wide/16 v0, 0x0

    .line 401
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    .line 404
    :goto_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecordingSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3c

    .line 408
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setInputSurface(Landroid/view/Surface;)V

    .line 410
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_49
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 414
    monitor-exit v0

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_50

    throw p0

    .line 417
    :cond_53
    :goto_53
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "prepareInternal() X success:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return p1
.end method

.method public release()Z
    .registers 9

    const-string v0, "release() X failed : "

    .line 756
    const-string v1, "release() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 761
    :try_start_b
    new-array v3, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 762
    const-string p0, "release() X already released"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 763
    monitor-exit v1

    return v6

    :cond_24
    const/4 v3, 0x3

    .line 765
    new-array v4, v3, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v7, v4, v5

    sget-object v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v7, v4, v6

    sget-object v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v7, v4, v2

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v4
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_8d

    if-eqz v4, :cond_58

    .line 767
    :try_start_39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stop()V
    :try_end_3c
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catchall {:try_start_39 .. :try_end_3c} :catchall_8d

    goto :goto_58

    :catch_3d
    move-exception p0

    .line 769
    :try_start_3e
    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 770
    monitor-exit v1

    return v5

    .line 773
    :cond_58
    :goto_58
    new-array v0, v3, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v0, v5

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v0, v6

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v0

    .line 777
    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 778
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_3e .. :try_end_70} :catchall_8d

    if-eqz v0, :cond_7b

    .line 781
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    goto :goto_84

    .line 799
    :cond_7b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_7e
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 801
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_8a

    .line 804
    :goto_84
    const-string p0, "release() X success"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return v6

    :catchall_8a
    move-exception p0

    .line 801
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0

    :catchall_8d
    move-exception p0

    .line 778
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method protected releaseInternal()V
    .registers 2

    .line 809
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->release()V

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorderAccessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecordingSurface:Landroid/view/Surface;

    return-void
.end method

.method public reset()Z
    .registers 4

    .line 816
    const-string v0, "reset() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_8
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 820
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask-IA;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 821
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 822
    const-string p0, "reset() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_1e
    move-exception p0

    .line 821
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public resetInternal()Z
    .registers 1

    .line 837
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x1

    return p0
.end method

.method public resume()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "Fail to verify state. state:"

    .line 694
    const-string v1, "resume() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 697
    :try_start_b
    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 701
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 702
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 703
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_4b

    .line 705
    const-string p0, "resume() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 698
    :cond_2d
    :try_start_2d
    const-string v2, "resume() X failed : illegal state"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 699
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_4b
    move-exception p0

    .line 703
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method protected resumeInternal()Z
    .registers 4

    .line 733
    const-string v0, "resumeInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 736
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->resume()V

    .line 737
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    if-eqz v0, :cond_f

    goto :goto_14

    .line 741
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->resume()V

    .line 744
    :goto_14
    const-string v0, "resumeInternal() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_19} :catch_1b

    const/4 p0, 0x1

    return p0

    :catch_1b
    move-exception v0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resumeInternal() X failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 749
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x0

    return p0
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 2

    .line 843
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setMaxDurationMillis(J)V
    .registers 3

    .line 848
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setMaxDurationMillis(J)V

    return-void
.end method

.method public setMaxFileSizeBytes(J)V
    .registers 3

    .line 853
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setMaxFileSizeBytes(J)V

    return-void
.end method

.method public setOrientationHint(I)V
    .registers 2

    .line 858
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setOrientationHint(I)V

    return-void
.end method

.method public setOutputFilePath(Ljava/lang/String;)V
    .registers 2

    .line 863
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setOutputFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setStorageWriteNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V
    .registers 2

    .line 1171
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    return-void
.end method

.method public setUserSoundSetting(Z)V
    .registers 2

    .line 873
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    return-void
.end method

.method public setVideoSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 2

    .line 868
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setVideoSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    return-void
.end method

.method public start()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "Fail to verify state. state:"

    .line 423
    const-string/jumbo v1, "start() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 426
    :try_start_c
    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 431
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->playStartSound()V

    .line 433
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 434
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 435
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_51

    .line 437
    const-string/jumbo p0, "start() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 427
    :cond_32
    :try_start_32
    const-string/jumbo v2, "start() X failed : illegal state"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 428
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_51
    move-exception p0

    .line 435
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_51

    throw p0
.end method

.method protected startInternal()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 500
    const-string/jumbo v0, "startInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    .line 503
    :try_start_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->start()V

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyProgressTask;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyProgressTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    if-eqz v0, :cond_29

    .line 509
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->reset(J)V

    goto :goto_2e

    .line 511
    :cond_29
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->start()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2e} :catch_36

    .line 519
    :goto_2e
    const-string/jumbo p0, "startInternal() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_36
    move-exception p0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startInternal() X failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "Fail to verify state. state:"

    .line 525
    const-string/jumbo v1, "stop() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x3

    .line 528
    :try_start_c
    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 532
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 534
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 535
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_58

    .line 537
    const-string/jumbo p0, "stop() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 529
    :cond_39
    :try_start_39
    const-string/jumbo v2, "stop() X failed : illegal state"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 530
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_58
    move-exception p0

    .line 535
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public stopAudioRecording()V
    .registers 1

    .line 545
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object p0

    .line 546
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopAudioRecording()V

    return-void
.end method

.method protected stopInternal()Z
    .registers 4

    const-string/jumbo v0, "stopInternal() X failed : "

    .line 602
    const-string/jumbo v1, "stopInternal() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    .line 604
    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    .line 607
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->waitUntilFirstVideoAndAudioFrameWritten()V

    .line 609
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 610
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsCameraErrorDetected:Z

    if-eqz v1, :cond_22

    .line 611
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopOnCameraError()V

    goto :goto_27

    .line 613
    :cond_22
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stop()V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_27} :catch_36
    .catchall {:try_start_10 .. :try_end_27} :catchall_34

    .line 626
    :goto_27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 629
    const-string/jumbo p0, "stopInternal() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_34
    move-exception v0

    goto :goto_52

    :catch_36
    move-exception v1

    .line 622
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_34

    .line 626
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x0

    return p0

    :goto_52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 627
    throw v0
.end method

.method public stopOnCameraError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    .line 551
    const-string/jumbo v0, "stopOnCameraError() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsCameraErrorDetected:Z

    .line 554
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stop()V

    .line 556
    const-string/jumbo p0, "stopOnCameraError() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method protected varargs verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z
    .registers 7

    .line 151
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_10

    aget-object v3, p1, v2

    .line 152
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    if-ne v3, v4, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    return v1
.end method

.method protected waitUntilFirstVideoAndAudioFrameWritten()V
    .registers 4

    .line 909
    const-string/jumbo v0, "waitUntilFirstVideoAndAudioFrameWritten() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 912
    :try_start_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1b

    .line 913
    iget-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMinDurationMillis:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_28

    .line 914
    const-string/jumbo p0, "waitUntilFirstVideoAndAudioFrameWritten() timed-out"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    goto :goto_28

    .line 917
    :cond_1b
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMinDurationMillis:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_21} :catch_22

    goto :goto_28

    .line 922
    :catch_22
    const-string/jumbo p0, "waitUntilFirstVideoAndAudioFrameWritten() interrupted at mWaitUntilWriting.await()"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 926
    :cond_28
    :goto_28
    const-string/jumbo p0, "waitUntilFirstVideoAndAudioFrameWritten() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method
