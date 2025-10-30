.class public final enum Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_CROPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_FRONT_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_LOGICAL_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_MULTI_FRAME_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_RESTART_PREVIEW_SESSION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_STOPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_WAITING_PRE_PROCESS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;


# instance fields
.field private final mCanApplicationBeFinished:Z

.field private final mCanHandleAsynchronizedTask:Z

.field private final mIsMenuAvailable:Z

.field private final mIsRecordingState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 58

    .line 711
    new-instance v7, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v1, "STATE_NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 713
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_INITIALIZE"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 715
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v16, "STATE_RESUME"

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 717
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_RESUME_AND_CAPTURE"

    const/4 v10, 0x3

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 719
    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v16, "STATE_CAMERA_SWITCHING"

    const/16 v17, 0x4

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 721
    new-instance v4, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_FRONT_CAMERA_SWITCHING"

    const/4 v10, 0x5

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FRONT_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 723
    new-instance v5, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v16, "STATE_PHOTO_BASE"

    const/16 v17, 0x6

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 725
    new-instance v6, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_PHOTO_READY"

    const/4 v10, 0x7

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 727
    new-instance v8, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v16, "STATE_RESTART_PREVIEW_SESSION"

    const/16 v17, 0x8

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESTART_PREVIEW_SESSION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 729
    new-instance v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_PHOTO_READY_FOR_RECORDING"

    const/16 v11, 0x9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 731
    new-instance v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v18, "STATE_PREPARE_FOR_RECORDING"

    const/16 v19, 0xa

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 733
    new-instance v10, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v25, "STATE_CAPTURE_COUNTDOWN"

    const/16 v26, 0xb

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 735
    new-instance v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v18, "STATE_OPERATION_RESTRICTED"

    const/16 v19, 0xc

    const/16 v20, 0x1

    const/16 v22, 0x1

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 737
    new-instance v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v25, "STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START"

    const/16 v26, 0xd

    const/16 v27, 0x0

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v30}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 739
    new-instance v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v18, "STATE_PHOTO_AF_SEARCH"

    const/16 v19, 0xe

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 741
    new-instance v14, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v25, "STATE_PHOTO_AF_DONE"

    const/16 v26, 0xf

    move-object/from16 v24, v14

    invoke-direct/range {v24 .. v30}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v14, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 743
    new-instance v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v18, "STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE"

    const/16 v19, 0x10

    move-object/from16 v17, v15

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 745
    new-instance v17, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v25, "STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE"

    const/16 v26, 0x11

    move-object/from16 v24, v17

    invoke-direct/range {v24 .. v30}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 747
    new-instance v25, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v19, "STATE_PHOTO_CAPTURE"

    const/16 v20, 0x12

    const/16 v24, 0x0

    move-object/from16 v18, v25

    invoke-direct/range {v18 .. v24}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v25, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 749
    new-instance v18, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v27, "STATE_MULTI_FRAME_CAPTURE"

    const/16 v28, 0x13

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v26, v18

    invoke-direct/range {v26 .. v32}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v18, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MULTI_FRAME_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 751
    new-instance v19, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v34, "STATE_BURST_CAPTURE"

    const/16 v35, 0x14

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v33, v19

    invoke-direct/range {v33 .. v39}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v19, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 753
    new-instance v20, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v27, "STATE_VIDEO_RECORDING"

    const/16 v28, 0x15

    const/16 v29, 0x1

    const/16 v32, 0x1

    move-object/from16 v26, v20

    invoke-direct/range {v26 .. v32}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v20, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 755
    new-instance v21, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v34, "STATE_VIDEO_CAPTURE_WHILE_RECORDING"

    const/16 v35, 0x16

    const/16 v36, 0x0

    const/16 v39, 0x1

    move-object/from16 v33, v21

    invoke-direct/range {v33 .. v39}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v21, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 757
    new-instance v22, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v27, "STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING"

    const/16 v28, 0x17

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v26, v22

    invoke-direct/range {v26 .. v32}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v22, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 759
    new-instance v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v34, "STATE_VIDEO_STORE"

    const/16 v35, 0x18

    move-object/from16 v33, v23

    invoke-direct/range {v33 .. v39}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 761
    new-instance v24, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v27, "STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION"

    const/16 v28, 0x19

    const/16 v29, 0x1

    const/16 v32, 0x1

    move-object/from16 v26, v24

    invoke-direct/range {v26 .. v32}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v24, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 763
    new-instance v26, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v34, "STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION"

    const/16 v35, 0x1a

    const/16 v36, 0x1

    move-object/from16 v33, v26

    invoke-direct/range {v33 .. v39}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v26, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 765
    new-instance v34, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v28, "STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE"

    const/16 v29, 0x1b

    const/16 v30, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v27, v34

    invoke-direct/range {v27 .. v33}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v34, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 767
    new-instance v27, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v36, "STATE_VIDEO_STOPPING"

    const/16 v37, 0x1c

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    move-object/from16 v35, v27

    invoke-direct/range {v35 .. v41}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v27, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STOPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 769
    new-instance v28, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v43, "STATE_PAUSE"

    const/16 v44, 0x1d

    const/16 v45, 0x0

    const/16 v46, 0x1

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v42, v28

    invoke-direct/range {v42 .. v48}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v28, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 771
    new-instance v29, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v36, "STATE_WARNING"

    const/16 v37, 0x1e

    const/16 v39, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x0

    move-object/from16 v35, v29

    invoke-direct/range {v35 .. v41}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v29, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 773
    new-instance v30, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v43, "STATE_FINALIZE"

    const/16 v44, 0x1f

    const/16 v46, 0x0

    move-object/from16 v42, v30

    invoke-direct/range {v42 .. v48}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v30, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 775
    new-instance v31, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v36, "STATE_VIDEO_RECORDING_PAUSING"

    const/16 v37, 0x20

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    move-object/from16 v35, v31

    invoke-direct/range {v35 .. v41}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v31, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 777
    new-instance v32, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v43, "STATE_VIDEO_READY"

    const/16 v44, 0x21

    const/16 v45, 0x1

    const/16 v46, 0x1

    const/16 v47, 0x1

    move-object/from16 v42, v32

    invoke-direct/range {v42 .. v48}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v32, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 779
    new-instance v33, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v36, "STATE_MODE_CHANGING"

    const/16 v37, 0x22

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v41, 0x0

    move-object/from16 v35, v33

    invoke-direct/range {v35 .. v41}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v33, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 781
    new-instance v35, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v43, "STATE_LOGICAL_MODE_CHANGING"

    const/16 v44, 0x23

    const/16 v45, 0x0

    const/16 v47, 0x0

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v48}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v35, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOGICAL_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 783
    new-instance v43, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v37, "STATE_WAITING_PRE_PROCESS_DONE"

    const/16 v38, 0x24

    const/16 v39, 0x0

    const/16 v42, 0x0

    move-object/from16 v36, v43

    invoke-direct/range {v36 .. v42}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v43, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_PRE_PROCESS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 785
    new-instance v36, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v45, "STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE"

    const/16 v46, 0x25

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v44, v36

    invoke-direct/range {v44 .. v50}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v36, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 787
    new-instance v37, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v52, "STATE_CROPPING"

    const/16 v53, 0x26

    const/16 v54, 0x0

    const/16 v55, 0x1

    const/16 v56, 0x0

    const/16 v57, 0x0

    move-object/from16 v51, v37

    invoke-direct/range {v51 .. v57}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v37, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CROPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 789
    new-instance v38, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v45, "STATE_FATAL"

    const/16 v46, 0x27

    move-object/from16 v44, v38

    invoke-direct/range {v44 .. v50}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v38, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-object/from16 v39, v15

    const/16 v15, 0x28

    new-array v15, v15, [Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    aput-object v7, v15, v40

    const/4 v7, 0x1

    aput-object v0, v15, v7

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v16, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v39, v15, v0

    const/16 v0, 0x11

    aput-object v17, v15, v0

    const/16 v0, 0x12

    aput-object v25, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v20, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v26, v15, v0

    const/16 v0, 0x1b

    aput-object v34, v15, v0

    const/16 v0, 0x1c

    aput-object v27, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    const/16 v0, 0x23

    aput-object v35, v15, v0

    const/16 v0, 0x24

    aput-object v43, v15, v0

    const/16 v0, 0x25

    aput-object v36, v15, v0

    const/16 v0, 0x26

    aput-object v37, v15, v0

    const/16 v0, 0x27

    aput-object v38, v15, v0

    .line 710
    sput-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)V"
        }
    .end annotation

    .line 814
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 815
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    .line 816
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    .line 817
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsMenuAvailable:Z

    .line 818
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsRecordingState:Z

    return-void
.end method

.method static synthetic access$15800(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .registers 1

    .line 710
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isRecording()Z

    move-result p0

    return p0
.end method

.method static synthetic access$16600(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .registers 1

    .line 710
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canHandleAsynchronizedTask()Z

    move-result p0

    return p0
.end method

.method static synthetic access$17500(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .registers 1

    .line 710
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canApplicationBeFinished()Z

    move-result p0

    return p0
.end method

.method static synthetic access$17600(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .registers 1

    .line 710
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isMenuAvailable()Z

    move-result p0

    return p0
.end method

.method private canApplicationBeFinished()Z
    .registers 1

    .line 826
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    return p0
.end method

.method private canHandleAsynchronizedTask()Z
    .registers 1

    .line 822
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    return p0
.end method

.method private isMenuAvailable()Z
    .registers 1

    .line 830
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsMenuAvailable:Z

    return p0
.end method

.method private isRecording()Z
    .registers 1

    .line 834
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsRecordingState:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .registers 2

    .line 710
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .registers 1

    .line 710
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-object v0
.end method
