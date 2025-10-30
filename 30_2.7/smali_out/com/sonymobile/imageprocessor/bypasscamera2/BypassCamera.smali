.class public final Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStopVideoRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartVideoRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareVideoRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotFreeTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;
    }
.end annotation


# static fields
.field private static final CALLBACK_TYPE_ON_FINISH_BURST_DONE:I = 0x32

.field private static final CALLBACK_TYPE_ON_PREPARE_BURST_DONE:I = 0x28

.field private static final CALLBACK_TYPE_ON_PREPARE_SUPER_SLOW_RECORDING_DONE:I = 0x4

.field private static final CALLBACK_TYPE_ON_PREPARE_VIDEO_RECORDING_DONE:I = 0x2

.field private static final CALLBACK_TYPE_ON_SHUTTER_DONE:I = 0x14

.field private static final CALLBACK_TYPE_ON_SNAPSHOT_DONE:I = 0x15

.field private static final CALLBACK_TYPE_ON_SNAPSHOT_FREE_DONE:I = 0x1e

.field private static final CALLBACK_TYPE_ON_SNAPSHOT_READY_DONE:I = 0xa

.field private static final CALLBACK_TYPE_ON_START_SUPER_SLOW_RECORDING_DONE:I = 0x3

.field private static final CALLBACK_TYPE_ON_START_VIDEO_RECORDING_DONE:I = 0x0

.field private static final CALLBACK_TYPE_ON_STOP_VIDEO_RECORDING_DONE:I = 0x1

.field private static final CALLBACK_VALUE_CAPTURE_START_POINT_ALREADY_DONE:I = 0x0

.field private static final CALLBACK_VALUE_CAPTURE_START_POINT_INVALID:I = 0x2

.field private static final CALLBACK_VALUE_CAPTURE_START_POINT_ON_REQUEST:I = 0x1

.field private static final INVALID_NATIVE_INSTANCE_POINTER:I = -0x1

.field private static final RET_ERR:I = -0x1

.field private static final RET_OK:I = 0x0

.field private static final RET_TIMEOUT:I = -0x2

.field private static final TAG:Ljava/lang/String; = "BypassCamera"

.field private static final sBypassCameraLock:Ljava/lang/Object;

.field private static sIsBypassCameraLoaded:Z = false

.field private static sIsBypassCameraOpened:Z = false


# instance fields
.field private mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

.field private mNativeInstancePointer:J

.field private mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

.field private mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

.field private mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

.field private mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

.field private mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

.field private mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

.field private mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

.field private mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

.field private mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 147
    sput-boolean v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraLoaded:Z

    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)V
    .registers 6

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 142
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    .line 151
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 154
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    .line 155
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    .line 156
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    .line 157
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    .line 158
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    .line 161
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

    .line 162
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    .line 163
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    .line 166
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    .line 168
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    .line 188
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "BypassCamera"

    const-string v3, "CONSTRUCTOR : E"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2d
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->getCameraId()I
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->access$000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeInitialize(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 193
    iget-wide v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_69

    .line 197
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_5b

    const-string p1, "BypassCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeInstanceHead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_5b
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, "BypassCamera"

    const-string v0, "CONSTRUCTOR : X"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void

    .line 194
    :cond_69
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeInitialize()."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Landroid/os/Handler;)V
    .registers 3

    .line 172
    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)V

    .line 175
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 180
    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)V

    .line 183
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    return-object p0
.end method

.method private final callbackFromNative(IIIZZZIII)V
    .registers 22

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 1239
    invoke-direct/range {v0 .. v11}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackFromNativeV32(IIIZZZIIIII)V

    return-void
.end method

.method private final callbackFromNativeV32(IIIZZZIIIII)V
    .registers 24

    move-object v10, p0

    move v0, p1

    move v1, p2

    .line 1279
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "BypassCamera"

    const-string v3, "callbackFromNative() : E"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/16 v2, 0xa

    if-eq v0, v2, :cond_9b

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-eq v0, v2, :cond_85

    const/16 v2, 0x28

    if-eq v0, v2, :cond_6d

    const/16 v2, 0x32

    if-eq v0, v2, :cond_57

    packed-switch v0, :pswitch_data_d4

    goto/16 :goto_c6

    .line 1301
    :pswitch_26
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "BypassCamera"

    const-string v2, "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_DONE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_33
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;I)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto/16 :goto_c6

    .line 1296
    :pswitch_3d
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "BypassCamera"

    const-string v2, "TYPE = CALLBACK_TYPE_ON_SHUTTER_DONE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_4a
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;

    move v2, p3

    move/from16 v3, p4

    invoke-direct {v0, p0, p2, p3, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;IIZ)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto/16 :goto_c6

    .line 1316
    :cond_57
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_FINISH_BURST_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_64
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_c6

    .line 1311
    :cond_6d
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_PREPARE_BURST_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_7a
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;

    move/from16 v2, p5

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Z)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_c6

    .line 1306
    :cond_85
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_92

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_FREE_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_92
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotFreeTask;

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotFreeTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_c6

    :cond_9b
    move/from16 v3, p4

    move/from16 v2, p5

    .line 1283
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_READY_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_ac
    new-instance v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;ZZZIIIII)V

    invoke-direct {p0, v11}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1325
    :goto_c6
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_d3

    const-string v0, "BypassCamera"

    const-string v1, "callbackFromNative() : X"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x14
        :pswitch_3d
        :pswitch_26
    .end packed-switch
.end method

.method private final callbackFromNativeVideo(I)V
    .registers 4

    .line 1520
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "BypassCamera"

    const-string v1, "callbackFromNativeVideo() : E"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_8e

    goto :goto_7f

    .line 1539
    :pswitch_12
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1540
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_PREPARE_SUPER_SLOW_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1545
    :pswitch_28
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1546
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_START_SUPER_SLOW_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1524
    :pswitch_3e
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareVideoRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareVideoRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1525
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_PREPARE_VIDEO_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1534
    :pswitch_54
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStopVideoRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStopVideoRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1535
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_STOP_VIDEO_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1529
    :pswitch_6a
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartVideoRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartVideoRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1530
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_START_VIDEO_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_7f
    :goto_7f
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_8c

    const-string p1, "BypassCamera"

    const-string v0, "callbackFromNativeVideo() : X"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_54
        :pswitch_3e
        :pswitch_28
        :pswitch_12
    .end packed-switch
.end method

.method private callbackToClient(Ljava/lang/Runnable;)V
    .registers 3

    .line 1329
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    const-string p1, "BypassCamera"

    const-string v0, "callbackToClient() : Callback object is not installed."

    .line 1331
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1332
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1333
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 1334
    :cond_20
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_28

    .line 1335
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2f

    :cond_28
    const-string p1, "BypassCamera"

    const-string v0, "callbackToClient() : Callback is not invoked."

    .line 1337
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method private static createListValue(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1116
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 1119
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 1121
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x2c

    .line 1122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1124
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1126
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createSuperSlowSupportedInfoListValue(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1093
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 1096
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1097
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 1098
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;

    .line 1099
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v1, :cond_2c

    const/16 v4, 0x2c

    .line 1101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1103
    :cond_2c
    iget v4, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->width:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    .line 1104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1105
    iget v4, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    .line 1106
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 1108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1109
    iget v2, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->fps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1111
    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1072
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 1075
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;

    const/4 v3, 0x0

    .line 1077
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x2c

    .line 1078
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1080
    :cond_2a
    iget v3, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    .line 1081
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1082
    iget v3, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 1083
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1084
    iget v2, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->fps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1086
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCaps(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
    .registers 5

    .line 1019
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 1021
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;

    invoke-direct {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;-><init>()V

    .line 1022
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->getCameraId()I
    invoke-static {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->access$000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)I

    move-result p0

    invoke-static {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeGetCaps(ILcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;)I

    move-result p0

    if-nez p0, :cond_7d

    .line 1027
    new-instance p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;-><init>()V

    const-string v1, "vs-values"

    .line 1030
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoStabilizationMode:Ljava/util/List;

    .line 1031
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1030
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video-high-frame-rate-configuration"

    .line 1034
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mHighFrameRateSupportedInfoList:Ljava/util/List;

    .line 1035
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1034
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vs-steady-shot-configuration"

    .line 1038
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSteadyShotSupportedInfoList:Ljava/util/List;

    .line 1039
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vs-intelligent-active-configuration"

    .line 1042
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mIntelligentActiveSupportedInfoList:Ljava/util/List;

    .line 1043
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "super-slow-values"

    .line 1046
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowMode:Ljava/util/List;

    .line 1047
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "burst-values"

    .line 1050
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mBurstMode:Ljava/util/List;

    .line 1051
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video-hdr-values"

    .line 1054
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoHdrMode:Ljava/util/List;

    .line 1055
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video-super-slow-configuration"

    .line 1058
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowSupportedInfoList:Ljava/util/List;

    iget-object v3, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowFrameNumList:Ljava/util/List;

    .line 1059
    invoke-static {v2, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSuperSlowSupportedInfoListValue(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "climax-recognition-values"

    .line 1064
    iget-object v0, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mClimaxRecognitionMode:Ljava/util/List;

    .line 1065
    invoke-static {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 1024
    :cond_7d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeGetCaps()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadNativeLibrary()V
    .registers 6

    .line 206
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    sget-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraLoaded:Z

    if-nez v1, :cond_71

    .line 208
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1f

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    move v1, v2

    :goto_20
    if-eqz v1, :cond_45

    const-string v3, "TraceLog"

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CamKPI] [UPTIME=] [BypassCamera]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] : loadLibrary() : E"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const-string v3, "imageprocessorjni"

    .line 212
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    if-eqz v1, :cond_6f

    const-string v1, "TraceLog"

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CamKPI] [UPTIME=] [BypassCamera]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] : loadLibrary() : X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_6f
    sput-boolean v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraLoaded:Z

    .line 218
    :cond_71
    monitor-exit v0

    return-void

    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw v1
.end method

.method private native nativeChangeToPhotoMode(JIIIIII)I
.end method

.method private native nativeChangeToSuperSlowMode(JIIIIIIII)I
.end method

.method private native nativeChangeToVideoMode(JIIIIII)I
.end method

.method private native nativeFinalize(J)I
.end method

.method private static native nativeGetCaps(ILcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;)I
.end method

.method private native nativeGetLatestRequestId(J)I
.end method

.method private native nativeInitialize(I)J
.end method

.method private native nativeIsDebugable()Z
.end method

.method private native nativeRequestFinishBurstShot(J)I
.end method

.method private native nativeRequestPrepareBurstShot(J)I
.end method

.method private native nativeRequestPrepareSnapshot(JLandroid/view/Surface;I)I
.end method

.method private native nativeRequestPrepareSuperSlowRecording(JLandroid/view/Surface;III)I
.end method

.method private native nativeRequestPrepareVideoRecording(JLandroid/view/Surface;III)I
.end method

.method private native nativeRequestSnapshot(JZZDDDZLjava/lang/String;ZIZIZIIIIZI)I
.end method

.method private native nativeRequestSnapshotFree(J)I
.end method

.method private native nativeRequestSnapshotReady(J)I
.end method

.method private native nativeRequestStartSuperSlowRecording(J)I
.end method

.method private native nativeRequestStartVideoRecording(J)I
.end method

.method private native nativeRequestStopVideoRecording(J)I
.end method

.method private native nativeSetConfig(JLcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)I
.end method

.method public static open(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Landroid/os/Handler;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .registers 4

    .line 229
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 231
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_6
    sget-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    if-nez v1, :cond_14

    .line 233
    new-instance v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Landroid/os/Handler;)V

    const/4 p0, 0x1

    .line 234
    sput-boolean p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    .line 235
    monitor-exit v0

    return-object v1

    .line 237
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BypassCamera is already opened."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1c
    move-exception p0

    .line 239
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public static open(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .registers 4

    .line 250
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 252
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_6
    sget-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    if-nez v1, :cond_14

    .line 254
    new-instance v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)V

    const/4 p0, 0x1

    .line 255
    sput-boolean p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    .line 256
    monitor-exit v0

    return-object v1

    .line 258
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BypassCamera is already opened."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1c
    move-exception p0

    .line 260
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw p0
.end method


# virtual methods
.method public changeToPhotoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;Landroid/util/Size;Landroid/util/Size;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;
        }
    .end annotation

    .line 374
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 376
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->getModeCode()I
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->access$100(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;)I

    move-result v3

    .line 377
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 378
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 379
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 380
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v0, p0

    move v8, p4

    .line 374
    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeChangeToPhotoMode(JIIIIII)I

    move-result p2

    packed-switch p2, :pswitch_data_52

    return-void

    :pswitch_20
    const-wide/16 p2, -0x1

    .line 384
    iput-wide p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 385
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to change mode to : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 387
    :pswitch_3b
    new-instance p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Timed out to change mode to : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_52
    .packed-switch -0x2
        :pswitch_3b
        :pswitch_20
    .end packed-switch
.end method

.method public changeToSuperSlowMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;Landroid/util/Size;Landroid/util/Size;ILcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;
        }
    .end annotation

    move-object v11, p0

    move-object v12, p1

    move-object/from16 v0, p5

    .line 458
    iget-wide v1, v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 460
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->getModeCode()I
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->access$300(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;)I

    move-result v3

    .line 461
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 462
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    iget v9, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->fps:I

    iget v10, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->frameNum:I

    move-object v0, p0

    move/from16 v8, p4

    .line 458
    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeChangeToSuperSlowMode(JIIIIIIII)I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    return-void

    :pswitch_29
    const-wide/16 v0, -0x1

    .line 470
    iput-wide v0, v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 471
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change mode to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :pswitch_44
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out to change mode to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_5c
    .packed-switch -0x2
        :pswitch_44
        :pswitch_29
    .end packed-switch
.end method

.method public changeToSuperSlowMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;Landroid/util/Size;Landroid/util/Size;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;)V
    .registers 5

    .line 440
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public changeToVideoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;Landroid/util/Size;Landroid/util/Size;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;
        }
    .end annotation

    .line 407
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 409
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->getModeCode()I
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->access$200(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;)I

    move-result v3

    .line 410
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 411
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 412
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 413
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v0, p0

    move v8, p4

    .line 407
    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeChangeToVideoMode(JIIIIII)I

    move-result p2

    packed-switch p2, :pswitch_data_52

    return-void

    :pswitch_20
    const-wide/16 p2, -0x1

    .line 417
    iput-wide p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 418
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to change mode to : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 420
    :pswitch_3b
    new-instance p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Timed out to change mode to : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_52
    .packed-switch -0x2
        :pswitch_3b
        :pswitch_20
    .end packed-switch
.end method

.method public close()V
    .registers 5

    .line 330
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "BypassCamera"

    const-string v1, "close() : E"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_d
    monitor-enter p0

    const/4 v0, 0x0

    .line 335
    :try_start_f
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    .line 336
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    .line 337
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    .line 338
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    .line 339
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    .line 340
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    .line 341
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    .line 342
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_5d

    .line 345
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeFinalize(J)I

    .line 347
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "BypassCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeInstanceHead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const-wide/16 v0, -0x1

    .line 349
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 352
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 353
    :try_start_49
    sput-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    .line 354
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5a

    .line 356
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "BypassCamera"

    const-string v1, "close() : X"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void

    :catchall_5a
    move-exception v1

    .line 354
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1

    :catchall_5d
    move-exception v0

    .line 342
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method public requestFinishBurstShot()V
    .registers 3

    .line 995
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestFinishBurstShot(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 997
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 998
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestFinishBurstShot()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPrepareBurstShot()V
    .registers 3

    .line 973
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareBurstShot(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 975
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 976
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestPrepareBurstShot()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPrepareSnapshot(Landroid/view/Surface;I)V
    .registers 5

    .line 492
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareSnapshot(JLandroid/view/Surface;I)I

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-wide/16 p1, -0x1

    .line 497
    iput-wide p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 498
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to requestPrepareSnapshot()."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPrepareSuperSlowRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V
    .registers 10

    .line 923
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    iget-object v0, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v4, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorStandard:I

    iget-object v0, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v5, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorTransfer:I

    iget-object p2, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v6, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorRange:I

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareSuperSlowRecording(JLandroid/view/Surface;III)I

    move-result p1

    if-nez p1, :cond_17

    return-void

    :cond_17
    const-wide/16 p1, -0x1

    .line 930
    iput-wide p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 931
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to nativeRequestPrepareSuperSlowRecording()."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPrepareVideoRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V
    .registers 10

    .line 776
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    iget-object v0, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v4, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorStandard:I

    iget-object v0, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v5, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorTransfer:I

    iget-object p2, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v6, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorRange:I

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareVideoRecording(JLandroid/view/Surface;III)I

    move-result p1

    if-nez p1, :cond_17

    return-void

    :cond_17
    const-wide/16 p1, -0x1

    .line 783
    iput-wide p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 784
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to nativeRequestPrepareVideoRecording()."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestSnapshot(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;)I
    .registers 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p0

    .line 547
    iget-wide v1, v15, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    iget-boolean v3, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->isValid:Z

    iget-object v4, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-boolean v4, v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->isExifGpsEnabled:Z

    iget-object v5, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-wide v5, v5, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsLatitude:D

    iget-object v7, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-wide v7, v7, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsLongitude:D

    iget-object v9, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-wide v9, v9, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsAltitude:D

    iget-object v11, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-boolean v11, v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->isExifGpsProcMethodEnabled:Z

    iget-object v12, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-object v12, v12, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsProcMethod:Ljava/lang/String;

    iget-object v13, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-boolean v13, v13, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->isExifGpsTimestampEnabled:Z

    iget-object v15, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget v15, v15, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsTimestamp:I

    move-object/from16 v24, v0

    move-object v0, v14

    move v14, v15

    iget-object v15, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifOrientationInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    iget-boolean v15, v15, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;->isExifOrientationEnabled:Z

    move-wide/from16 v25, v1

    iget-object v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifOrientationInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    iget v1, v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;->exifOrientation:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    iget-boolean v1, v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->isExifThumbEnabled:Z

    move/from16 v17, v1

    iget-object v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    iget v1, v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->exifThumbWidth:I

    move/from16 v18, v1

    iget-object v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    iget v1, v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->exifThumbHeight:I

    move/from16 v19, v1

    iget-object v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    iget v1, v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->exifThumbQuality:I

    move/from16 v20, v1

    iget v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->quality:I

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->isQualityAutoControlEnabled:Z

    move/from16 v22, v1

    iget v0, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->captureNum:I

    move/from16 v23, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-direct/range {v0 .. v23}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestSnapshot(JZZDDDZLjava/lang/String;ZIZIZIIIIZI)I

    move-result v0

    if-nez v0, :cond_71

    move-object/from16 v0, p0

    .line 571
    iget-wide v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeGetLatestRequestId(J)I

    move-result v1

    return v1

    :cond_71
    move-object/from16 v0, p0

    .line 568
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to nativeRequestSnapshot()."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestSnapshotFree()V
    .registers 3

    .line 752
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestSnapshotFree(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 754
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestSnapshotFree()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestSnapshotReady()V
    .registers 3

    .line 508
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestSnapshotReady(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 510
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestSnapshotReady()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestStartSuperSlowRecording()V
    .registers 3

    .line 950
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestStartSuperSlowRecording(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 953
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 954
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestStartSuperSlowRecording()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestStartVideoRecording()V
    .registers 3

    .line 802
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestStartVideoRecording(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 804
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 805
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestStartVideoRecording()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestStopVideoRecording()V
    .registers 3

    .line 823
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestStopVideoRecording(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 825
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 826
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestStopVideoRecording()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBurstCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;)V
    .registers 3

    .line 288
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    .line 289
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    return-void
.end method

.method public setConfig(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V
    .registers 4

    .line 1136
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeSetConfig(JLcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)I

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 1140
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 1141
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeSetConfig()."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPhotoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;)V
    .registers 4

    .line 274
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    .line 275
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    .line 276
    iput-object p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    return-void
.end method

.method public setSuperSlowCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;)V
    .registers 3

    .line 317
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    .line 318
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    return-void
.end method

.method public setVideoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;)V
    .registers 4

    .line 303
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

    .line 304
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    .line 305
    iput-object p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    return-void
.end method
