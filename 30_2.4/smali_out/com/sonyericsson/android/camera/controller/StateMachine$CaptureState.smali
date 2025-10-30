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

.field public static final enum STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_LOGICAL_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

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

.field private final mCanHandleWearableCaptureRequest:Z

.field private final mIsMenuAvailable:Z

.field private final mIsRecordingState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 589
    new-instance v8, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v1, "STATE_NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 591
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_INITIALIZE"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 593
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_RESUME"

    const/4 v3, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 595
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_RESUME_AND_CAPTURE"

    const/4 v11, 0x3

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 597
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_CAMERA_SWITCHING"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 599
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_PHOTO_BASE"

    const/4 v11, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 601
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PHOTO_READY"

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 603
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_PHOTO_READY_FOR_RECORDING"

    const/4 v11, 0x7

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 605
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PREPARE_FOR_RECORDING"

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 607
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_CAPTURE_COUNTDOWN"

    const/16 v11, 0x9

    const/4 v12, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 609
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_OPERATION_RESTRICTED"

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 611
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START"

    const/16 v11, 0xb

    const/4 v12, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 613
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PHOTO_AF_SEARCH"

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 615
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_PHOTO_AF_DONE"

    const/16 v11, 0xd

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 617
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE"

    const/16 v3, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 619
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE"

    const/16 v11, 0xf

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 621
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PHOTO_CAPTURE"

    const/16 v3, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 623
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_BURST_CAPTURE"

    const/16 v11, 0x11

    const/4 v12, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 625
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_VIDEO_RECORDING"

    const/16 v3, 0x12

    const/4 v4, 0x1

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 627
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_VIDEO_CAPTURE_WHILE_RECORDING"

    const/16 v11, 0x13

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 629
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING"

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 631
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_VIDEO_STORE"

    const/16 v11, 0x15

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 633
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION"

    const/16 v3, 0x16

    const/4 v4, 0x1

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 635
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION"

    const/16 v11, 0x17

    const/4 v12, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 637
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE"

    const/16 v3, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 639
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_VIDEO_STOPPING"

    const/16 v11, 0x19

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STOPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 641
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PAUSE"

    const/16 v3, 0x1a

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 643
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_WARNING"

    const/16 v11, 0x1b

    const/4 v13, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 645
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_FINALIZE"

    const/16 v3, 0x1c

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 647
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_VIDEO_RECORDING_PAUSING"

    const/16 v11, 0x1d

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 649
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_VIDEO_READY"

    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 651
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_MODE_CHANGING"

    const/16 v11, 0x1f

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 653
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_LOGICAL_MODE_CHANGING"

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOGICAL_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 655
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_WAITING_PRE_PROCESS_DONE"

    const/16 v11, 0x21

    const/4 v13, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_PRE_PROCESS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 657
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE"

    const/16 v3, 0x22

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 659
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v10, "STATE_CROPPING"

    const/16 v11, 0x23

    const/4 v13, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CROPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 661
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_FATAL"

    const/16 v3, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v0, 0x25

    .line 588
    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STOPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOGICAL_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_PRE_PROCESS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CROPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZ)V"
        }
    .end annotation

    .line 690
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 691
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    .line 692
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    .line 693
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanHandleWearableCaptureRequest:Z

    .line 694
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsMenuAvailable:Z

    .line 695
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsRecordingState:Z

    return-void
.end method

.method static synthetic access$15200(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .registers 1

    .line 588
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isRecording()Z

    move-result p0

    return p0
.end method

.method static synthetic access$15700(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .registers 1

    .line 588
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canHandleWearableCaptureRequest()Z

    move-result p0

    return p0
.end method

.method static synthetic access$15800(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .registers 1

    .line 588
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canHandleAsynchronizedTask()Z

    move-result p0

    return p0
.end method

.method static synthetic access$16800(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .registers 1

    .line 588
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canApplicationBeFinished()Z

    move-result p0

    return p0
.end method

.method static synthetic access$16900(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .registers 1

    .line 588
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isMenuAvailable()Z

    move-result p0

    return p0
.end method

.method private canApplicationBeFinished()Z
    .registers 2

    .line 703
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    return v0
.end method

.method private canHandleAsynchronizedTask()Z
    .registers 2

    .line 699
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    return v0
.end method

.method private declared-synchronized canHandleWearableCaptureRequest()Z
    .registers 2

    monitor-enter p0

    .line 707
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanHandleWearableCaptureRequest:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isMenuAvailable()Z
    .registers 2

    .line 711
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsMenuAvailable:Z

    return v0
.end method

.method private isRecording()Z
    .registers 2

    .line 715
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsRecordingState:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .registers 2

    .line 588
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .registers 1

    .line 588
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-object v0
.end method
