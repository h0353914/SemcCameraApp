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
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;,
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

.field private static final CALLBACK_TYPE_ON_IMAGE_AVAILABLE:I = 0x16

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

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 149
    sput-boolean v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraLoaded:Z

    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)V
    .registers 6

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 144
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    const/4 v2, 0x0

    .line 152
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    .line 153
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 156
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    .line 157
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    .line 158
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    .line 159
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    .line 160
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    .line 163
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

    .line 164
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    .line 165
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    .line 168
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    .line 170
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    .line 190
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "BypassCamera"

    const-string v3, "CONSTRUCTOR : E"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2d
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->getCameraId()I
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->access$000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeInitialize(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 195
    iget-wide v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_69

    .line 199
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

    .line 200
    :cond_5b
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, "BypassCamera"

    const-string v0, "CONSTRUCTOR : X"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void

    .line 196
    :cond_69
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeInitialize()."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Landroid/os/Handler;)V
    .registers 3

    .line 174
    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)V

    .line 177
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 182
    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)V

    .line 185
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    return-object p0
.end method

.method private final callbackFromNative(IIIZZZIIILjava/nio/ByteBuffer;)V
    .registers 24

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 1262
    invoke-direct/range {v0 .. v12}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackFromNativeV32(IIIZZZIIILjava/nio/ByteBuffer;II)V

    return-void
.end method

.method private final callbackFromNativeV32(IIIZZZIIILjava/nio/ByteBuffer;II)V
    .registers 25

    move-object v10, p0

    move v0, p1

    move v1, p2

    .line 1304
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "BypassCamera"

    const-string v3, "callbackFromNative() : E"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/16 v2, 0xa

    if-eq v0, v2, :cond_b4

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9e

    const/16 v2, 0x28

    if-eq v0, v2, :cond_86

    const/16 v2, 0x32

    if-eq v0, v2, :cond_70

    packed-switch v0, :pswitch_data_ee

    goto/16 :goto_df

    .line 1331
    :pswitch_26
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "BypassCamera"

    const-string v2, "TYPE = CALLBACK_TYPE_ON_IMAGE_AVAILABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_33
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;

    move-object/from16 v2, p10

    invoke-direct {v0, p0, p2, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;ILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto/16 :goto_df

    .line 1326
    :pswitch_3f
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "BypassCamera"

    const-string v2, "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_DONE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_4c
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;I)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto/16 :goto_df

    .line 1321
    :pswitch_56
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "BypassCamera"

    const-string v2, "TYPE = CALLBACK_TYPE_ON_SHUTTER_DONE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_63
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;

    move v2, p3

    move/from16 v3, p4

    invoke-direct {v0, p0, p2, p3, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;IIZ)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto/16 :goto_df

    .line 1346
    :cond_70
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_FINISH_BURST_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_7d
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_df

    .line 1341
    :cond_86
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_93

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_PREPARE_BURST_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_93
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;

    move/from16 v2, p5

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Z)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_df

    .line 1336
    :cond_9e
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_FREE_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_ab
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotFreeTask;

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotFreeTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_df

    :cond_b4
    move/from16 v3, p4

    move/from16 v2, p5

    .line 1308
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_c5

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_READY_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_c5
    new-instance v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-direct/range {v0 .. v9}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;ZZZIIIII)V

    invoke-direct {p0, v11}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1355
    :goto_df
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, "BypassCamera"

    const-string v1, "callbackFromNative() : X"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    return-void

    nop

    :pswitch_data_ee
    .packed-switch 0x14
        :pswitch_56
        :pswitch_3f
        :pswitch_26
    .end packed-switch
.end method

.method private final callbackFromNativeVideo(I)V
    .registers 4

    .line 1574
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

    .line 1593
    :pswitch_12
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1594
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_PREPARE_SUPER_SLOW_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1599
    :pswitch_28
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1600
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_START_SUPER_SLOW_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1578
    :pswitch_3e
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareVideoRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareVideoRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1579
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_PREPARE_VIDEO_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1588
    :pswitch_54
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStopVideoRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStopVideoRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1589
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_STOP_VIDEO_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1583
    :pswitch_6a
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartVideoRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartVideoRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1584
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_7f

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_START_VIDEO_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
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

    .line 1359
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    const-string p1, "BypassCamera"

    const-string v0, "callbackToClient() : Callback object is not installed."

    .line 1361
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1362
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1363
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 1364
    :cond_20
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_28

    .line 1365
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2f

    :cond_28
    const-string p1, "BypassCamera"

    const-string v0, "callbackToClient() : Callback is not invoked."

    .line 1367
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

    .line 1126
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 1129
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
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

    .line 1131
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x2c

    .line 1132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1134
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1136
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

    .line 1103
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 1106
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1107
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 1108
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;

    .line 1109
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v1, :cond_2c

    const/16 v4, 0x2c

    .line 1111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1113
    :cond_2c
    iget v4, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->width:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    .line 1114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1115
    iget v4, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    .line 1116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 1118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1119
    iget v2, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->fps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1121
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

    .line 1082
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 1085
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
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

    .line 1087
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x2c

    .line 1088
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1090
    :cond_2a
    iget v3, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    .line 1091
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    iget v3, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 1093
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1094
    iget v2, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->fps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1096
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCaps(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
    .registers 5

    .line 1029
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 1031
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;

    invoke-direct {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;-><init>()V

    .line 1032
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->getCameraId()I
    invoke-static {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->access$000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)I

    move-result p0

    invoke-static {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeGetCaps(ILcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;)I

    move-result p0

    if-nez p0, :cond_7d

    .line 1037
    new-instance p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;-><init>()V

    const-string v1, "vs-values"

    .line 1040
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoStabilizationMode:Ljava/util/List;

    .line 1041
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video-high-frame-rate-configuration"

    .line 1044
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mHighFrameRateSupportedInfoList:Ljava/util/List;

    .line 1045
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1044
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vs-steady-shot-configuration"

    .line 1048
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSteadyShotSupportedInfoList:Ljava/util/List;

    .line 1049
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1048
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vs-intelligent-active-configuration"

    .line 1052
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mIntelligentActiveSupportedInfoList:Ljava/util/List;

    .line 1053
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1052
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "super-slow-values"

    .line 1056
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowMode:Ljava/util/List;

    .line 1057
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1056
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "burst-values"

    .line 1060
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mBurstMode:Ljava/util/List;

    .line 1061
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1060
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video-hdr-values"

    .line 1064
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoHdrMode:Ljava/util/List;

    .line 1065
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1064
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video-super-slow-configuration"

    .line 1068
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowSupportedInfoList:Ljava/util/List;

    iget-object v3, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowFrameNumList:Ljava/util/List;

    .line 1069
    invoke-static {v2, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSuperSlowSupportedInfoListValue(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "climax-recognition-values"

    .line 1074
    iget-object v0, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mClimaxRecognitionMode:Ljava/util/List;

    .line 1075
    invoke-static {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 1034
    :cond_7d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeGetCaps()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadNativeLibrary()V
    .registers 6

    .line 208
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    sget-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraLoaded:Z

    if-nez v1, :cond_71

    .line 210
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

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CamKPI] [UPTIME=] [BypassCamera]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] : loadLibrary() : E"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const-string v3, "imageprocessorjni"

    .line 214
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    if-eqz v1, :cond_6f

    const-string v1, "TraceLog"

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CamKPI] [UPTIME=] [BypassCamera]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] : loadLibrary() : X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_6f
    sput-boolean v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraLoaded:Z

    .line 220
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

.method private native nativeNotifyCloseImage(JLjava/nio/ByteBuffer;)V
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

    .line 231
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 233
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_6
    sget-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    if-nez v1, :cond_14

    .line 235
    new-instance v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Landroid/os/Handler;)V

    const/4 p0, 0x1

    .line 236
    sput-boolean p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    .line 237
    monitor-exit v0

    return-object v1

    .line 239
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BypassCamera is already opened."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1c
    move-exception p0

    .line 241
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public static open(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .registers 4

    .line 252
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 254
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_6
    sget-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    if-nez v1, :cond_14

    .line 256
    new-instance v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)V

    const/4 p0, 0x1

    .line 257
    sput-boolean p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    .line 258
    monitor-exit v0

    return-object v1

    .line 260
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BypassCamera is already opened."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1c
    move-exception p0

    .line 262
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

    .line 376
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 378
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->getModeCode()I
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->access$100(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;)I

    move-result v3

    .line 379
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 380
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 381
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 382
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v0, p0

    move v8, p4

    .line 376
    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeChangeToPhotoMode(JIIIIII)I

    move-result p2

    packed-switch p2, :pswitch_data_52

    return-void

    :pswitch_20
    const-wide/16 p2, -0x1

    .line 386
    iput-wide p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 387
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

    .line 389
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

    .line 460
    iget-wide v1, v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 462
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->getModeCode()I
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->access$300(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;)I

    move-result v3

    .line 463
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 464
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    iget v9, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->fps:I

    iget v10, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->frameNum:I

    move-object v0, p0

    move/from16 v8, p4

    .line 460
    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeChangeToSuperSlowMode(JIIIIIIII)I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    return-void

    :pswitch_29
    const-wide/16 v0, -0x1

    .line 472
    iput-wide v0, v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 473
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

    .line 475
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

    .line 442
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

    .line 409
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 411
    # invokes: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->getModeCode()I
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->access$200(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;)I

    move-result v3

    .line 412
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 413
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 414
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 415
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v0, p0

    move v8, p4

    .line 409
    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeChangeToVideoMode(JIIIIII)I

    move-result p2

    packed-switch p2, :pswitch_data_52

    return-void

    :pswitch_20
    const-wide/16 p2, -0x1

    .line 419
    iput-wide p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 420
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

    .line 422
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

    .line 332
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "BypassCamera"

    const-string v1, "close() : E"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_d
    monitor-enter p0

    const/4 v0, 0x0

    .line 337
    :try_start_f
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    .line 338
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    .line 339
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    .line 340
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    .line 341
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    .line 342
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    .line 343
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    .line 344
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_5d

    .line 347
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeFinalize(J)I

    .line 349
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

    .line 351
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 354
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 355
    :try_start_49
    sput-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    .line 356
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5a

    .line 358
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

    .line 356
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1

    :catchall_5d
    move-exception v0

    .line 344
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method public notifyCloseImage(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1162
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeNotifyCloseImage(JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public requestFinishBurstShot()V
    .registers 3

    .line 1005
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestFinishBurstShot(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 1007
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 1008
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestFinishBurstShot()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPrepareBurstShot()V
    .registers 3

    .line 983
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareBurstShot(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 985
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 986
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestPrepareBurstShot()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPrepareSnapshot(Landroid/view/Surface;I)V
    .registers 5

    .line 494
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareSnapshot(JLandroid/view/Surface;I)I

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-wide/16 p1, -0x1

    .line 499
    iput-wide p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 500
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to requestPrepareSnapshot()."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPrepareSuperSlowRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V
    .registers 10

    .line 933
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

    .line 940
    iput-wide p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 941
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to nativeRequestPrepareSuperSlowRecording()."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPrepareVideoRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V
    .registers 10

    .line 786
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

    .line 793
    iput-wide p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 794
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

    .line 549
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

    .line 573
    iget-wide v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeGetLatestRequestId(J)I

    move-result v1

    return v1

    :cond_71
    move-object/from16 v0, p0

    .line 570
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to nativeRequestSnapshot()."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestSnapshotFree()V
    .registers 3

    .line 762
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestSnapshotFree(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 764
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestSnapshotFree()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestSnapshotReady()V
    .registers 3

    .line 510
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestSnapshotReady(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 512
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestSnapshotReady()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestStartSuperSlowRecording()V
    .registers 3

    .line 960
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestStartSuperSlowRecording(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 963
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 964
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestStartSuperSlowRecording()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestStartVideoRecording()V
    .registers 3

    .line 812
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestStartVideoRecording(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 814
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 815
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestStartVideoRecording()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestStopVideoRecording()V
    .registers 3

    .line 833
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestStopVideoRecording(J)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 835
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 836
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestStopVideoRecording()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBurstCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;)V
    .registers 3

    .line 290
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    .line 291
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    return-void
.end method

.method public setConfig(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V
    .registers 4

    .line 1146
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeSetConfig(JLcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)I

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, -0x1

    .line 1150
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 1151
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeSetConfig()."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPhotoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;)V
    .registers 4

    .line 276
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    .line 277
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    .line 278
    iput-object p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    return-void
.end method

.method public setSuperSlowCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;)V
    .registers 3

    .line 319
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    .line 320
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    return-void
.end method

.method public setVideoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;)V
    .registers 4

    .line 305
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

    .line 306
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    .line 307
    iput-object p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    return-void
.end method
