.class public final enum Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
.super Ljava/lang/Enum;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PerformanceIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum CREATE_EFFECT_RENDERER_PACK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum LAZY_INITIALIZATION_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum MSG_ON_STORE_CALLBACK_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum MSG_ON_STORE_CALLBACK_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SETTUP_RELATED_TO_SURFACE_SIZE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;


# instance fields
.field tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 35

    .line 58
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    const-string v3, "[SEQ][START UP]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 60
    new-instance v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v4, "ON_START"

    const/4 v5, 0x1

    const-string v6, "[START UP]"

    invoke-direct {v1, v4, v5, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 62
    new-instance v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v7, "ON_RESTART"

    const/4 v8, 0x2

    invoke-direct {v4, v7, v8, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 64
    new-instance v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v9, "ON_RESUME"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 66
    new-instance v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v9, "ON_PAUSE"

    const/4 v11, 0x4

    invoke-direct {v3, v9, v11, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 68
    new-instance v9, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v12, "ON_STOP"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 70
    new-instance v12, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v14, "ON_DESTROY"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 73
    new-instance v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v14, "NOTIFY_STORE_COMPLETE"

    const/4 v15, 0x7

    const-string v13, ""

    invoke-direct {v6, v14, v15, v13}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 75
    new-instance v14, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "MSG_ON_STORE_CALLBACK_START"

    const/16 v11, 0x8

    invoke-direct {v14, v15, v11, v13}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 77
    new-instance v15, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v11, "MSG_ON_STORE_CALLBACK_END"

    const/16 v10, 0x9

    invoke-direct {v15, v11, v10, v13}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 79
    new-instance v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v10, "HANDLE_EVENT"

    const/16 v8, 0xa

    invoke-direct {v11, v10, v8, v13}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 82
    new-instance v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v8, "SET_CONTENT_VIEWS"

    const/16 v5, 0xb

    invoke-direct {v10, v8, v5, v13}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 84
    new-instance v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v5, "INFLATE_VIEWS"

    const/16 v2, 0xc

    move-object/from16 v16, v10

    const-string v10, "[TASK]"

    invoke-direct {v8, v5, v2, v10}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 87
    new-instance v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v2, "STARTUP_TIME"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    move-object/from16 v18, v11

    const-string v11, "[SEQ]"

    invoke-direct {v5, v2, v8, v11}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 89
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v8, "ON_RESUME_TO_SURFACE_CHANGED"

    move-object/from16 v19, v5

    const/16 v5, 0xe

    move-object/from16 v20, v15

    const-string v15, "[SURFACE]"

    invoke-direct {v2, v8, v5, v15}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 91
    new-instance v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v5, "SURFACE_CHANGED"

    move-object/from16 v21, v2

    const/16 v2, 0xf

    invoke-direct {v8, v5, v2, v15}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 93
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v5, "SURFACE_CHANGED_TO_LAUNCH"

    move-object/from16 v22, v8

    const/16 v8, 0x10

    invoke-direct {v2, v5, v8, v15}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 95
    new-instance v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v8, "RESUME_TO_LAUNCH"

    const/16 v15, 0x11

    invoke-direct {v5, v8, v15, v11}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 97
    new-instance v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "LAUNCH"

    move-object/from16 v23, v5

    const/16 v5, 0x12

    invoke-direct {v8, v15, v5, v11}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 99
    new-instance v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "LAUNCH_TO_DISPATCH_DRAW"

    move-object/from16 v24, v8

    const/16 v8, 0x13

    invoke-direct {v5, v15, v8, v11}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 101
    new-instance v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v11, "OPEN_CAMERA_DEVICE_TASK"

    const/16 v15, 0x14

    move-object/from16 v25, v5

    const-string v5, "[TASK][DEVICE]"

    invoke-direct {v8, v11, v15, v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 103
    new-instance v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v11, "SWITCH_CAMERA_DEVICE"

    const/16 v15, 0x15

    move-object/from16 v26, v8

    const-string v8, "[DEVICE]"

    invoke-direct {v5, v11, v15, v8}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 105
    new-instance v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v11, "SETUP_CAMERA_DEVICE_TASK"

    const/16 v15, 0x16

    invoke-direct {v8, v11, v15, v10}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 107
    new-instance v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "CREATE_EFFECT_RENDERER_PACK"

    move-object/from16 v27, v8

    const/16 v8, 0x17

    invoke-direct {v11, v15, v8, v10}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->CREATE_EFFECT_RENDERER_PACK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 109
    new-instance v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "LAZY_INITIALIZATION_TASK"

    move-object/from16 v28, v11

    const/16 v11, 0x18

    invoke-direct {v8, v15, v11, v10}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAZY_INITIALIZATION_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 111
    new-instance v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "SETTUP_RELATED_TO_SURFACE_SIZE"

    move-object/from16 v29, v8

    const/16 v8, 0x19

    invoke-direct {v11, v15, v8, v10}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETTUP_RELATED_TO_SURFACE_SIZE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 114
    new-instance v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v10, "STOT_TO_SHOT"

    const/16 v15, 0x1a

    move-object/from16 v30, v11

    const-string v11, "[SHOT]"

    invoke-direct {v8, v10, v15, v11}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 116
    new-instance v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "STOT_TO_ON_PICT_TAKEN"

    move-object/from16 v31, v8

    const/16 v8, 0x1b

    invoke-direct {v10, v15, v8, v11}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 118
    new-instance v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "RECORDING_START"

    move-object/from16 v32, v10

    const/16 v10, 0x1c

    invoke-direct {v8, v15, v10, v11}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 120
    new-instance v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "RECORDING_STOP"

    move-object/from16 v33, v8

    const/16 v8, 0x1d

    invoke-direct {v10, v15, v8, v11}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 123
    new-instance v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v11, "STORE_DATA_INTO_SD_CARD"

    const/16 v15, 0x1e

    invoke-direct {v8, v11, v15, v13}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 125
    new-instance v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v15, "UPDATE_REMAIN"

    move-object/from16 v34, v8

    const/16 v8, 0x1f

    invoke-direct {v11, v15, v8, v13}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v8, 0x20

    new-array v8, v8, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v13, 0x0

    aput-object v0, v8, v13

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v7, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v12, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    const/16 v0, 0x8

    aput-object v14, v8, v0

    const/16 v0, 0x9

    aput-object v20, v8, v0

    const/16 v0, 0xa

    aput-object v18, v8, v0

    const/16 v0, 0xb

    aput-object v16, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v19, v8, v0

    const/16 v0, 0xe

    aput-object v21, v8, v0

    const/16 v0, 0xf

    aput-object v22, v8, v0

    const/16 v0, 0x10

    aput-object v2, v8, v0

    const/16 v0, 0x11

    aput-object v23, v8, v0

    const/16 v0, 0x12

    aput-object v24, v8, v0

    const/16 v0, 0x13

    aput-object v25, v8, v0

    const/16 v0, 0x14

    aput-object v26, v8, v0

    const/16 v0, 0x15

    aput-object v5, v8, v0

    const/16 v0, 0x16

    aput-object v27, v8, v0

    const/16 v0, 0x17

    aput-object v28, v8, v0

    const/16 v0, 0x18

    aput-object v29, v8, v0

    const/16 v0, 0x19

    aput-object v30, v8, v0

    const/16 v0, 0x1a

    aput-object v31, v8, v0

    const/16 v0, 0x1b

    aput-object v32, v8, v0

    const/16 v0, 0x1c

    aput-object v33, v8, v0

    const/16 v0, 0x1d

    aput-object v10, v8, v0

    const/16 v0, 0x1e

    aput-object v34, v8, v0

    const/16 v0, 0x1f

    aput-object v11, v8, v0

    .line 56
    sput-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->tag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .registers 2

    .line 56
    const-class v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .registers 1

    .line 56
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object v0
.end method
